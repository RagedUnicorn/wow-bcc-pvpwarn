--[[
  MIT License

  Copyright (c) 2023 Michael Wiesendanger

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
mod.testCombatEventsCastWarlock = me

me.tag = "TestCombatEventsCastWarlock"

local testGroupName = "CombatEventsCastWarlock"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBanishRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBanishRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEyeOfKilroggStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHowlOfTerrorRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHowlOfTerrorRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIncinerateRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIncinerateRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSeedOfCorruptionRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank7Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank8Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank9Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank10Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank11Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonFelhunterStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonImpStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonSuccubusStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonVoidwalkerStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowfuryRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowfuryRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowfuryRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonFelguardStart)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnstableAfflictionRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnstableAfflictionRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnstableAfflictionRank3Start)
end

function me.TestCombatEventBanishRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventBanishRank1Start",
    testCategory,
    710
  )
end

function me.TestCombatEventBanishRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventBanishRank2Start",
    testCategory,
    18647
  )
end

function me.TestCombatEventCreateFirestoneRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateFirestoneRank1Start",
    testCategory,
    6366
  )
end

function me.TestCombatEventCreateFirestoneRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateFirestoneRank2Start",
    testCategory,
    17951
  )
end

function me.TestCombatEventCreateFirestoneRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateFirestoneRank3Start",
    testCategory,
    17952
  )
end

function me.TestCombatEventCreateFirestoneRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateFirestoneRank4Start",
    testCategory,
    17953
  )
end

function me.TestCombatEventCreateFirestoneRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateFirestoneRank5Start",
    testCategory,
    27250
  )
end

function me.TestCombatEventCreateSoulstoneRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSoulstoneRank1Start",
    testCategory,
    693
  )
end

function me.TestCombatEventCreateSoulstoneRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSoulstoneRank2Start",
    testCategory,
    20752
  )
end

function me.TestCombatEventCreateSoulstoneRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSoulstoneRank3Start",
    testCategory,
    20755
  )
end

function me.TestCombatEventCreateSoulstoneRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSoulstoneRank4Start",
    testCategory,
    20756
  )
end

function me.TestCombatEventCreateSoulstoneRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSoulstoneRank5Start",
    testCategory,
    20757
  )
end

function me.TestCombatEventCreateSoulstoneRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSoulstoneRank6Start",
    testCategory,
    27238
  )
end

function me.TestCombatEventCreateSpellstoneRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSpellstoneRank1Start",
    testCategory,
    2362
  )
end

function me.TestCombatEventCreateSpellstoneRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSpellstoneRank2Start",
    testCategory,
    17727
  )
end

function me.TestCombatEventCreateSpellstoneRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSpellstoneRank3Start",
    testCategory,
    17728
  )
end

function me.TestCombatEventCreateSpellstoneRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventCreateSpellstoneRank4Start",
    testCategory,
    28172
  )
end

function me.TestCombatEventEyeOfKilroggStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventEyeOfKilroggStart",
    testCategory,
    126
  )
end

function me.TestCombatEventFearRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFearRank1Start",
    testCategory,
    5782
  )
end

function me.TestCombatEventFearRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFearRank2Start",
    testCategory,
    6213
  )
end

function me.TestCombatEventFearRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventFearRank3Start",
    testCategory,
    6215
  )
end

function me.TestCombatEventHowlOfTerrorRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHowlOfTerrorRank1Start",
    testCategory,
    5484
  )
end

function me.TestCombatEventHowlOfTerrorRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventHowlOfTerrorRank2Start",
    testCategory,
    17928
  )
end

function me.TestCombatEventImmolateRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank1Start",
    testCategory,
    348
  )
end

function me.TestCombatEventImmolateRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank2Start",
    testCategory,
    707
  )
end

function me.TestCombatEventImmolateRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank3Start",
    testCategory,
    1094
  )
end

function me.TestCombatEventImmolateRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank4Start",
    testCategory,
    2941
  )
end

function me.TestCombatEventImmolateRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank5Start",
    testCategory,
    11665
  )
end

function me.TestCombatEventImmolateRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank6Start",
    testCategory,
    11667
  )
end

function me.TestCombatEventImmolateRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank7Start",
    testCategory,
    11668
  )
end

function me.TestCombatEventImmolateRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank8Start",
    testCategory,
    25309
  )
