--[[
  MIT License

  Copyright (c) 2021 Michael Wiesendanger

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
]]--

local mod = rgpvpw
local me = {}
mod.spellConfiguration = me

me.tag = "SpellConfiguration"

--[[
  @param {string} spellList
    See constants RGPVPW_CONSTANTS.SPELL_TYPE
  @param {number} categoryId
  @param {string} spellName
]]--
function me.ToggleSpellState(spellList, categoryId, spellName)
  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `ToggleSpellState` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `ToggleSpellState` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `ToggleSpellState` (expected string got %s)", type(spellName)))

    me.ToggleSpell(
      spellList,
      categoryId,
      spellName,
      not me.IsSpellActive(spellList, categoryId, spellName)
    )
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
    true if the spell is active
    false if the spell is inactive
]]--
function me.IsSpellActive(spellList, categoryId, spellName)
  if RGPVPW_ENVIRONMENT.TEST then return true end

  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `IsSpellActive` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `IsSpellActive` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `IsSpellActive` (expected string got %s)", type(spellName)))

  if PVPWarnConfiguration[spellList][categoryId] then
    if PVPWarnConfiguration[spellList][categoryId][spellName] then
      return PVPWarnConfiguration[spellList][categoryId][spellName].spellActive
    end
  end

  return false
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
  @param {boolean} state
    true if the option should be active
    false if the option should be inactive
]]--
function me.ToggleSpell(spellList, categoryId, spellName, state)
  me.SetupPrerequisiteForOptionEntry(spellList, categoryId, spellName)

  mod.logger.LogDebug(me.tag,
    string.format(
      "Updating spell %s spellstate for category %s - current value: %s / new value: %s",
      spellName,
      categoryId,
      tostring(PVPWarnConfiguration[spellList][categoryId][spellName].spellActive),
      tostring(state)
    )
  )

  PVPWarnConfiguration[spellList][categoryId][spellName].spellActive = state
  mod.profile.SetModified()
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
]]--
function me.ToggleSoundWarning(spellList, categoryId, spellName)
  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `ToggleSoundWarning` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `ToggleSoundWarning` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `ToggleSoundWarning` (expected string got %s)", type(spellName)))

  me.ToggleSound(
    spellList,
    categoryId,
    spellName,
    not me.IsSoundWarningActive(spellList, categoryId, spellName)
  )
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
    true if the sound warning is active
    false if the sound warning is inactive
]]--
function me.IsSoundWarningActive(spellList, categoryId, spellName)
  if RGPVPW_ENVIRONMENT.TEST then return true end

  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `IsSoundWarningActive` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `IsSoundWarningActive` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `IsSoundWarningActive` (expected string got %s)", type(spellName)))

  if PVPWarnConfiguration[spellList][categoryId] then
    if PVPWarnConfiguration[spellList][categoryId][spellName] then
      return PVPWarnConfiguration[spellList][categoryId][spellName].soundWarningActive
    end
  end

  return false
end

--[[
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
  @param {boolean} state
    true if the option should be active
    false if the option should be inactive
]]--
function me.ToggleSound(spellList, categoryId, spellName, state)
  me.SetupPrerequisiteForOptionEntry(spellList, categoryId, spellName)

  mod.logger.LogDebug(me.tag,
    string.format(
      "Updating spell %s soundstate for category %s - current value: %s / new value: %s",
      spellName,
      categoryId,
      tostring(PVPWarnConfiguration[spellList][categoryId][spellName].soundWarningActive),
      tostring(state)
    )
  )

  PVPWarnConfiguration[spellList][categoryId][spellName].soundWarningActive = state
  mod.profile.SetModified()
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
]]--
function me.ToggleSoundFadeWarning(spellList, categoryId, spellName)
  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `ToggleSoundFadeWarning` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #1 to `ToggleSoundFadeWarning` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #2 to `ToggleSoundFadeWarning` (expected string got %s)", type(spellName)))

  me.ToggleSoundFade(
    spellList,
    categoryId,
    spellName,
    not me.IsSoundFadeWarningActive(spellList, categoryId, spellName)
  )
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
    true if the sound warning is active
    false if the sound warning is inactive
]]--
function me.IsSoundFadeWarningActive(spellList, categoryId, spellName)
  if RGPVPW_ENVIRONMENT.TEST then return true end

  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `IsSoundFadeWarningActive` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `IsSoundFadeWarningActive` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `IsSoundFadeWarningActive` (expected string got %s)", type(spellName)))

  if PVPWarnConfiguration[spellList][categoryId] then
    if PVPWarnConfiguration[spellList][categoryId][spellName] then
      return PVPWarnConfiguration[spellList][categoryId][spellName].soundFadeWarningActive
    end
  end

  return false
end

