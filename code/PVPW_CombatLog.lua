--[[
  MIT License

  Copyright (c) 2023 Michael Wiesendanger

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

-- luacheck: globals CombatLog_Object_IsA COMBATLOG_FILTER_HOSTILE_PLAYERS COMBATLOG_FILTER_MINE UnitGUID

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
    Ignore events while the player is in a zone that is not enabled
  ]]--
  if not mod.zone.IsZoneEnabled() then return end

  --[[
    Differentiate between combat logs from hostile players and entries that where caused
    by the players spellcasts

    COMBATLOG_FILTER_HOSTILE_PLAYERS - filters for logs that where triggered by the enemy
    COMBATLOG_FILTER_MINE - filters for events that where triggered by the player(mine) himself
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
    me.ProcessMissed(event, RGPVPW_CONSTANTS.TARGET_SELF, callback, ...)
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
  if event == "SPELL_MISSED" then
    me.ProcessMissed(event, RGPVPW_CONSTANTS.TARGET_ENEMY, callback, ...)
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
  local spellMap = mod.common.GetSpellMap(spellType)

  if not me.IsValidSpellType(spellType) then return end

  local spell = mod.spellMap.SearchSpellById(spellId)

  if not me.HasFoundSpell(spell, spellId) then return end
  if not me.IsSpellActive(spellMap, spell.category, spell.name) then return end

  local spellMetaData = mod.spellMetaMap.GetSpellMetaDataForSupportedEvent(spell, event)

  if not me.HasFoundSupportedSpell(spellMetaData, spellId) then return end

  local visualWarningColor = mod.spellConfiguration.GetVisualWarningColor(
    spellMap, spell.category, spell.name
  )

  playSound = me.IsSoundWarningActive(spellMap, spell.category, spell.name)
  playVisual = me.IsVisualWarningActive(spell.category, spell.name, visualWarningColor)

  if playVisual then
    spellMetaData.visualWarningColor = visualWarningColor
  end

  mod.warn.PlayWarning(
    spell.category, spellType, spellMetaData, callback, playSound, playVisual)
end

--[[
  Process event "SPELL_MISSED" for spell resists

  How events are filtered:

    You avoided events
    - You avoided events are a bit more tricky because we need to filter events that
      are actually relevant to us. Meaning it was actually the player himself that avoided
      a spell and not someone else. To do that we check the target player of the event
    Enemy avoided events
    - For spells that where filtered through ProcessEventMine the path is clear and
      no additional work is needed. After this filter we only get events that belong
      to the player himself and thus we don't get avoid events from other players around us

  @param {string} event
  @param {function} callback
    Optional function that is invoked with status infos. Currently only used for testing
  @param {number} spellMissedTarget
    TARGET_SELF or TARGET_ENEMY

    TARGET_SELF - meaning the player was the target of the spell and thus avoided an enemy spell
    TARGET_ENEMY - meaning an enemy was the target of the spell and thus avoided a spell of the player himself
  @param {vararg} ...
]]--
function me.ProcessMissed(event, spellMissedTarget, callback, ...)
  local targetPlayerId, _, _, _, spellId, _, _, missType = select(8, ...)
  local playSound
  local playVisual

  if not me.IsSupportedMissType(missType) then
    mod.logger.LogDebug(me.tag, "ProcessMissed ignore unsupported missType: " .. missType)
    return
  end

  if spellMissedTarget == RGPVPW_CONSTANTS.TARGET_SELF
    and targetPlayerId ~= UnitGUID(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) then
    mod.logger.LogDebug(me.tag, "Ignoring foreign avoid event")
    return
  end

  local spellType = mod.common.GetSpellType(event, spellMissedTarget)
  local spellMap = mod.common.GetSpellMap(spellType)

  if not me.IsValidSpellType(spellType) then return end

  local spell = mod.spellMap.SearchSpellById(spellId)

  if not me.HasFoundSpell(spell, spellId) then return end
  if not me.IsSpellActive(spellMap, spell.category, spell.name) then return end

  local spellMetaData = mod.spellMetaMap.GetSpellMetaDataForSupportedEvent(spell, event)

  if not me.HasFoundSupportedSpell(spellMetaData, spellId) then return end

  local visualWarningColor = mod.spellConfiguration.GetVisualWarningColor(
    spellMap, spell.category, spell.name
  )

  playSound = me.IsSoundWarningActive(spellMap, spell.category, spell.name)
  playVisual = me.IsVisualWarningActive(spell.category, spell.name, visualWarningColor)

  if playVisual then
    spell.visualWarningColor = visualWarningColor
  end

  mod.warn.PlayWarning(spell.category, spellType, spellMetaData, callback, playSound, playVisual)
end

--[[
  @param {string} event
  @param {function} callback
    Optional function that is invoked with status infos. Currently only used for testing
  @param {vararg} ...
]]--
function me.ProcessStart(event, callback, ...)
  local spellId = select(12, ...)
  local playSound
  local playVisual
  local spellType = mod.common.GetSpellType(event)
  local spellMap = mod.common.GetSpellMap(spellType)

  local spell = mod.spellMap.SearchSpellById(spellId)

  if not me.HasFoundSpell(spell, spellId) then return end
  if not me.IsSpellActive(spellMap, spell.category, spell.name) then return end

  local spellMetaData = mod.spellMetaMap.GetSpellMetaDataForSupportedEvent(spell, event)

  if not me.HasFoundSupportedSpell(spellMetaData, spellId) then return end

  local visualWarningColor = mod.spellConfiguration.GetVisualWarningColor(
    spellMap, spell.category, spell.name
  )

  playSound = me.IsSoundWarningActive(spellMap, spell.category, spell.name)
  playVisual = me.IsVisualWarningActive(spell.category, spell.name, visualWarningColor)

  mod.warn.PlayWarning(spell.category, spellType, spellMetaData, callback, playSound, playVisual)
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
      "Ignore spell {%i} because search in spellMap resulted in not found", spellId)
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
      "Ignore spell {%i} because search in spellMetaMap resulted in not found", spellId)
    )
    return false
  end

  return true
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName

  @return {boolean}
    true - if the spell is active
    false if the spell is not active
]]--
function me.IsSpellActive(spellList, categoryId, spellName)
  if not mod.spellConfiguration.IsSpellActive(spellList, categoryId, spellName) then
    mod.logger.LogDebug(me.tag, string.format(
      "Category {%i} - {%s} it is not active", categoryId, spellName)
    )
    return false
  end

  return true
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName

  @return {boolean}
    true - if sound is active for the spell
    false if sound is not active for the spell
]]--
function me.IsSoundWarningActive(spellList, categoryId, spellName)
  if mod.spellConfiguration.IsSoundWarningActive(spellList, categoryId, spellName)
    or mod.spellConfiguration.IsSoundFadeWarningActive(spellList, categoryId, spellName) then
    return true
  end

  mod.logger.LogDebug(me.tag, string.format(
    "Ignore playing sound/soundFade for categoryId {%i} - {%s} because it is not active", categoryId, spellName))

  return false
