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
mod.testCombatEventsWarrior = me

me.tag = "TestCombatEventsWarrior"

local testGroupName = "CombatEventsWarrior"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES_NEW.WARRIOR.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBattleStanceApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkerRageApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkerRageRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkerStanceApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodrageApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodrageRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChargeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChargeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChargeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDefensiveStanceApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingShoutRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingShoutRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingShoutRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingShoutRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingShoutRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingShoutRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingShoutRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDisarmSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHamstringRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHamstringRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHamstringRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHamstringRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInterceptRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInterceptRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInterceptRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInterceptRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInterceptRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInterveneSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIntimidatingShoutSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventOverpowerRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventOverpowerRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventOverpowerRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventOverpowerRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPummelRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPummelRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRecklessnessApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRecklessnessRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetaliationApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetaliationRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldBashRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldBashRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldBashRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldBashRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldBlockApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldBlockRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldWallApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldWallRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellReflectionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellReflectionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSunderArmorRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSunderArmorRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSunderArmorRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSunderArmorRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSunderArmorRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWhirlwindSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConcussionBlowSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeathWishApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeathWishRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLastStandApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLastStandRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMortalStrikeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMortalStrikeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMortalStrikeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMortalStrikeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMortalStrikeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMortalStrikeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPiercingHowlSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRampageRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRampageRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRampageRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRampageRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRampageRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRampageRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSecondWindRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSecondWindRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSecondWindRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSecondWindRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldSlamRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldSlamRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldSlamRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldSlamRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldSlamRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShieldSlamRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSweepingStrikesApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSweepingStrikesRemoved)
end

function me.TestCombatEventBattleStanceApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBattleStanceApplied",
    testCategory,
    2457
  )
end

function me.TestCombatEventBerserkerRageApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBerserkerRageApplied",
    testCategory,
    18499
  )
end

function me.TestCombatEventBerserkerRageRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBerserkerRageRemoved",
    testCategory,
    18499
  )
end

function me.TestCombatEventBerserkerStanceApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBerserkerStanceApplied",
    testCategory,
    2458
  )
end

function me.TestCombatEventBloodrageApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBloodrageApplied",
    testCategory,
    2687
  )
end

function me.TestCombatEventBloodrageRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBloodrageRemoved",
    testCategory,
    2687
  )
end

function me.TestCombatEventChargeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChargeRank1Success",
    testCategory,
    100
  )
end

function me.TestCombatEventChargeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChargeRank2Success",
    testCategory,
    6178
  )
end

function me.TestCombatEventChargeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChargeRank3Success",
    testCategory,
    11578
  )
end

function me.TestCombatEventDefensiveStanceApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDefensiveStanceApplied",
    testCategory,
    71
  )
end

function me.TestCombatEventDemoralizingShoutRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingShoutRank1Success",
    testCategory,
    1160
  )
end

function me.TestCombatEventDemoralizingShoutRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingShoutRank2Success",
    testCategory,
    6190
  )
end

function me.TestCombatEventDemoralizingShoutRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingShoutRank3Success",
    testCategory,
    11554
  )
end

function me.TestCombatEventDemoralizingShoutRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingShoutRank4Success",
    testCategory,
    11555
  )
end

function me.TestCombatEventDemoralizingShoutRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingShoutRank5Success",
    testCategory,
    11556
  )
end

function me.TestCombatEventDemoralizingShoutRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingShoutRank6Success",
    testCategory,
    25202
  )
end

function me.TestCombatEventDemoralizingShoutRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingShoutRank7Success",
    testCategory,
    25203
  )
end

function me.TestCombatEventDisarmSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDisarmSuccess",
    testCategory,
    676
  )
end

function me.TestCombatEventHamstringRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHamstringRank1Success",
    testCategory,
    1715
  )
end

function me.TestCombatEventHamstringRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHamstringRank2Success",
    testCategory,
    7372
  )
end

function me.TestCombatEventHamstringRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHamstringRank3Success",
    testCategory,
    7373
  )
end

function me.TestCombatEventHamstringRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHamstringRank4Success",
    testCategory,
    25212
  )
end

function me.TestCombatEventInterceptRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInterceptRank1Success",
    testCategory,
    20252
  )
end

function me.TestCombatEventInterceptRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInterceptRank2Success",
    testCategory,
    20616
  )
end

function me.TestCombatEventInterceptRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInterceptRank3Success",
    testCategory,
    20617
  )
end

function me.TestCombatEventInterceptRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInterceptRank4Success",
    testCategory,
    25272
  )
end

function me.TestCombatEventInterceptRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInterceptRank5Success",
    testCategory,
    25275
  )
end

function me.TestCombatEventInterveneSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInterveneSuccess",
    testCategory,
    3411
  )
end

function me.TestCombatEventIntimidatingShoutSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventIntimidatingShoutSuccess",
    testCategory,
    5246
  )
end

function me.TestCombatEventOverpowerRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventOverpowerRank1Success",
    testCategory,
    7384
  )
end

function me.TestCombatEventOverpowerRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventOverpowerRank2Success",
    testCategory,
    7887
  )
end

function me.TestCombatEventOverpowerRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventOverpowerRank3Success",
    testCategory,
    11584
  )
end

function me.TestCombatEventOverpowerRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventOverpowerRank4Success",
    testCategory,
    11585
  )
end

function me.TestCombatEventPummelRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPummelRank1Success",
    testCategory,
    6552
  )
end

function me.TestCombatEventPummelRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPummelRank2Success",
    testCategory,
    6552
  )
end

function me.TestCombatEventRecklessnessApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRecklessnessApplied",
    testCategory,
    1719
  )
end

function me.TestCombatEventRecklessnessRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRecklessnessRemoved",
    testCategory,
    1719
  )
end

function me.TestCombatEventRetaliationApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRetaliationApplied",
    testCategory,
    20230
  )
end

function me.TestCombatEventRetaliationRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRetaliationRemoved",
    testCategory,
    20230
  )
end

function me.TestCombatEventShieldBashRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldBashRank1Success",
    testCategory,
    72
  )
end

function me.TestCombatEventShieldBashRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldBashRank2Success",
    testCategory,
    1671
  )
end

function me.TestCombatEventShieldBashRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldBashRank3Success",
    testCategory,
    1672
  )
end

function me.TestCombatEventShieldBashRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldBashRank4Success",
    testCategory,
    29704
  )
end

function me.TestCombatEventShieldBlockApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShieldBlockApplied",
    testCategory,
    2565
  )
end

function me.TestCombatEventShieldBlockRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShieldBlockRemoved",
    testCategory,
    2565
  )
end

function me.TestCombatEventShieldWallApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShieldWallApplied",
    testCategory,
    871
  )
end

function me.TestCombatEventShieldWallRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShieldWallRemoved",
    testCategory,
    871
  )
end

function me.TestCombatEventSpellReflectionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSpellReflectionApplied",
    testCategory,
    23920
  )
end

function me.TestCombatEventSpellReflectionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSpellReflectionRemoved",
    testCategory,
    23920
  )
end

function me.TestCombatEventSunderArmorRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSunderArmorRank1Success",
    testCategory,
    7386
  )
end

function me.TestCombatEventSunderArmorRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSunderArmorRank2Success",
    testCategory,
    7405
  )
end

function me.TestCombatEventSunderArmorRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSunderArmorRank3Success",
    testCategory,
    8380
  )
end

function me.TestCombatEventSunderArmorRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSunderArmorRank4Success",
    testCategory,
    11596
  )
end

function me.TestCombatEventSunderArmorRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSunderArmorRank5Success",
    testCategory,
    11597
  )
end

function me.TestCombatEventWhirlwindSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWhirlwindSuccess",
    testCategory,
    1680
  )
end

function me.TestCombatEventConcussionBlowSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConcussionBlowSuccess",
    testCategory,
    12809
  )
end

function me.TestCombatEventDeathWishApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDeathWishApplied",
    testCategory,
    12292
  )
end

function me.TestCombatEventDeathWishRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDeathWishRemoved",
    testCategory,
    12292
  )
end

function me.TestCombatEventLastStandApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLastStandApplied",
    testCategory,
    12975
  )
end

function me.TestCombatEventLastStandRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLastStandRemoved",
    testCategory,
    12975
  )
end

function me.TestCombatEventMortalStrikeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMortalStrikeRank1Success",
    testCategory,
    12294
  )
end

function me.TestCombatEventMortalStrikeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMortalStrikeRank2Success",
    testCategory,
    21551
  )
end

function me.TestCombatEventMortalStrikeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMortalStrikeRank3Success",
    testCategory,
    21552
  )
end

function me.TestCombatEventMortalStrikeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMortalStrikeRank4Success",
    testCategory,
    21553
  )
end

function me.TestCombatEventMortalStrikeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMortalStrikeRank5Success",
    testCategory,
    25248
  )
end

function me.TestCombatEventMortalStrikeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMortalStrikeRank6Success",
    testCategory,
    30330
  )
end

function me.TestCombatEventPiercingHowlSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPiercingHowlSuccess",
    testCategory,
    12323
  )
end

function me.TestCombatEventRampageRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRampageRank1Applied",
    testCategory,
    29801
  )
end

function me.TestCombatEventRampageRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRampageRank1Removed",
    testCategory,
    29801
  )
end

function me.TestCombatEventRampageRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRampageRank2Applied",
    testCategory,
    30030
  )
end

function me.TestCombatEventRampageRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRampageRank2Removed",
    testCategory,
    30030
  )
end

function me.TestCombatEventRampageRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRampageRank3Applied",
    testCategory,
    30033
  )
end

function me.TestCombatEventRampageRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRampageRank3Removed",
    testCategory,
    30033
  )
end

function me.TestCombatEventSecondWindRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSecondWindRank1Applied",
    testCategory,
    29834
  )
end

function me.TestCombatEventSecondWindRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSecondWindRank1Removed",
    testCategory,
    29834
  )
end

function me.TestCombatEventSecondWindRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSecondWindRank2Applied",
    testCategory,
    29838
  )
end

function me.TestCombatEventSecondWindRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSecondWindRank2Removed",
    testCategory,
    29838
  )
end

function me.TestCombatEventShieldSlamRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldSlamRank1Success",
    testCategory,
    23922
  )
end

function me.TestCombatEventShieldSlamRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldSlamRank2Success",
    testCategory,
    23923
  )
end

function me.TestCombatEventShieldSlamRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldSlamRank3Success",
    testCategory,
    23924
  )
end

function me.TestCombatEventShieldSlamRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldSlamRank4Success",
    testCategory,
    23925
  )
end

function me.TestCombatEventShieldSlamRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldSlamRank5Success",
    testCategory,
    25258
  )
end

function me.TestCombatEventShieldSlamRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShieldSlamRank6Success",
    testCategory,
    30356
  )
end

function me.TestCombatEventSweepingStrikesApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSweepingStrikesApplied",
    testCategory,
    12328
  )
end

function me.TestCombatEventSweepingStrikesRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSweepingStrikesRemoved",
    testCategory,
    12328
  )
end
