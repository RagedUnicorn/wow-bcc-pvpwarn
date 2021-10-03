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
mod.testCombatEventsCastDruid = me

me.tag = "TestCombatEventsCastDruid"

local testGroupName = "CombatEventsCastDruid"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCycloneStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank12Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank13Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHibernateRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHibernateRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHibernateRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank10Start)
end

function me.TestCombatEventCycloneStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCycloneStart",
    testCategory,
    33786
  )
end

function me.TestCombatEventEntanglingRootsRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEntanglingRootsRank1Start",
    testCategory,
    339
  )
end

function me.TestCombatEventEntanglingRootsRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEntanglingRootsRank2Start",
    testCategory,
    1062
  )
end

function me.TestCombatEventEntanglingRootsRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEntanglingRootsRank3Start",
    testCategory,
    5195
  )
end

function me.TestCombatEventEntanglingRootsRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEntanglingRootsRank4Start",
    testCategory,
    5196
  )
end

function me.TestCombatEventEntanglingRootsRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEntanglingRootsRank5Start",
    testCategory,
    9852
  )
end

function me.TestCombatEventEntanglingRootsRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEntanglingRootsRank6Start",
    testCategory,
    9853
  )
end

function me.TestCombatEventEntanglingRootsRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEntanglingRootsRank7Start",
    testCategory,
    26989
  )
end

function me.TestCombatEventHealingTouchRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank1Start",
    testCategory,
    5185
  )
end

function me.TestCombatEventHealingTouchRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank2Start",
    testCategory,
    5186
  )
end

function me.TestCombatEventHealingTouchRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank3Start",
    testCategory,
    5187
  )
end

function me.TestCombatEventHealingTouchRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank4Start",
    testCategory,
    5188
  )
end

function me.TestCombatEventHealingTouchRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank5Start",
    testCategory,
    5189
  )
end

function me.TestCombatEventHealingTouchRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank6Start",
    testCategory,
    6778
  )
end

function me.TestCombatEventHealingTouchRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank7Start",
    testCategory,
    8903
  )
end

function me.TestCombatEventHealingTouchRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank8Start",
    testCategory,
    9758
  )
end

function me.TestCombatEventHealingTouchRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank9Start",
    testCategory,
    9888
  )
end

function me.TestCombatEventHealingTouchRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank10Start",
    testCategory,
    9889
  )
end

function me.TestCombatEventHealingTouchRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank11Start",
    testCategory,
    25297
  )
end

function me.TestCombatEventHealingTouchRank12Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank12Start",
    testCategory,
    26978
  )
end

function me.TestCombatEventHealingTouchRank13Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingTouchRank13Start",
    testCategory,
    26979
  )
end

function me.TestCombatEventHibernateRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHibernateRank1Start",
    testCategory,
    2637
  )
end

function me.TestCombatEventHibernateRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHibernateRank2Start",
    testCategory,
    18657
  )
end

function me.TestCombatEventHibernateRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHibernateRank3Start",
    testCategory,
    18658
  )
end

function me.TestCombatEventRebirthRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRebirthRank1Start",
    testCategory,
    20484
  )
end

function me.TestCombatEventRebirthRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRebirthRank2Start",
    testCategory,
    20739
  )
end

function me.TestCombatEventRebirthRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRebirthRank3Start",
    testCategory,
    20742
  )
end

function me.TestCombatEventRebirthRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRebirthRank4Start",
    testCategory,
    20747
  )
end

function me.TestCombatEventRebirthRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRebirthRank5Start",
    testCategory,
    20748
  )
end

function me.TestCombatEventRebirthRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRebirthRank6Start",
    testCategory,
    26994
  )
end

function me.TestCombatEventRegrowthRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank1Start",
    testCategory,
    8936
  )
end

function me.TestCombatEventRegrowthRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank2Start",
    testCategory,
    8938
  )
end

function me.TestCombatEventRegrowthRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank3Start",
    testCategory,
    8939
  )
end

function me.TestCombatEventRegrowthRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank4Start",
    testCategory,
    8940
  )
end

function me.TestCombatEventRegrowthRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank5Start",
    testCategory,
    8941
  )
end

function me.TestCombatEventRegrowthRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank6Start",
    testCategory,
    9750
  )
end

function me.TestCombatEventRegrowthRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank7Start",
    testCategory,
    9856
  )
end

function me.TestCombatEventRegrowthRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank8Start",
    testCategory,
    9857
  )
end

function me.TestCombatEventRegrowthRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank9Start",
    testCategory,
    9858
  )
end

function me.TestCombatEventRegrowthRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventRegrowthRank10Start",
    testCategory,
    26980
  )
end

function me.TestCombatEventStarfireRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank1Start",
    testCategory,
    2912
  )
end

function me.TestCombatEventStarfireRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank2Start",
    testCategory,
    8949
  )
end

function me.TestCombatEventStarfireRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank3Start",
    testCategory,
    8950
  )
end

function me.TestCombatEventStarfireRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank4Start",
    testCategory,
    8951
  )
end

function me.TestCombatEventStarfireRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank5Start",
    testCategory,
    9875
  )
end

function me.TestCombatEventStarfireRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank6Start",
    testCategory,
    9876
  )
end

function me.TestCombatEventStarfireRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank7Start",
    testCategory,
    25298
  )
end

function me.TestCombatEventStarfireRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventStarfireRank8Start",
    testCategory,
    26986
  )
end

function me.TestCombatEventWrathRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank1Start",
    testCategory,
    5176
  )
end

function me.TestCombatEventWrathRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank2Start",
    testCategory,
    5177
  )
end

function me.TestCombatEventWrathRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank3Start",
    testCategory,
    5178
  )
end

function me.TestCombatEventWrathRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank4Start",
    testCategory,
    5179
  )
end

function me.TestCombatEventWrathRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank5Start",
    testCategory,
    5180
  )
end

function me.TestCombatEventWrathRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank6Start",
    testCategory,
    6780
  )
end

function me.TestCombatEventWrathRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank7Start",
    testCategory,
    8905
  )
end

function me.TestCombatEventWrathRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank8Start",
    testCategory,
    9912
  )
end

function me.TestCombatEventWrathRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank9Start",
    testCategory,
    26984
  )
end

function me.TestCombatEventWrathRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventWrathRank10Start",
    testCategory,
    26985
  )
end
