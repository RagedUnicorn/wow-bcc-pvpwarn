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
mod.testCombatEventsCastMage = me

me.tag = "TestCombatEventsCastMage"

local testGroupName = "CombatEventsCastMage"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MAGE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBlastStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaAgateStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaCitrineStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaEmeraldStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaJadeStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaRubyStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank12Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank12Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank13Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank14Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphPigRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphTurtleRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank10Start)
end

function me.TestCombatEventArcaneBlastStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventArcaneBlastStart",
    testCategory,
    30451
  )
end

function me.TestCombatEventConjureFoodRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank1Start",
    testCategory,
    587
  )
end

function me.TestCombatEventConjureFoodRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank2Start",
    testCategory,
    597
  )
end

function me.TestCombatEventConjureFoodRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank3Start",
    testCategory,
    990
  )
end

function me.TestCombatEventConjureFoodRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank4Start",
    testCategory,
    6129
  )
end

function me.TestCombatEventConjureFoodRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank5Start",
    testCategory,
    10144
  )
end

function me.TestCombatEventConjureFoodRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank6Start",
    testCategory,
    10145
  )
end

function me.TestCombatEventConjureFoodRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank7Start",
    testCategory,
    28612
  )
end

function me.TestCombatEventConjureFoodRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureFoodRank8Start",
    testCategory,
    33717
  )
end

function me.TestCombatEventConjureManaAgateStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureManaAgateStart",
    testCategory,
    759
  )
end

function me.TestCombatEventConjureManaCitrineStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureManaCitrineStart",
    testCategory,
    10053
  )
end

function me.TestCombatEventConjureManaEmeraldStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureManaEmeraldStart",
    testCategory,
    27101
  )
end

function me.TestCombatEventConjureManaJadeStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureManaJadeStart",
    testCategory,
    3552
  )
end

function me.TestCombatEventConjureManaRubyStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureManaRubyStart",
    testCategory,
    10054
  )
end

function me.TestCombatEventConjureWaterRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank1Start",
    testCategory,
    5504
  )
end

function me.TestCombatEventConjureWaterRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank2Start",
    testCategory,
    5505
  )
end

function me.TestCombatEventConjureWaterRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank3Start",
    testCategory,
    5506
  )
end

function me.TestCombatEventConjureWaterRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank4Start",
    testCategory,
    6127
  )
end

function me.TestCombatEventConjureWaterRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank5Start",
    testCategory,
    10138
  )
end

function me.TestCombatEventConjureWaterRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank6Start",
    testCategory,
    10139
  )
end

function me.TestCombatEventConjureWaterRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank7Start",
    testCategory,
    10140
  )
end

function me.TestCombatEventConjureWaterRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank8Start",
    testCategory,
    37420
  )
end

function me.TestCombatEventConjureWaterRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventConjureWaterRank9Start",
    testCategory,
    27090
  )
end

function me.TestCombatEventFireballRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank1Start",
    testCategory,
    133
  )
end

function me.TestCombatEventFireballRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank2Start",
    testCategory,
    143
  )
end

function me.TestCombatEventFireballRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank3Start",
    testCategory,
    145
  )
end

function me.TestCombatEventFireballRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank4Start",
    testCategory,
    3140
  )
end

function me.TestCombatEventFireballRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank5Start",
    testCategory,
    8400
  )
end

function me.TestCombatEventFireballRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank6Start",
    testCategory,
    8401
  )
end

function me.TestCombatEventFireballRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank7Start",
    testCategory,
    8402
  )
end

function me.TestCombatEventFireballRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank8Start",
    testCategory,
    10148
  )
end

function me.TestCombatEventFireballRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank9Start",
    testCategory,
    10149
  )
end

function me.TestCombatEventFireballRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank10Start",
    testCategory,
    10150
  )
end

function me.TestCombatEventFireballRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank11Start",
    testCategory,
    10151
  )
end

function me.TestCombatEventFireballRank12Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFireballRank12Start",
    testCategory,
    25306
  )
end

function me.TestCombatEventFlamestrikeRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlamestrikeRank1Start",
    testCategory,
    2120
  )
end

function me.TestCombatEventFlamestrikeRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlamestrikeRank2Start",
    testCategory,
    2121
  )
end

function me.TestCombatEventFlamestrikeRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlamestrikeRank3Start",
    testCategory,
    8422
  )
end

function me.TestCombatEventFlamestrikeRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlamestrikeRank4Start",
    testCategory,
    8423
  )
end

function me.TestCombatEventFlamestrikeRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlamestrikeRank5Start",
    testCategory,
    10215
  )
end

function me.TestCombatEventFlamestrikeRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlamestrikeRank6Start",
    testCategory,
    10216
  )
end

function me.TestCombatEventFlamestrikeRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFlamestrikeRank7Start",
    testCategory,
    27086
  )
end

function me.TestCombatEventFrostboltRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank1Start",
    testCategory,
    116
  )
end

function me.TestCombatEventFrostboltRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank2Start",
    testCategory,
    205
  )
end

function me.TestCombatEventFrostboltRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank3Start",
    testCategory,
    837
  )
end

function me.TestCombatEventFrostboltRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank4Start",
    testCategory,
    7322
  )
end

function me.TestCombatEventFrostboltRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank5Start",
    testCategory,
    8406
  )
end

function me.TestCombatEventFrostboltRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank6Start",
    testCategory,
    8407
  )
end

function me.TestCombatEventFrostboltRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank7Start",
    testCategory,
    8408
  )
end

function me.TestCombatEventFrostboltRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank8Start",
    testCategory,
    10179
  )
end

function me.TestCombatEventFrostboltRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank9Start",
    testCategory,
    10180
  )
end

function me.TestCombatEventFrostboltRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank10Start",
    testCategory,
    10181
  )
end

function me.TestCombatEventFrostboltRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank11Start",
    testCategory,
    25304
  )
end

function me.TestCombatEventFrostboltRank12Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank12Start",
    testCategory,
    27071
  )
end

function me.TestCombatEventFrostboltRank13Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank13Start",
    testCategory,
    27072
  )
end

function me.TestCombatEventFrostboltRank14Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFrostboltRank14Start",
    testCategory,
    38697
  )
end

function me.TestCombatEventPolymorphRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPolymorphRank1Start",
    testCategory,
    118
  )
end

function me.TestCombatEventPolymorphRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPolymorphRank2Start",
    testCategory,
    12824
  )
end

function me.TestCombatEventPolymorphRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPolymorphRank3Start",
    testCategory,
    12825
  )
end

function me.TestCombatEventPolymorphRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPolymorphRank4Start",
    testCategory,
    12826
  )
end

function me.TestCombatEventPolymorphPigRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPolymorphPigRank1Start",
    testCategory,
    28272
  )
end

function me.TestCombatEventPolymorphTurtleRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPolymorphTurtleRank1Start",
    testCategory,
    28271
  )
end

function me.TestCombatEventScorchRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank1Start",
    testCategory,
    2948
  )
end

function me.TestCombatEventScorchRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank2Start",
    testCategory,
    8444
  )
end

function me.TestCombatEventScorchRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank3Start",
    testCategory,
    8445
  )
end

function me.TestCombatEventScorchRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank4Start",
    testCategory,
    8446
  )
end

function me.TestCombatEventScorchRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank5Start",
    testCategory,
    10205
  )
end

function me.TestCombatEventScorchRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank6Start",
    testCategory,
    10206
  )
end

function me.TestCombatEventScorchRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank7Start",
    testCategory,
    10207
  )
end

function me.TestCombatEventScorchRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank8Start",
    testCategory,
    27073
  )
end

function me.TestCombatEventScorchRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScorchRank9Start",
    testCategory,
    27074
  )
end

function me.TestCombatEventPyroblastRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank1Start",
    testCategory,
    11366
  )
end

function me.TestCombatEventPyroblastRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank2Start",
    testCategory,
    12505
  )
end

function me.TestCombatEventPyroblastRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank3Start",
    testCategory,
    12522
  )
end

function me.TestCombatEventPyroblastRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank4Start",
    testCategory,
    12523
  )
end

function me.TestCombatEventPyroblastRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank5Start",
    testCategory,
    12524
  )
end

function me.TestCombatEventPyroblastRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank6Start",
    testCategory,
    12525
  )
end

function me.TestCombatEventPyroblastRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank7Start",
    testCategory,
    12526
  )
end

function me.TestCombatEventPyroblastRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank8Start",
    testCategory,
    18809
  )
end

function me.TestCombatEventPyroblastRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank9Start",
    testCategory,
    27132
  )
end

function me.TestCombatEventPyroblastRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventPyroblastRank10Start",
    testCategory,
    33938
  )
end
