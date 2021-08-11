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

--[[
  Run all tests:
    /run rgpvpw.testCombatEvent.Test([category])
  Run combat event tests:
    /run rgpvpw.testCombatEvent.ShouldHaveCombatEventTestForAllTrackedEvents([category])
  Run combat event self avoid tests:
    /run rgpvpw.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllTrackedEvents(
      RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID [, categoryName]
    )
  Run combat event enemy avoid tests:
    /run rgpvpw.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllTrackedEvents(
      RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID [, categoryName]
    )
]]--

local mod = rgpvpw
local me = {}
mod.testCombatEvent = me

me.tag = "TestCombatEvent"

local testGroupName = "ShouldHaveCombatEventTestForAllTrackedEvents"

--[[
  @param {number} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.Test(category)
  mod.testReporter.StartTestGroup(testGroupName)

  me.ShouldHaveCombatEventTestForAllTrackedEvents(category)

  mod.testReporter.StopTestGroup()
end

--[[
  Tests whether there is an appropriate testcase for every spell found in the spellMap

  @param {number} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.ShouldHaveCombatEventTestForAllTrackedEvents(category)
  local spellMap

  if category ~= nil then
    spellMap = mod.spellMap.SearchByCategory(category.id)
  else
    spellMap = mod.spellMap.GetSpellMap()
  end

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.CombatEventTest(category, spellMap)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {number} category
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
          category.categoryName,
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
          category.categoryName,
          testName,
          string.format(mod.testHelper.missingCombatEventTest, spellName, trackedEvent)
        )
      else
        mod.testReporter.ReportSuccessTestRun()
      end
    end
  end
end
