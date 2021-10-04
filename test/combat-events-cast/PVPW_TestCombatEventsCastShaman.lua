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
mod.testCombatEventsCastShaman = me

me.tag = "TestCombatEventsCastShaman"

local testGroupName = "CombatEventsCastShaman"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.SHAMAN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank12Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank12Start)
end

function me.TestCombatEventAncestralSpiritRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAncestralSpiritRank1Start",
    testCategory,
    2008
  )
end

function me.TestCombatEventAncestralSpiritRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAncestralSpiritRank2Start",
    testCategory,
    20609
  )
end

function me.TestCombatEventAncestralSpiritRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAncestralSpiritRank3Start",
    testCategory,
    20610
  )
end

function me.TestCombatEventAncestralSpiritRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAncestralSpiritRank4Start",
    testCategory,
    20776
  )
end

function me.TestCombatEventAncestralSpiritRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAncestralSpiritRank5Start",
    testCategory,
    20777
  )
end

function me.TestCombatEventChainHealRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainHealRank1Start",
    testCategory,
    1064
  )
end

function me.TestCombatEventChainHealRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainHealRank2Start",
    testCategory,
    10622
  )
end

function me.TestCombatEventChainHealRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainHealRank3Start",
    testCategory,
    10623
  )
end

function me.TestCombatEventChainHealRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainHealRank4Start",
    testCategory,
    25422
  )
end

function me.TestCombatEventChainHealRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainHealRank5Start",
    testCategory,
    25423
  )
end

function me.TestCombatEventChainLightningRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainLightningRank1Start",
    testCategory,
    421
  )
end

function me.TestCombatEventChainLightningRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainLightningRank2Start",
    testCategory,
    930
  )
end

function me.TestCombatEventChainLightningRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainLightningRank3Start",
    testCategory,
    2860
  )
end

function me.TestCombatEventChainLightningRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainLightningRank4Start",
    testCategory,
    10605
  )
end

function me.TestCombatEventChainLightningRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainLightningRank5Start",
    testCategory,
    25439
  )
end

function me.TestCombatEventChainLightningRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventChainLightningRank6Start",
    testCategory,
    25442
  )
end

function me.TestCombatEventHealingWaveRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank1Start",
    testCategory,
    331
  )
end

function me.TestCombatEventHealingWaveRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank2Start",
    testCategory,
    332
  )
end

function me.TestCombatEventHealingWaveRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank3Start",
    testCategory,
    547
  )
end

function me.TestCombatEventHealingWaveRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank4Start",
    testCategory,
    913
  )
end

function me.TestCombatEventHealingWaveRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank5Start",
    testCategory,
    939
  )
end

function me.TestCombatEventHealingWaveRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank6Start",
    testCategory,
    959
  )
end

function me.TestCombatEventHealingWaveRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank7Start",
    testCategory,
    8005
  )
end

function me.TestCombatEventHealingWaveRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank8Start",
    testCategory,
    10395
  )
end

function me.TestCombatEventHealingWaveRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank9Start",
    testCategory,
    10396
  )
end

function me.TestCombatEventHealingWaveRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank10Start",
    testCategory,
    25357
  )
end

function me.TestCombatEventHealingWaveRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank11Start",
    testCategory,
    25391
  )
end

function me.TestCombatEventHealingWaveRank12Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHealingWaveRank12Start",
    testCategory,
    25396
  )
end

function me.TestCombatEventLesserHealingWaveRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealingWaveRank1Start",
    testCategory,
    8004
  )
end

function me.TestCombatEventLesserHealingWaveRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealingWaveRank2Start",
    testCategory,
    8008
  )
end

function me.TestCombatEventLesserHealingWaveRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealingWaveRank3Start",
    testCategory,
    8010
  )
end

function me.TestCombatEventLesserHealingWaveRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealingWaveRank4Start",
    testCategory,
    10466
  )
end

function me.TestCombatEventLesserHealingWaveRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealingWaveRank5Start",
    testCategory,
    10467
  )
end

function me.TestCombatEventLesserHealingWaveRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealingWaveRank6Start",
    testCategory,
    10468
  )
end

function me.TestCombatEventLesserHealingWaveRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLesserHealingWaveRank7Start",
    testCategory,
    25420
  )
end

function me.TestCombatEventLightningBoltRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank1Start",
    testCategory,
    403
  )
end

function me.TestCombatEventLightningBoltRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank2Start",
    testCategory,
    529
  )
end

function me.TestCombatEventLightningBoltRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank3Start",
    testCategory,
    548
  )
end

function me.TestCombatEventLightningBoltRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank4Start",
    testCategory,
    915
  )
end

function me.TestCombatEventLightningBoltRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank5Start",
    testCategory,
    943
  )
end

function me.TestCombatEventLightningBoltRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank6Start",
    testCategory,
    6041
  )
end

function me.TestCombatEventLightningBoltRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank7Start",
    testCategory,
    10391
  )
end

function me.TestCombatEventLightningBoltRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank8Start",
    testCategory,
    10392
  )
end

function me.TestCombatEventLightningBoltRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank9Start",
    testCategory,
    15207
  )
end

function me.TestCombatEventLightningBoltRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank10Start",
    testCategory,
    15208
  )
end

function me.TestCombatEventLightningBoltRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank11Start",
    testCategory,
    25448
  )
end

function me.TestCombatEventLightningBoltRank12Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventLightningBoltRank12Start",
    testCategory,
    25449
  )
end
