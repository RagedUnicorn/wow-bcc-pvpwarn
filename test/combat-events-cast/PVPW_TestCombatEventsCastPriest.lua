--[[
  MIT License

  Copyright (c) 2022 Michael Wiesendanger

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
mod.testCombatEventsCastPriest = me

me.tag = "TestCombatEventsCastPriest"

local testGroupName = "CombatEventsCastPriest"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBindingHealRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMassDispelStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindControlRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindControlRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindControlRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank6Start)
end

function me.TestCombatEventBindingHealRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventBindingHealRank1Start",
    testCategory,
    32546
  )
end


function me.TestCombatEventFlashHealRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank1Start",
    testCategory,
    2061
  )
end

function me.TestCombatEventFlashHealRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank2Start",
    testCategory,
    9472
  )
end

function me.TestCombatEventFlashHealRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank3Start",
    testCategory,
    9473
  )
end

function me.TestCombatEventFlashHealRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank4Start",
    testCategory,
    9474
  )
end

function me.TestCombatEventFlashHealRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank5Start",
    testCategory,
    10915
  )
end

function me.TestCombatEventFlashHealRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank6Start",
    testCategory,
    10916
  )
end

function me.TestCombatEventFlashHealRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank7Start",
    testCategory,
    10917
  )
end

function me.TestCombatEventFlashHealRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank8Start",
    testCategory,
    25233
  )
end

function me.TestCombatEventFlashHealRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashHealRank9Start",
    testCategory,
    25235
  )
end

function me.TestCombatEventGreaterHealRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventGreaterHealRank1Start",
    testCategory,
    2060
  )
end

function me.TestCombatEventGreaterHealRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventGreaterHealRank2Start",
    testCategory,
    10963
  )
end

function me.TestCombatEventGreaterHealRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventGreaterHealRank3Start",
    testCategory,
    10964
  )
end

function me.TestCombatEventGreaterHealRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventGreaterHealRank4Start",
    testCategory,
    10965
  )
end

function me.TestCombatEventGreaterHealRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventGreaterHealRank5Start",
    testCategory,
    25314
  )
end

function me.TestCombatEventGreaterHealRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventGreaterHealRank6Start",
    testCategory,
    25210
  )
end

function me.TestCombatEventGreaterHealRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventGreaterHealRank7Start",
    testCategory,
    25213
  )
end

function me.TestCombatEventHealRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealRank1Start",
    testCategory,
    2054
  )
end

function me.TestCombatEventHealRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealRank2Start",
    testCategory,
    2055
  )
end

function me.TestCombatEventHealRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealRank3Start",
    testCategory,
    6063
  )
end

function me.TestCombatEventHealRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealRank4Start",
    testCategory,
    6064
  )
end

function me.TestCombatEventHolyFireRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank1Start",
    testCategory,
    14914
  )
end

function me.TestCombatEventHolyFireRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank2Start",
    testCategory,
    15262
  )
end

function me.TestCombatEventHolyFireRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank3Start",
    testCategory,
    15263
  )
end

function me.TestCombatEventHolyFireRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank4Start",
    testCategory,
    15264
  )
end

function me.TestCombatEventHolyFireRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank5Start",
    testCategory,
    15265
  )
end

function me.TestCombatEventHolyFireRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank6Start",
    testCategory,
    15266
  )
end

function me.TestCombatEventHolyFireRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank7Start",
    testCategory,
    15267
  )
end

function me.TestCombatEventHolyFireRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank8Start",
    testCategory,
    15261
  )
end

function me.TestCombatEventHolyFireRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyFireRank9Start",
    testCategory,
    25384
  )
end

function me.TestCombatEventLesserHealRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealRank1Start",
    testCategory,
    2050
  )
end

function me.TestCombatEventLesserHealRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealRank2Start",
    testCategory,
    2052
  )
end

function me.TestCombatEventLesserHealRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealRank3Start",
    testCategory,
    2053
  )
end

function me.TestCombatEventManaBurnRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventManaBurnRank1Start",
    testCategory,
    8129
  )
end

function me.TestCombatEventManaBurnRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventManaBurnRank2Start",
    testCategory,
    8131
  )
end

function me.TestCombatEventManaBurnRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventManaBurnRank3Start",
    testCategory,
    10874
  )
end

function me.TestCombatEventManaBurnRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventManaBurnRank4Start",
    testCategory,
    10875
  )
end

function me.TestCombatEventManaBurnRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventManaBurnRank5Start",
    testCategory,
    10876
  )
end

function me.TestCombatEventManaBurnRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventManaBurnRank6Start",
    testCategory,
    25379
  )
end

function me.TestCombatEventManaBurnRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventManaBurnRank7Start",
    testCategory,
    25380
  )
end

function me.TestCombatEventMassDispelStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMassDispelStart",
    testCategory,
    32375
  )
end

function me.TestCombatEventMindBlastRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank1Start",
    testCategory,
    8092
  )
end

function me.TestCombatEventMindBlastRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank2Start",
    testCategory,
    8102
  )
end

function me.TestCombatEventMindBlastRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank3Start",
    testCategory,
    8103
  )
end

function me.TestCombatEventMindBlastRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank4Start",
    testCategory,
    8104
  )
end

function me.TestCombatEventMindBlastRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank5Start",
    testCategory,
    8105
  )
end

function me.TestCombatEventMindBlastRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank6Start",
    testCategory,
    8106
  )
end

function me.TestCombatEventMindBlastRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank7Start",
    testCategory,
    10945
  )
end

function me.TestCombatEventMindBlastRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank8Start",
    testCategory,
    10946
  )
end

function me.TestCombatEventMindBlastRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank9Start",
    testCategory,
    10947
  )
end

function me.TestCombatEventMindBlastRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank10Start",
    testCategory,
    25372
  )
end

function me.TestCombatEventMindBlastRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindBlastRank11Start",
    testCategory,
    25375
  )
end

function me.TestCombatEventMindControlRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindControlRank1Start",
    testCategory,
    605
  )
end

function me.TestCombatEventMindControlRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindControlRank2Start",
    testCategory,
    10911
  )
end

function me.TestCombatEventMindControlRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventMindControlRank3Start",
    testCategory,
    10912
  )
end

function me.TestCombatEventPrayerOfHealingRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPrayerOfHealingRank1Start",
    testCategory,
    596
  )
end

function me.TestCombatEventPrayerOfHealingRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPrayerOfHealingRank2Start",
    testCategory,
    996
  )
end

function me.TestCombatEventPrayerOfHealingRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPrayerOfHealingRank3Start",
    testCategory,
    10960
  )
end

function me.TestCombatEventPrayerOfHealingRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPrayerOfHealingRank4Start",
    testCategory,
    10961
  )
end

function me.TestCombatEventPrayerOfHealingRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPrayerOfHealingRank5Start",
    testCategory,
    25316
  )
end

function me.TestCombatEventPrayerOfHealingRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPrayerOfHealingRank6Start",
    testCategory,
    25308
  )
end

function me.TestCombatEventResurrectionRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventResurrectionRank1Start",
    testCategory,
    2006
  )
end

function me.TestCombatEventResurrectionRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventResurrectionRank2Start",
    testCategory,
    2010
  )
end

function me.TestCombatEventResurrectionRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventResurrectionRank3Start",
    testCategory,
    10880
  )
end

function me.TestCombatEventResurrectionRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventResurrectionRank4Start",
    testCategory,
    10881
  )
end

function me.TestCombatEventResurrectionRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventResurrectionRank5Start",
    testCategory,
    20770
  )
end

function me.TestCombatEventResurrectionRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventResurrectionRank6Start",
    testCategory,
    25435
  )
end
