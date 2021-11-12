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

-- luacheck: globals CombatLogGetCurrentEventInfo GetLocale COMBATLOG_FILTER_HOSTILE_PLAYERS
-- luacheck: globals COMBATLOG_FILTER_MINE CombatLog_Object_IsA UnitGUID UnitName

local mod = rgpvpw
local me = {}
mod.testHelper = me

me.tag = "TestHelper"

local origCombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local origMaxWarnAge
local languageMapping = {
  ["enUS"] = "En",
  ["enGB"] = "En",
  ["deDE"] = "De"
}

--[[
  Reused failure reasons
]]--
mod.testHelper.unableToPlay = "Unable to play sound"
mod.testHelper.unableToGetMetadata = "Did not get any spell metadata"
mod.testHelper.missingSoundTest = "Did not find a sound test for %s - %s"
mod.testHelper.missingSoundAvoidTest = "Did not find a sound avoid test for %s - %s"
mod.testHelper.missingSoundDownTest = "Did not find a sound down test for %s - %s"
mod.testHelper.missingSoundCastTest = "Did not find a sound cast test for %s - %s"
mod.testHelper.invalidEvent = "Invalid event for %s - %s"
mod.testHelper.missingCombatEventTest = "Did not find a combat event test for %s - %s"
mod.testHelper.missingCombatEventCastTest = "Did not find a combat event cast test for %s - %s"
mod.testHelper.missingCombatEventAvoidTest = "Did not find a combat avoid event test for %s - %s"

--[[
  All events that are considered basic/normal combat events
]]--
local combatEvents = {
  RGPVPW_CONSTANTS.EVENT_SPELL_AURA_APPLIED,
  RGPVPW_CONSTANTS.EVENT_SPELL_AURA_REMOVED,
  RGPVPW_CONSTANTS.EVENT_SPELL_AURA_REFRESH
}

--[[
  @return {table}
]]--
function me.GetCombatEvents()
  return combatEvents
end

local fadeEvents = {
  RGPVPW_CONSTANTS.EVENT_SPELL_AURA_REMOVED
}

--[[
  @return {table}
]]--
function me.GetFadeEvents()
  return fadeEvents
end

--[[
  All events that are considered avoid events
]]--
local avoidCombatEvents = {
  RGPVPW_CONSTANTS.EVENT_SPELL_MISSED
}

--[[
  @return {table}
]]--
function me.GetAvoidCombatEvents()
  return avoidCombatEvents
end

--[[
  All event that are considered spell cast start events
]]--
local castEvents = {
  RGPVPW_CONSTANTS.EVENT_SPELL_CAST_START
}

--[[
  @return {table}
]]--
function me.GetCastEvents()
  return castEvents
end

--[[
  Returns a matched language to a locale string

  @return {string | nil}
    string - if a language was found in the mapping
    nil - if no language was found in the mapping
]]--
function me.GetLanguage(language)
  if language then
    return languageMapping[language]
  else
    return languageMapping[GetLocale()]
  end
end

--[[
  Mapp a wow event name to a test function name

  @param {string} event

  return {string | nil}
    string - if a matching event could be found
    nil - if no matching event could be found
]]--
function me.MappEventToName(event)
  local eventMap = {
    ["SPELL_CAST_SUCCESS"] = "Success",
    ["SPELL_CAST_START"] = "Start",
    ["SPELL_AURA_APPLIED"] = "Applied",
    ["SPELL_AURA_REMOVED"] = "Removed",
    ["SPELL_AURA_REFRESH"] = "Refresh",
    ["SPELL_MISSED"] = "Missed"
  }

  return eventMap[event]
end

--[[
  Normalize a spellName so it can be matched against a functionname

  @param {string} spellName

  @return {string}
    The normalized spellName
]]--
function me.NormalizeSpellName(spellName)
  local name = string.gsub(spellName, "[':%(%)_]+", "") -- remove special characters
  local normalizedSpellName = ""

  for match in string.gmatch(name, "[%a%d]+") do
    normalizedSpellName = normalizedSpellName .. me.FirstToUpper(match)
  end

  return normalizedSpellName
end

