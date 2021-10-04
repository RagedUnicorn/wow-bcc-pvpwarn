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
mod.testCombatEventsCastRogue = me

me.tag = "TestCombatEventsCastRogue"

local testGroupName = "CombatEventsCastRogue"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAnestheticPoisonAppliedRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCripplingPoisonAppliedRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCripplingPoisonAppliedRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonAppliedRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonAppliedRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonAppliedRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonAppliedRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonAppliedRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonAppliedRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonAppliedRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonAppliedRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonAppliedRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonAppliedRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonAppliedRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonAppliedRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonAppliedRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonAppliedRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindNumbingPoisonAppliedRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindNumbingPoisonAppliedRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindNumbingPoisonAppliedRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonAppliedRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonAppliedRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonAppliedRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonAppliedRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonAppliedRank5Start)
end

function me.TestCombatEventAnestheticPoisonAppliedRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAnestheticPoisonAppliedRank1Start",
    testCategory,
    26785
  )
end

function me.TestCombatEventCripplingPoisonAppliedRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCripplingPoisonAppliedRank1Start",
    testCategory,
    3408
  )
end

function me.TestCombatEventCripplingPoisonAppliedRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCripplingPoisonAppliedRank2Start",
    testCategory,
    11202
  )
end

function me.TestCombatEventDeadlyPoisonAppliedRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventDeadlyPoisonAppliedRank1Start",
    testCategory,
    2823
  )
end

function me.TestCombatEventDeadlyPoisonAppliedRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventDeadlyPoisonAppliedRank2Start",
    testCategory,
    2824
  )
end

function me.TestCombatEventDeadlyPoisonAppliedRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventDeadlyPoisonAppliedRank3Start",
    testCategory,
    11355
  )
end

function me.TestCombatEventDeadlyPoisonAppliedRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventDeadlyPoisonAppliedRank4Start",
    testCategory,
    11356
  )
end

function me.TestCombatEventDeadlyPoisonAppliedRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventDeadlyPoisonAppliedRank5Start",
    testCategory,
    25351
  )
end

function me.TestCombatEventDeadlyPoisonAppliedRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventDeadlyPoisonAppliedRank6Start",
    testCategory,
    26967
  )
end

function me.TestCombatEventDeadlyPoisonAppliedRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventDeadlyPoisonAppliedRank7Start",
    testCategory,
    27186
  )
end

function me.TestCombatEventInstantPoisonAppliedRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventInstantPoisonAppliedRank1Start",
    testCategory,
    8679
  )
end

function me.TestCombatEventInstantPoisonAppliedRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventInstantPoisonAppliedRank2Start",
    testCategory,
    8686
  )
end

function me.TestCombatEventInstantPoisonAppliedRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventInstantPoisonAppliedRank3Start",
    testCategory,
    8688
  )
end

function me.TestCombatEventInstantPoisonAppliedRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventInstantPoisonAppliedRank4Start",
    testCategory,
    11338
  )
end

function me.TestCombatEventInstantPoisonAppliedRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventInstantPoisonAppliedRank5Start",
    testCategory,
    11339
  )
end

function me.TestCombatEventInstantPoisonAppliedRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventInstantPoisonAppliedRank6Start",
    testCategory,
    11340
  )
end

function me.TestCombatEventInstantPoisonAppliedRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventInstantPoisonAppliedRank7Start",
    testCategory,
    26891
  )
end

function me.TestCombatEventMindNumbingPoisonAppliedRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindNumbingPoisonAppliedRank1Start",
    testCategory,
    5761
  )
end

function me.TestCombatEventMindNumbingPoisonAppliedRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindNumbingPoisonAppliedRank2Start",
    testCategory,
    8693
  )
end

function me.TestCombatEventMindNumbingPoisonAppliedRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindNumbingPoisonAppliedRank3Start",
    testCategory,
    11399
  )
end

function me.TestCombatEventWoundPoisonAppliedRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWoundPoisonAppliedRank1Start",
    testCategory,
    13219
  )
end

function me.TestCombatEventWoundPoisonAppliedRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWoundPoisonAppliedRank2Start",
    testCategory,
    13225
  )
end

function me.TestCombatEventWoundPoisonAppliedRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWoundPoisonAppliedRank3Start",
    testCategory,
    13226
  )
end

function me.TestCombatEventWoundPoisonAppliedRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWoundPoisonAppliedRank4Start",
    testCategory,
    13227
  )
end

function me.TestCombatEventWoundPoisonAppliedRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWoundPoisonAppliedRank5Start",
    testCategory,
    27188
  )
end
