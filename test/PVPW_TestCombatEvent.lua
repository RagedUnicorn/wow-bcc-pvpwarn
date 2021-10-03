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

-- luacheck: globals tContains

--[[
  Run all tests:
    /run rgpvpw.testCombatEvent.Test([category])
]]--

local mod = rgpvpw
local me = {}
mod.testCombatEvent = me

me.tag = "TestCombatEvent"

local testGroupName = "ShouldHaveCombatEventTestForAllSpells"

--[[
  @param {number} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.Test(category)
  mod.testReporter.StartTestGroup(testGroupName)

  me.ShouldHaveCombatEventTestForAllSpells(category)
  me.ShouldHaveCombatEventCastTestForAllSpells(category)
  me.ShouldHaveCombatEventAvoidTestForAllSpells(category, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  me.ShouldHaveCombatEventAvoidTestForAllSpells(category, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)

  mod.testReporter.StopTestGroup()
end

--[[
  Tests whether there is an appropriate testcase for every spell found in the spellMap

  @param {table} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.ShouldHaveCombatEventTestForAllSpells(category)
  local spellMap

  spellMap = mod.spellMap.SearchByCategory(category.id)

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.CombatEventTest(category, spellMap)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {table} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
  @param {table} spellMap
]]--
function me.CombatEventTest(category, spellMap)
  local module = mod["testCombatEvents"
    .. mod.testHelper.FirstToUpper(category.categoryName)]

  for _, spellData in pairs(spellMap) do
    local spellMetaData = mod.spellMetaMap.GetSpellMetaDataByCategoryAndName(category.id, spellData.name)
    local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
    local trackedEvents = spellMetaData.trackedEvents
    local func

    for _, trackedEvent in pairs(trackedEvents) do
      if tContains(mod.testHelper.GetCombatEvents(), trackedEvent) then
        local testName

        if spellData.rank ~= 0 then
          testName = "CombatEventTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) ..
            spellName .. "Rank" .. spellData.rank .. "_" .. trackedEvent
        else
          testName = "CombatEventTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) ..
            spellName .. "_" .. trackedEvent
        end

        mod.testReporter.StartTestRun(testName)

        local eventName = mod.testHelper.MappEventToName(trackedEvent)

        if eventName == nil then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.invalidEvent, spellData.name, trackedEvent)
          )

          return
        end

        if spellData.rank ~= 0 then
          func = module["TestCombatEvent" .. spellName .. "Rank" .. spellData.rank .. eventName]
        else
          func = module["TestCombatEvent" .. spellName .. eventName]
        end

        if type(func) ~= "function" then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.missingCombatEventTest, spellName, trackedEvent)
          )
        else
          mod.testReporter.ReportSuccessTestRun()
        end
      end
    end
  end
end

--[[
  Tests whether there is an appropriate testcase for every spell found in the spellMap

  @param {table} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.ShouldHaveCombatEventCastTestForAllSpells(category)
  local spellMap

  spellMap = mod.spellMap.SearchByCategory(category.id)

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.CombatEventCastTest(category, spellMap)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {table} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
  @param {table} spellMap
]]--
function me.CombatEventCastTest(category, spellMap)
  local module = mod["testCombatEventsCast"
    .. mod.testHelper.FirstToUpper(category.categoryName)]

  for _, spellData in pairs(spellMap) do
    local spellMetaData = mod.spellMetaMap.GetSpellMetaDataByCategoryAndName(category.id, spellData.name)
    local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
    local trackedEvents = spellMetaData.trackedEvents
    local func

    for _, trackedEvent in pairs(trackedEvents) do
      if tContains(mod.testHelper.GetCastEvents(), trackedEvent) then
        local testName

        if spellData.rank ~= 0 then
          testName = "CombatEventTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) ..
            spellName .. "Rank" .. spellData.rank .. "_" .. trackedEvent
        else
          testName = "CombatEventTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) ..
            spellName .. "_" .. trackedEvent
        end

        mod.testReporter.StartTestRun(testName)

        local eventName = mod.testHelper.MappEventToName(trackedEvent)

        if eventName == nil then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.invalidEvent, spellData.name, trackedEvent)
          )

          return
        end

        if spellData.rank ~= 0 then
          func = module["TestCombatEvent" .. spellName .. "Rank" .. spellData.rank .. eventName]
        else
          func = module["TestCombatEvent" .. spellName .. eventName]
        end

        if type(func) ~= "function" then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.missingCombatEventCastTest, spellName, trackedEvent)
          )
        else
          mod.testReporter.ReportSuccessTestRun()
        end
      end
    end
  end
end


--[[
  Tests whether there is an appropriate testcase for every spell found in the spellAvoidMap

  @param {table} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
  @param {number} spellAvoidType
    RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID or RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID
]]--
function me.ShouldHaveCombatEventAvoidTestForAllSpells(category, spellAvoidType)
  local spellMap

  spellMap = mod.spellMap.SearchByCategory(category.id)

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.CombatEventAvoidTest(category, spellMap, spellAvoidType)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {table} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
  @param {table} spellMap
  @param {number} spellAvoidType
    RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID or RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID
]]--
function me.CombatEventAvoidTest(category, spellMap, spellAvoidType)
  local module
  local testNameBase
  local testFunctionBase

  if spellAvoidType == RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID then
    module = mod["testCombatEventsSelfAvoid"
      .. mod.testHelper.FirstToUpper(category.categoryName)]
    testNameBase = "CombatSelfAvoidEventTestPresent"
    testFunctionBase = "TestCombatEventSelfAvoid"
  elseif spellAvoidType == RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID then
    module = mod["testCombatEventsEnemyAvoid"
      .. mod.testHelper.FirstToUpper(category.categoryName)]
    testNameBase = "CombatEnemyAvoidEventTestPresent"
    testFunctionBase = "TestCombatEventEnemyAvoid"
  else
    mod.logger.LogError(me.tag, "Invalid spellAvoidType: " .. spellAvoidType)
    return
  end

  for _, spellData in pairs(spellMap) do
    local spellMetaData = mod.spellMetaMap.GetSpellMetaDataByCategoryAndName(category.id, spellData.name)
    local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
    local trackedEvents = spellMetaData.trackedEvents
    local func

    for _, trackedEvent in pairs(trackedEvents) do
      if tContains(mod.testHelper.GetAvoidCombatEvents(), trackedEvent) then
        local testName

        if spellData.rank ~= 0 then
          testName = testNameBase .. mod.testHelper.FirstToUpper(category.categoryName) ..
            spellName .. "Rank" .. spellData.rank .. "_" .. trackedEvent
        else
          testName = testNameBase .. mod.testHelper.FirstToUpper(category.categoryName) ..
            spellName .. "_" .. trackedEvent
        end

        mod.testReporter.StartTestRun(testName)

        local eventName = mod.testHelper.MappEventToName(trackedEvent)

        if eventName == nil then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.invalidEvent, spellData.name, trackedEvent)
          )

          return
        end

        if spellData.rank ~= 0 then
          func = module[testFunctionBase .. spellName .. "Rank" .. spellData.rank .. eventName]
        else
          func = module[testFunctionBase .. spellName .. eventName]
        end

        if type(func) ~= "function" then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.missingCombatEventAvoidTest, spellName, trackedEvent)
          )
        else
          mod.testReporter.ReportSuccessTestRun()
        end
      end
    end
  end
end