--[[
  Make first character of a string to uppercase

  @param {string}

  @return {string}
]]--
function me.FirstToUpper(str)
  return (str:gsub("^%l", string.upper))
end

--[[
  Hooks the CombatLogGetCurrentEventInfo function and replaces it with the passed function. Hooking this function
  breaks the complete functionality and should never used with other addons running. The sole purpose is for testing.

  @param {table} functionReplacement
]]--
function me.HookCombatLogGetCurrentEventInfo(functionReplacement)
  mod.logger.LogWarn(me.tag, "Warning hooking 'CombatLogGetCurrentEventInfo' for debugging purposes")

  assert(type(functionReplacement) == "function",
    string.format(
      "bad argument #1 to `HookCombatLogGetCurrentEventInfo` (expected function got %s)", type(functionReplacement)
    )
  )

  CombatLogGetCurrentEventInfo = functionReplacement
end

--[[
  Restores the CombatLogGetCurrentEventInfo function to its normal state
]]--
function me.RestoreCombatLogGetCurrentEventInfo()
  mod.logger.LogInfo(me.tag, "Restoring 'CombatLogGetCurrentEventInfo'")
  CombatLogGetCurrentEventInfo = origCombatLogGetCurrentEventInfo
end

--[[
  Hooks the MAX_WARN_AGE constant and replaces it with a value better fitting for tests
]]--
function me.HookMaxWarnAge()
  mod.logger.LogWarn(me.tag, "Warning hooking 'MAX_WARN_AGE' for debugging purposes")
  origMaxWarnAge = RGPVPW_CONSTANTS.MAX_WARN_AGE
  RGPVPW_CONSTANTS.MAX_WARN_AGE = 999
end

--[[
  Restores the MAX_WARN_AGE constant to its normal state
]]--
function me.RestoreMaxWarnAge()
  mod.logger.LogInfo(me.tag, "Restoring 'CombatLogGetCurrentEventInfo'")
  RGPVPW_CONSTANTS.MAX_WARN_AGE = origMaxWarnAge
end

--[[
  Enable Testing mode and thus ignoring the spellConfiguration
]]--
function me.EnableTestMode()
  RGPVPW_ENVIRONMENT.TEST = true
end

--[[
  Enable Testing mode and thus stop ignoring the spellConfiguration
]]--
function me.DisableTestMode()
  RGPVPW_ENVIRONMENT.TEST = false
end
--[[
  @return {string}
]]--
function me.GetGenericPlayerId()
  return "Player-531-0764I8DA"
end

--[[
  @return {string}
]]--
function me.GetGenericPlayerName()
  return "PlayerName"
end

--[[
  @return {string}
]]--
function me.GetGenericEnemyId()
  return "Player-531-0764I8DA"
end

--[[
  @return {string}
]]--
function me.GetGenericEnemyName()
  return "EnemyPlayer"
end

--[[
   @return {number}
]]--
function me.GetEnemyPlayerSourceFlags()
  return COMBATLOG_FILTER_HOSTILE_PLAYERS -- 32078
end

--[[
  @return {number}
]]--
function me.GetSelfPlayerSourceFlags()
  return COMBATLOG_FILTER_MINE -- 17681
end

