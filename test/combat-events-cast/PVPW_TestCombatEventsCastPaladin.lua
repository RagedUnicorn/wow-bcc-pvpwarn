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
mod.testCombatEventsCastPaladin = me

me.tag = "TestCombatEventsCastPaladin"

local testGroupName = "CombatEventsCastPaladin"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PALADIN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengersShieldRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengersShieldRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengersShieldRank3Start)
end

function me.TestCombatEventFlashOfLightRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashOfLightRank1Start",
    testCategory,
    19750
  )
end

function me.TestCombatEventFlashOfLightRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashOfLightRank2Start",
    testCategory,
    19939
  )
end

function me.TestCombatEventFlashOfLightRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashOfLightRank3Start",
    testCategory,
    19940
  )
end

function me.TestCombatEventFlashOfLightRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashOfLightRank4Start",
    testCategory,
    19941
  )
end

function me.TestCombatEventFlashOfLightRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashOfLightRank5Start",
    testCategory,
    19942
  )
end

function me.TestCombatEventFlashOfLightRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashOfLightRank6Start",
    testCategory,
    19943
  )
end

function me.TestCombatEventFlashOfLightRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlashOfLightRank7Start",
    testCategory,
    27137
  )
end

function me.TestCombatEventHammerOfWrathRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHammerOfWrathRank1Start",
    testCategory,
    24275
  )
end

function me.TestCombatEventHammerOfWrathRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHammerOfWrathRank2Start",
    testCategory,
    24274
  )
end

function me.TestCombatEventHammerOfWrathRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHammerOfWrathRank3Start",
    testCategory,
    24239
  )
end

function me.TestCombatEventHammerOfWrathRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHammerOfWrathRank4Start",
    testCategory,
    27180
  )
end

function me.TestCombatEventHolyLightRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank1Start",
    testCategory,
    635
  )
end

function me.TestCombatEventHolyLightRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank2Start",
    testCategory,
    639
  )
end

function me.TestCombatEventHolyLightRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank3Start",
    testCategory,
    647
  )
end

function me.TestCombatEventHolyLightRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank4Start",
    testCategory,
    1026
  )
end

function me.TestCombatEventHolyLightRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank5Start",
    testCategory,
    1042
  )
end

function me.TestCombatEventHolyLightRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank6Start",
    testCategory,
    3472
  )
end

function me.TestCombatEventHolyLightRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank7Start",
    testCategory,
    10328
  )
end

function me.TestCombatEventHolyLightRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank8Start",
    testCategory,
    10329
  )
end

function me.TestCombatEventHolyLightRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank9Start",
    testCategory,
    25292
  )
end

function me.TestCombatEventHolyLightRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank10Start",
    testCategory,
    27135
  )
end

function me.TestCombatEventHolyLightRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHolyLightRank11Start",
    testCategory,
    27136
  )
end

function me.TestCombatEventAvengersShieldRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAvengersShieldRank1Start",
    testCategory,
    31935
  )
end

function me.TestCombatEventAvengersShieldRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAvengersShieldRank2Start",
    testCategory,
    32699
  )
end

function me.TestCombatEventAvengersShieldRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAvengersShieldRank3Start",
    testCategory,
    32700
  )
end