end

--[[
  @param {number} categoryId
  @param {string} spellName
  @param {number} visualWarningColor

  @return {boolean}
    true - if visual warning is active
    false- if visual warning is not active
]]--
function me.IsVisualWarningActive(categoryId, spellName, visualWarningColor)
  if visualWarningColor ~= RGPVPW_CONSTANTS.DEFAULT_COLOR then
    return true
  end

  mod.logger.LogDebug(me.tag, string.format(
    "Ignore playing visual warning for {%i} - {%s} because it is not active", categoryId, spellName
    )
  )

  return false
end

--[[
  Check if the missType is supported. See RGPVPW_CONSTANTS.MISS_TYPES for all supported
  types.

  An example for an unsupported missType is "ABSORB". If we don't filter that one out
  the player would get a warning that he resisted a damaging spell such as "Cone of Cold"
  when he used some form of shield. E.g. a priest used "Power Word: Shield" and completely absorbed
  the enemy spell.

  @param {string} missType
    RGPVPW_CONSTANTS.MISS_TYPES

  @return {boolean}
    true - if the missType is supported
    false - if the missType is not supported
]]--
function me.IsSupportedMissType(missType)
  if RGPVPW_ENVIRONMENT.TEST then
    return true
  end

  if RGPVPW_CONSTANTS.MISS_TYPES[missType] ~= nil then
    return true
  end

  return false
end