--[[
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
  @param {boolean} state
    true if the option should be active
    false if the option should be inactive
]]--
function me.ToggleSoundFade(spellList, categoryId, spellName, state)
  me.SetupPrerequisiteForOptionEntry(spellList, categoryId, spellName)

  mod.logger.LogDebug(me.tag,
    string.format(
      "Updating spell %s sounddownstate for category %s - current value: %s / new value: %s",
      spellName,
      categoryId,
      tostring(PVPWarnConfiguration[spellList][categoryId][spellName].soundFadeWarningActive),
      tostring(state)
    )
  )

  PVPWarnConfiguration[spellList][categoryId][spellName].soundFadeWarningActive = state
  mod.profile.SetModified()
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
]]--
function me.ToggleSoundStartWarning(spellList, categoryId, spellName)
  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `ToggleSoundStartWarning` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `ToggleSoundStartWarning` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `ToggleSoundStartWarning` (expected string got %s)", type(spellName)))

  me.ToggleSoundStart(
    spellList,
    categoryId,
    spellName,
    not me.IsSoundStartWarningActive(spellList, categoryId, spellName)
  )
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
    true if the sound start warning is active
    false if the sound start warning is inactive
]]--
function me.IsSoundStartWarningActive(spellList, categoryId, spellName)
  if RGPVPW_ENVIRONMENT.TEST then return true end

  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `IsSoundStartWarningActive` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `IsSoundStartWarningActive` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `IsSoundStartWarningActive` (expected string got %s)", type(spellName)))

  if PVPWarnConfiguration[spellList][categoryId] then
    if PVPWarnConfiguration[spellList][categoryId][spellName] then
      return PVPWarnConfiguration[spellList][categoryId][spellName].soundStartWarningActive
    end
  end

  return false
end

--[[
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
  @param {boolean} state
    true if the option should be active
    false if the option should be inactive
]]--
function me.ToggleSoundStart(spellList, categoryId, spellName, state)
  me.SetupPrerequisiteForOptionEntry(spellList, categoryId, spellName)

  mod.logger.LogDebug(me.tag,
    string.format(
      "Updating spell %s soundstate for category %s - current value: %s / new value: %s",
      spellName,
      categoryId,
      tostring(PVPWarnConfiguration[spellList][categoryId][spellName].soundStartWarningActive),
      tostring(state)
    )
  )

  PVPWarnConfiguration[spellList][categoryId][spellName].soundStartWarningActive = state
  mod.profile.SetModified()
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName

  @return {number}
    A number representing the current color. If none can be found the default color is returned
]]--
function me.GetVisualWarningColor(spellList, categoryId, spellName)
  assert(type(spellList) == "string", string.format(
    "bad argument #1 to `GetVisualWarningColor` (expected string got %s)", type(spellList)))

  assert(type(categoryId) == "number", string.format(
    "bad argument #2 to `GetVisualWarningColor` (expected number got %s)", type(categoryId)))

  assert(type(spellName) == "string", string.format(
    "bad argument #3 to `GetVisualWarningColor` (expected string got %s)", type(spellName)))

  if PVPWarnConfiguration[spellList][categoryId] then
    if PVPWarnConfiguration[spellList][categoryId][spellName] then
      return PVPWarnConfiguration[spellList][categoryId][spellName].visualWarningColor
    end
  end

  return RGPVPW_CONSTANTS.DEFAULT_COLOR
end

--[[
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
  @param {number} color
    A number representing the color - see RGPVPW_CONSTANTS.TEXTURES
]]--
function me.UpdateVisualWarningColor(spellList, categoryId, spellName, color)
  me.SetupPrerequisiteForOptionEntry(spellList, categoryId, spellName)

  mod.logger.LogDebug(me.tag,
    string.format(
      "Updating spell %s visualwarningcolor for category %s - current value: %s / new value: %s",
      spellName,
      categoryId,
      tostring(PVPWarnConfiguration[spellList][categoryId][spellName].visualWarningColor),
      tostring(color)
    )
  )

  PVPWarnConfiguration[spellList][categoryId][spellName].visualWarningColor = color
  mod.profile.SetModified()
end

--[[
  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
  @param {number} categoryId
  @param {string} spellName
]]--
function me.SetupPrerequisiteForOptionEntry(spellList, categoryId, spellName)
  if not PVPWarnConfiguration[spellList][categoryId] then
    mod.logger.LogInfo(me.tag, "ClassId - " .. categoryId .. " does not exist. Creating new one...")
    PVPWarnConfiguration[spellList][categoryId] = {}
  end

  if not PVPWarnConfiguration[spellList][categoryId][spellName] then
    mod.logger.LogInfo(me.tag, "SpellName - " .. spellName .. " for class with id "
      .. categoryId .. " does not exist. Creating new one...")
    PVPWarnConfiguration[spellList][categoryId][spellName] = me.GetDefaultSpellConfiguration(spellList)
  end
end

--[[
  Returns a default config object for a spell

  @param {string} spellList
    Decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell

  @return {table}
    Returns a default object for a spell
]]--
function me.GetDefaultSpellConfiguration(spellList)
  if spellList == RGPVPW_CONSTANTS.SPELL_TYPE.SPELL then
    return {
      ["spellActive"] = false,
      ["soundWarningActive"] = false,
      --[[
        Depending on what is applicable. Has to be set during the configuration.
      ]]--
      -- ["soundFadeWarningActive"] = false,
      -- ["soundStartWarningActive"] = false,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.DEFAULT_COLOR
    }
  else
    return {
      ["spellActive"] = false,
      ["soundWarningActive"] = false,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.DEFAULT_COLOR
    }
  end
end