--[[
  Tests whether a sound can be played for a certain category, spellName and the SPELL_AURA_APPLIED event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestSoundApplied(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local status = me.TestSound(
    spellName,
    testCategoryId,
    RGPVPW_CONSTANTS.EVENT_SPELL_AURA_APPLIED,
    RGPVPW_CONSTANTS.SPELL_TYPES.NORMAL
  )

  if status then
    mod.testReporter.ReportSuccessTestRun()
  else
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToPlay)
  end
end

--[[
  Tests whether a sound can be played for a certain category, spellName and the SPELL_AURA_REMOVED event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestSoundRemoved(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local status = me.TestSound(
    spellName,
    testCategoryId,
    RGPVPW_CONSTANTS.EVENT_SPELL_AURA_REMOVED,
    RGPVPW_CONSTANTS.SPELL_TYPES.REMOVED
  )

  if status then
    mod.testReporter.ReportSuccessTestRun()
  else
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToPlay)
  end
end

--[[
  Tests whether a sound can be played for a certain category, spellName and the SPELL_CAST_SUCCESS event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestSoundSuccess(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local status = me.TestSound(
    spellName,
    testCategoryId,
    RGPVPW_CONSTANTS.EVENT_SPELL_CAST_SUCCESS,
    RGPVPW_CONSTANTS.SPELL_TYPES.NORMAL
  )

  if status then
    mod.testReporter.ReportSuccessTestRun()
  else
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToPlay)
  end
end

--[[
  Tests whether a sound can be played for a certain category, spellName and the SPELL_CAST_START event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestSoundStart(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local status = me.TestSound(
    spellName,
    testCategoryId,
    RGPVPW_CONSTANTS.EVENT_SPELL_CAST_START,
    RGPVPW_CONSTANTS.SPELL_TYPES.START
  )

  if status then
    mod.testReporter.ReportSuccessTestRun()
  else
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToPlay)
  end
end

--[[
  Tests whether a sound can be played for a certain category, spellName and the SPELL_MISSED event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestSoundSpellMissedSelf(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local status = me.TestSound(
    spellName,
    testCategoryId,
    RGPVPW_CONSTANTS.EVENT_SPELL_MISSED,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )

  if status then
    mod.testReporter.ReportSuccessTestRun()
  else
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToPlay)
  end
end

--[[
  Tests whether a sound can be played for a certain category, spellName and the SPELL_MISSED event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestSoundSpellMissedEnemy(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local status = me.TestSound(
    spellName,
    testCategoryId,
    RGPVPW_CONSTANTS.EVENT_SPELL_MISSED,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )

  if status then
    mod.testReporter.ReportSuccessTestRun()
  else
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToPlay)
  end
end

--[[
  Play a sound and return whether this was possible or not. This function also
  considers that for certain spellTypes a different spellMap needs to be usedw

  @param {string} spellName
  @param {number} testCategoryId
  @param {string} event
  @param {string} spellType

  @return {boolean}
    true - If the sound could be played
    false - If the sound could not be played
]]--
function me.TestSound(spellName, testCategoryId, event, spellType)
  local spell = {
    ["category"] = testCategoryId,
    ["name"] = spellName
  }

  local spellMetaData = mod.spellMetaMap.GetSpellMetaDataForSupportedEvent(spell, event)
  local status = mod.sound.PlaySound(
    testCategoryId,
    spellType,
    spellMetaData.soundFileName
  )

  return status
end

--[[
  Tests whether a combatevent can be processed for a certain category, spellName and the SPELL_AURA_APPLIED event

  @param {string} testName
  @param {number} testCategoryId
  @param {number} spellId
]]--
function me.TestCombatEventApplied(testName, testCategoryId, spellId)
  mod.testReporter.StartTestRun(testName)

  local failureReason
  local category, spellType, spell = me.TestCombatEvent(
    spellId,
    RGPVPW_CONSTANTS.EVENT_SPELL_AURA_APPLIED,
    me.GetEnemyPlayerSourceFlags()
  )

  if not spell then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToGetMetadata)
    return
  end

  if testCategoryId ~= category then
    failureReason = string.format("Expected category %s but got %s", testCategoryId, tostring(category))
  end

  if RGPVPW_CONSTANTS.SPELL_TYPES.APPLIED ~= spellType then
    failureReason = string.format("Expected spellType %i but got %i", RGPVPW_CONSTANTS.SPELL_TYPES.APPLIED, spellType)
  end

  if failureReason ~= nil then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, failureReason)
  else
    mod.testReporter.ReportSuccessTestRun()
  end
end

--[[
  Tests whether a combatevent can be processed for a certain category, spellName and the SPELL_AURA_REMOVED event

  @param {string} testName
  @param {number} testCategoryId
  @param {number} spellId
]]--
function me.TestCombatEventRemoved(testName, testCategoryId, spellId)
  mod.testReporter.StartTestRun(testName)

  local failureReason
  local category, spellType, spell = me.TestCombatEvent(
    spellId,
    RGPVPW_CONSTANTS.EVENT_SPELL_AURA_REMOVED,
    me.GetEnemyPlayerSourceFlags()
  )

  if not spell then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToGetMetadata)
    return
  end

  if testCategoryId ~= category then
    failureReason = string.format("Expected category %s but got %s", testCategoryId, tostring(category))
  end

  if RGPVPW_CONSTANTS.SPELL_TYPES.REMOVED ~= spellType then
    failureReason = string.format("Expected spellType %i but got %i", RGPVPW_CONSTANTS.SPELL_TYPES.REMOVED, spellType)
  end

  if failureReason ~= nil then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, failureReason)
  else
    mod.testReporter.ReportSuccessTestRun()
  end
end

--[[
  Tests whether a combatevent can be processed for a certain category, spellName and the SPELL_AURA_REFRESH event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestCombatEventRefresh(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local failureReason
  local category, spellType, spell = me.TestCombatEvent(
    spellName,
    RGPVPW_CONSTANTS.EVENT_SPELL_AURA_REFRESH,
    me.GetEnemyPlayerSourceFlags()
  )

  if not spell then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToGetMetadata)
    return
  end

  if testCategoryId ~= category then
    failureReason = string.format("Expected category %s but got %s", testCategoryId, tostring(category))
  end

  if RGPVPW_CONSTANTS.SPELL_TYPES.REFRESH ~= spellType then
    failureReason = string.format("Expected spellType %i but got %i", RGPVPW_CONSTANTS.SPELL_TYPES.REFRESH, spellType)
  end

  if failureReason ~= nil then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, failureReason)
  else
    mod.testReporter.ReportSuccessTestRun()
  end
end

--[[
  Tests whether a combatevent can be processed for a certain category, spellName and the SPELL_CAST_SUCCESS event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestCombatEventSuccess(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local failureReason
  local category, spellType, spell = me.TestCombatEvent(
    spellName,
    RGPVPW_CONSTANTS.EVENT_SPELL_CAST_SUCCESS,
    me.GetEnemyPlayerSourceFlags()
  )

  if not spell then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToGetMetadata)
    return
  end

  if testCategoryId ~= category then
    failureReason = string.format("Expected category %s but got %s", testCategoryId, tostring(category))
  end

  if RGPVPW_CONSTANTS.SPELL_TYPES.NORMAL ~= spellType then
    failureReason = string.format("Expected spellType %i but got %i", RGPVPW_CONSTANTS.SPELL_TYPES.NORMAL, spellType)
    end

  if failureReason ~= nil then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, failureReason)
  else
    mod.testReporter.ReportSuccessTestRun()
  end
end

--[[
  Tests whether a combatevent can be processed for a certain category, spellName and the SPELL_CAST_START event

  @param {string} testName
  @param {number} testCategoryId
  @param {string} spellName
]]--
function me.TestCombatEventStart(testName, testCategoryId, spellName)
  mod.testReporter.StartTestRun(testName)

  local failureReason
  local category, spellType, spell = me.TestCombatEvent(
    spellName,
    RGPVPW_CONSTANTS.EVENT_SPELL_CAST_START,
    me.GetEnemyPlayerSourceFlags()
  )

  if not spell then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToGetMetadata)
    return
  end

  if spell.links ~= nil then
    local linkedSpell = me.SearchLinkedSpellWithCategory(testCategoryId, category, spell)

    if linkedSpell == nil then
      failureReason = string.format("No matching category %s for linked spell found", testCategoryId)
    end
  else
    if testCategoryId ~= category then
      failureReason = string.format("Expected category %s but got %s", testCategoryId, tostring(category))
    end

    if RGPVPW_CONSTANTS.SPELL_TYPES.START ~= spellType then
      failureReason = string.format("Expected spellType %i but got %i", RGPVPW_CONSTANTS.SPELL_TYPES.NORMAL, spellType)
    end
  end

  if failureReason ~= nil then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, failureReason)
  else
    mod.testReporter.ReportSuccessTestRun()
  end
end

--[[
  Tests whether a combatevent can be processed for a certain category, spellName and the SPELL_MISSED event

  @param {string} testName
  @param {number} testCategoryId
  @param {number} spellId
  @param {string} expectedSpellType
    One of RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF or RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
]]--
function me.TestCombatEventSpellMissed(testName, testCategoryId, spellId, expectedSpellType)
  mod.testReporter.StartTestRun(testName)

  local sourceFlags

  if expectedSpellType == RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF then
    sourceFlags = me.GetEnemyPlayerSourceFlags()
  elseif expectedSpellType == RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY then
    sourceFlags = me.GetSelfPlayerSourceFlags()
  else
    mod.logger.LogError(me.tag, "Unknown spelltype: " .. expectedSpellType)
  end

  local failureReason
  local category, spellType, spell = me.TestCombatEventAvoid(
    spellId,
    RGPVPW_CONSTANTS.EVENT_SPELL_MISSED,
    sourceFlags
  )

  if not spell then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, mod.testHelper.unableToGetMetadata)
    return
  end

  if testCategoryId ~= category then
    failureReason = string.format("Expected category %s but got %s", testCategoryId, tostring(category))
  end

  if expectedSpellType ~= spellType then
    failureReason = string.format(
      "Expected spellType %i but got %i", expectedSpellType, spellType
    )
  end

  if failureReason ~= nil then
    mod.testReporter.ReportFailureTestRun(testCategoryId, testName, failureReason)
  else
    mod.testReporter.ReportSuccessTestRun()
  end
end

--[[
  @param {number} spellId
  @param {string} event
  @param {number} sourceFlags
    Sourceflags to determine the source of the combatlog event

  @return {string}, {string}, {table}
]]--
function me.TestCombatEvent(spellId, event, sourceFlags)
  local target = me.GetGenericEnemyId()
  local targetName = me.GetGenericEnemyName()
  local actualCategory
  local actualSpellType
  local actualSpell

  -- luacheck: ignore _
  local fakeSpellCastCombatEvent = function()
    return  _, event, _, _, _, sourceFlags, _, target, targetName, _, _, spellId
  end

  me.HookCombatLogGetCurrentEventInfo(fakeSpellCastCombatEvent)

  mod.combatLog.ProcessUnfilteredCombatLogEvent(function(category, spellType, spell)
    actualCategory = category
    actualSpellType = spellType
    actualSpell = spell
  end, fakeSpellCastCombatEvent())

  me.RestoreCombatLogGetCurrentEventInfo()

  return actualCategory, actualSpellType, actualSpell
end

--[[
  @param {number} spellId
  @param {string} event
  @param {number} sourceFlags
    Sourceflags to determine the source of the combatlog event

  @return {string}, {string}, {table}
]]--
function me.TestCombatEventAvoid(spellId, event, sourceFlags)
  local target
  local targetName

  --[[
    For RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF the target must be the player himself.
    Even during testing we need to get the actual name and nameId of the player otherwise the events are ignored
  ]]--
  if CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS) then
    target = UnitGUID(RGPVPW_CONSTANTS.UNIT_ID_PLAYER)
    targetName = UnitName(RGPVPW_CONSTANTS.UNIT_ID_PLAYER)
  else
    target = me.GetGenericEnemyId()
    targetName = me.GetGenericEnemyName()
  end

  local actualCategory
  local actualSpellType
  local actualSpell
  --[[
    A dummy misstype that is accepted as a valid misstype during testing. We are mostly not
    interested in what the exactmisstype was other than filtering some of them out. But whether
    a spell was dodged or missed doesn't matter to PVPWarn
  ]]--
  local dummyMissType = "DUMMY_MISS_TYPE"

  -- luacheck: ignore _
  local fakeSpellCastCombatEvent = function()
    return  _, event, _, _, _, sourceFlags, _, target, targetName, _, _, spellId, _, _, dummyMissType
  end

  me.HookCombatLogGetCurrentEventInfo(fakeSpellCastCombatEvent)

  mod.combatLog.ProcessUnfilteredCombatLogEvent(function(category, spellType, spell)
    actualCategory = category
    actualSpellType = spellType
    actualSpell = spell
  end, fakeSpellCastCombatEvent())

  me.RestoreCombatLogGetCurrentEventInfo()

  return actualCategory, actualSpellType, actualSpell
end
