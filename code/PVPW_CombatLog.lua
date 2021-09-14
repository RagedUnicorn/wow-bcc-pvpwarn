--[[
  MIT License

  Copyright (c) 2021 Michael Wiesendanger

  Permission is hereby granted, free of charge, to any person obtaining
  a copy of this software and associated documentation files (the
  "Software"), to deal in the Software without restriction, including
  without limitation the rights to use, copy, modify, merge, publish,
  distribute, sublicense, and/or sell copies of the Software, and to
  permit persons to whom the Software is furnished to do so, subject to
  the following conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]--

-- luacheck: globals CombatLog_Object_IsA COMBATLOG_FILTER_HOSTILE_PLAYERS COMBATLOG_FILTER_MINE

local mod = rgpvpw
local me = {}
mod.combatLog = me

me.tag = "CombatLog"

--[[
  Processing the details of the current combat log event. Invoked when 'COMBAT_LOG_EVENT_UNFILTERED' is fired

  @param {function} callback
    Optional function that is invoked with status infos. Currently only used for testing
  @param {vararg} ...
]]--
function me.ProcessUnfilteredCombatLogEvent(callback, ...)
  local _, event, _, _, _, sourceFlags = select(1, ...)

  if RGPVPW_ENVIRONMENT.DEBUG then
    mod.debug.TrackLogEvent(...)
  end

  --[[
    Differentiate between combat logs from hostile players and entries that where caused
    by the players spellcasts
  ]]--
  if CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS) then
    me.ProcessEventHostilePlayers(event, callback, ...)
  elseif CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_MINE) then
    me.ProcessEventMine(event, callback, ...)
  end
end

--[[
  @param {string} event
  @param {function} callback
    Optional function that is invoked with status infos. Currently only used for testing
  @param {vararg} ...
]]--
function me.ProcessEventHostilePlayers(event, callback, ...)
  if event == "SPELL_CAST_SUCCESS" then
    me.ProcessNormal(event, callback, ...)
  elseif event == "SPELL_CAST_START" then
    me.ProcessStart(event, callback, ...)
  elseif event == "SPELL_AURA_REMOVED" then
    me.ProcessNormal(event, callback, ...)
  elseif event == "SPELL_AURA_REFRESH" then
    me.ProcessNormal(event, callback, ...)
  elseif event == "SPELL_AURA_APPLIED" then
    me.ProcessNormal(event, callback, ...)
  elseif event == "SPELL_MISSED" then
    me.ProcessResist(event, RGPVPW_CONSTANTS.TARGET_SELF, callback, ...)
  else
    mod.logger.LogDebug(me.tag, "Ignore unsupported event: " .. event)

    if callback then
      callback()
    end
  end
end

--[[
  @param {string} event
  @param {function} callback
    Optional function that is invoked with status infos. Currently only used for testing
  @param {vararg} ...
]]--
function me.ProcessEventMine(event, callback, ...)
  if true then return end -- TODO

  if event == "SPELL_MISSED" then
    me.ProcessResist(event, RGPVPW_CONSTANTS.TARGET_ENEMY, callback, ...)
  end
end

--[[
  @param {string} event
  @param {function} callback
  @param {vararg} ...
]]--
function me.ProcessNormal(event, callback, ...)
  local spellId = select(12, ...)
  local playSound
  local playVisual
  local spellType = mod.common.GetSpellType(event)
  local spell = mod.spellMap.SearchSpellById(spellId)
  local spellMetaData = mod.spellMetaMap.GetSpellMetaDataForSupportedEvent(spell, event)

  if not me.IsValidSpellType(spellType) then return end
  if not me.HasFoundSpell(spell, spellId) then return end
  if not me.HasFoundSupportedSpell(spellMetaData, spellId) then return end
  if not me.IsSpellActive(spell.category, spell.name) then return end

  local visualWarningColor = mod.spellConfiguration.GetVisualWarningColor(
    RGPVPW_CONSTANTS.SPELL_TYPE.SPELL, spell.category, spell.name
  )

  playSound = me.IsSoundWarningActive(spell.category, spell.name)
  playVisual = me.IsVisualWarningActive(spell.category, spell.name, visualWarningColor)

  if playVisual then
    spellMetaData.visualWarningColor = visualWarningColor
  end

  mod.warn.PlayWarning(
    mod.common.GetCategoryById(spell.category).categoryName, spellType, spellMetaData, callback, playSound, playVisual)
end
end

--[[
  @param {number} spellType
    RGPVPW_CONSTANTS.SPELL_TYPES
  @return {boolean}
    true - if the spellType is valid
    false - if the spellType is not valid
]]--
function me.IsValidSpellType(spellType)
  if spellType == nil then
    mod.logger.LogError(me.tag, "Unable to determine spellType - aborting...")
    return false
  end

  return true
end

--[[
  Verifiy whether a spellId could be found in the `spellMap` module

  @param {table} spell
  @param {number} spellId

  @return {boolean}
    true - if a spell was found
    false - if no spell could be found
]]--
function me.HasFoundSpell(spell, spellId)
  if spell == nil then
    mod.logger.LogInfo(me.tag, string.format(
      "Ignore spell {%i} because search in spellMap resulted in not found", spellId
      )
    )
    return false
  end

  return true
end

--[[
  Verifiy whether a spell could be found in the `spellMetaMap` module

  @param {table} spellMetaData
  @param {number} spellId

  @return {boolean}
    true - if a spell was found
    false - if no spell could be found
]]--
function me.HasFoundSupportedSpell(spellMetaData, spellId)
  if spellMetaData == nil then
    mod.logger.LogInfo(me.tag, string.format(
      "Ignore spell {%i} because search in spellMetaMap resulted in not found", spellId
      )
    )
    return false
  end

  return true
end

--[[
  @param {number} category
  @param {string} spellName

  @return {boolean}
    true - if the spell is active
    false if the spell is not active
]]--
function me.IsSpellActive(category, spellName)
  if not mod.spellConfiguration.IsSpellActive(RGPVPW_CONSTANTS.SPELL_TYPE.SPELL, category, spellName) then
    mod.logger.LogDebug(me.tag, string.format(
      "Category {%i} - {%s} it is not active", category, spellName
      )
    )
    return false
  end

  return true
end

--[[
  @param {number} category
  @param {string} spellName

  @return {boolean}
    true - if sound is active for the spell
    false if sound is not active for the spell
]]--
function me.IsSoundWarningActive(category, spellName)
  if mod.spellConfiguration.IsSoundWarningActive(RGPVPW_CONSTANTS.SPELL_TYPE.SPELL, category, spellName)
    or mod.spellConfiguration.IsSoundFadeWarningActive(RGPVPW_CONSTANTS.SPELL_TYPE.SPELL, category, spellName) then
    return true
  end

  mod.logger.LogDebug(me.tag, string.format(
    "Ignore playing sound/soundFade for category {%i} - {%s} because it is not active", category, spellName))

  return false
end

--[[
  @param {number} category
  @param {string} spellName
  @param {number} visualWarningColor

  @return {boolean}
    true - if visual warning is active
    false- if visual warning is not active
]]--
function me.IsVisualWarningActive(category, spellName, visualWarningColor)
  if visualWarningColor ~= RGPVPW_CONSTANTS.DEFAULT_COLOR then
    return true
  end

  mod.logger.LogDebug(me.tag, string.format(
    "Ignore playing visual warning for {%i} - {%s} because it is not active", category, spellName
    )
  )

  return false
end