end

function me.TestCombatEventImmolateRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventImmolateRank9Start",
    testCategory,
    27215
  )
end

function me.TestCombatEventIncinerateRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventIncinerateRank1Start",
    testCategory,
    29722
  )
end

function me.TestCombatEventIncinerateRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventIncinerateRank2Start",
    testCategory,
    32231
  )
end

function me.TestCombatEventSearingPainRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank1Start",
    testCategory,
    5676
  )
end

function me.TestCombatEventSearingPainRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank2Start",
    testCategory,
    17919
  )
end

function me.TestCombatEventSearingPainRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank3Start",
    testCategory,
    17920
  )
end

function me.TestCombatEventSearingPainRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank4Start",
    testCategory,
    17921
  )
end

function me.TestCombatEventSearingPainRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank5Start",
    testCategory,
    17922
  )
end

function me.TestCombatEventSearingPainRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank6Start",
    testCategory,
    17923
  )
end

function me.TestCombatEventSearingPainRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank7Start",
    testCategory,
    27210
  )
end

function me.TestCombatEventSearingPainRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSearingPainRank8Start",
    testCategory,
    30459
  )
end

function me.TestCombatEventSeedOfCorruptionRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSeedOfCorruptionRank1Start",
    testCategory,
    27243
  )
end

function me.TestCombatEventShadowBoltRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank1Start",
    testCategory,
    686
  )
end

function me.TestCombatEventShadowBoltRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank2Start",
    testCategory,
    695
  )
end

function me.TestCombatEventShadowBoltRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank3Start",
    testCategory,
    705
  )
end

function me.TestCombatEventShadowBoltRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank4Start",
    testCategory,
    1088
  )
end

function me.TestCombatEventShadowBoltRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank5Start",
    testCategory,
    1106
  )
end

function me.TestCombatEventShadowBoltRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank6Start",
    testCategory,
    7641
  )
end

function me.TestCombatEventShadowBoltRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank7Start",
    testCategory,
    11659
  )
end

function me.TestCombatEventShadowBoltRank8Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank8Start",
    testCategory,
    11660
  )
end

function me.TestCombatEventShadowBoltRank9Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank9Start",
    testCategory,
    11661
  )
end

function me.TestCombatEventShadowBoltRank10Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank10Start",
    testCategory,
    25307
  )
end

function me.TestCombatEventShadowBoltRank11Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowBoltRank11Start",
    testCategory,
    27209
  )
end

function me.TestCombatEventSoulFireRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSoulFireRank1Start",
    testCategory,
    6353
  )
end

function me.TestCombatEventSoulFireRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSoulFireRank2Start",
    testCategory,
    17924
  )
end

function me.TestCombatEventSoulFireRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSoulFireRank3Start",
    testCategory,
    27211
  )
end

function me.TestCombatEventSoulFireRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSoulFireRank4Start",
    testCategory,
    30545
  )
end

function me.TestCombatEventSummonFelhunterStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSummonFelhunterStart",
    testCategory,
    691
  )
end

function me.TestCombatEventSummonImpStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSummonImpStart",
    testCategory,
    688
  )
end

function me.TestCombatEventSummonSuccubusStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSummonSuccubusStart",
    testCategory,
    712
  )
end

function me.TestCombatEventSummonVoidwalkerStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSummonVoidwalkerStart",
    testCategory,
    697
  )
end

function me.TestCombatEventShadowfuryRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowfuryRank1Start",
    testCategory,
    30283
  )
end

function me.TestCombatEventShadowfuryRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowfuryRank2Start",
    testCategory,
    30413
  )
end

function me.TestCombatEventShadowfuryRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventShadowfuryRank3Start",
    testCategory,
    30414
  )
end

function me.TestCombatEventSummonFelguardStart()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSummonFelguardStart",
    testCategory,
    30146
  )
end

function me.TestCombatEventUnstableAfflictionRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventUnstableAfflictionRank1Start",
    testCategory,
    30108
  )
end

function me.TestCombatEventUnstableAfflictionRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventUnstableAfflictionRank2Start",
    testCategory,
    30404
  )
end

function me.TestCombatEventUnstableAfflictionRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventUnstableAfflictionRank3Start",
    testCategory,
    30405
  )
end
