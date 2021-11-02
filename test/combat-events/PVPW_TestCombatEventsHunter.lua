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
mod.testCombatEventsHunter = me

me.tag = "TestCombatEventsHunter"

local testGroupName = "CombatEventsHunter"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneShotRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheBeastSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheCheetahSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheHawkRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheMonkeySuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfThePackSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheViperSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheWildRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheWildRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAspectOfTheWildRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConcussiveShotSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExplosiveTrapRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExplosiveTrapRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExplosiveTrapRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExplosiveTrapRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlareSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFreezingTrapRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFreezingTrapRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFreezingTrapRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostTrapSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHuntersMarkRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHuntersMarkRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHuntersMarkRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHuntersMarkRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolationTrapRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolationTrapRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolationTrapRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolationTrapRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolationTrapRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolationTrapRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMendPetRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMongooseBiteRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMongooseBiteRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMongooseBiteRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMongooseBiteRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMongooseBiteRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMultiShotRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMultiShotRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMultiShotRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMultiShotRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMultiShotRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMultiShotRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRapidFireApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRapidFireRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRaptorStrikeRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRevivePetSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScareBeastRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScareBeastRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScareBeastRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorpidStingSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSerpentStingRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSnakeTrapSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackBeastsSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackDemonsSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackDragonkinSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackElementalsSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackGiantsSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackHiddenSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackHumanoidsSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrackUndeadSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventViperStingRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventViperStingRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventViperStingRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventViperStingRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVolleyRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVolleyRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVolleyRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVolleyRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWingClipRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWingClipRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWingClipRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBestialWrathApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBestialWrathRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCounterattackRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCounterattackRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCounterattackRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCounterattackRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeterrenceApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeterrenceRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIntimidationApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIntimidationRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventReadinessSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScatterShotSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSilencingShotSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTheBeastWithinApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTheBeastWithinRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTrueshotAuraRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWyvernStingRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWyvernStingRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWyvernStingRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWyvernStingRank4Success)
end

function me.TestCombatEventArcaneShotRank1Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventArcaneShotRank1Success",
  testCategory,
  3044
)
end

function me.TestCombatEventArcaneShotRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank2Success",
    testCategory,
    14281
  )
end

function me.TestCombatEventArcaneShotRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank3Success",
    testCategory,
    14282
  )
end

function me.TestCombatEventArcaneShotRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank4Success",
    testCategory,
    14283
  )
end

function me.TestCombatEventArcaneShotRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank5Success",
    testCategory,
    14284
  )
end

function me.TestCombatEventArcaneShotRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank6Success",
    testCategory,
    14285
  )
end

function me.TestCombatEventArcaneShotRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank7Success",
    testCategory,
    14286
  )
end

function me.TestCombatEventArcaneShotRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank8Success",
    testCategory,
    14287
  )
end

function me.TestCombatEventArcaneShotRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneShotRank9Success",
    testCategory,
    27019
  )
end

function me.TestCombatEventAspectOfTheBeastSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheBeastSuccess",
    testCategory,
    13161
  )
end

function me.TestCombatEventAspectOfTheCheetahSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheCheetahSuccess",
    testCategory,
    5118
  )
end

function me.TestCombatEventAspectOfTheHawkRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheHawkRank1Success",
    testCategory,
    13165
  )
end

function me.TestCombatEventAspectOfTheHawkRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheHawkRank2Success",
    testCategory,
    14318
  )
end

function me.TestCombatEventAspectOfTheHawkRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheHawkRank3Success",
    testCategory,
    14319
  )
end

function me.TestCombatEventAspectOfTheHawkRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheHawkRank4Success",
    testCategory,
    14320
  )
end

function me.TestCombatEventAspectOfTheHawkRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheHawkRank5Success",
    testCategory,
    14321
  )
end

function me.TestCombatEventAspectOfTheHawkRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheHawkRank6Success",
    testCategory,
    14322
  )
end

function me.TestCombatEventAspectOfTheHawkRank7Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventAspectOfTheHawkRank7Success",
  testCategory,
  25296
)
end

function me.TestCombatEventAspectOfTheHawkRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheHawkRank8Success",
    testCategory,
    27044
  )
end

function me.TestCombatEventAspectOfTheMonkeySuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheMonkeySuccess",
    testCategory,
    13163
  )
end

function me.TestCombatEventAspectOfThePackSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfThePackSuccess",
    testCategory,
    13159
  )
end

function me.TestCombatEventAspectOfTheViperSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheViperSuccess",
    testCategory,
    34074
  )
end

function me.TestCombatEventAspectOfTheWildRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheWildRank1Success",
    testCategory,
    20043
  )
end

function me.TestCombatEventAspectOfTheWildRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheWildRank2Success",
    testCategory,
    20190
  )
end

function me.TestCombatEventAspectOfTheWildRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAspectOfTheWildRank3Success",
    testCategory,
    27045
  )
end

function me.TestCombatEventConcussiveShotSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConcussiveShotSuccess",
    testCategory,
    5116
  )
end

function me.TestCombatEventExplosiveTrapRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExplosiveTrapRank1Success",
    testCategory,
    13813
  )
end

function me.TestCombatEventExplosiveTrapRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExplosiveTrapRank2Success",
    testCategory,
    14316
  )
end

function me.TestCombatEventExplosiveTrapRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExplosiveTrapRank3Success",
    testCategory,
    14317
  )
end

function me.TestCombatEventExplosiveTrapRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExplosiveTrapRank4Success",
    testCategory,
    27025
  )
end

function me.TestCombatEventFlareSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlareSuccess",
    testCategory,
    1543
  )
end

function me.TestCombatEventFreezingTrapRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFreezingTrapRank1Success",
    testCategory,
    1499
  )
end

function me.TestCombatEventFreezingTrapRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFreezingTrapRank2Success",
    testCategory,
    14310
  )
end

function me.TestCombatEventFreezingTrapRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFreezingTrapRank3Success",
    testCategory,
    14311
  )
end

function me.TestCombatEventFrostTrapSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostTrapSuccess",
    testCategory,
    13809
  )
end

function me.TestCombatEventHuntersMarkRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHuntersMarkRank1Success",
    testCategory,
    1130
  )
end

function me.TestCombatEventHuntersMarkRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHuntersMarkRank2Success",
    testCategory,
    14323
  )
end

function me.TestCombatEventHuntersMarkRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHuntersMarkRank3Success",
    testCategory,
    14324
  )
end

function me.TestCombatEventHuntersMarkRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHuntersMarkRank4Success",
    testCategory,
    14325
  )
end

function me.TestCombatEventImmolationTrapRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolationTrapRank1Success",
    testCategory,
    13795
  )
end

function me.TestCombatEventImmolationTrapRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolationTrapRank2Success",
    testCategory,
    14302
  )
end

function me.TestCombatEventImmolationTrapRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolationTrapRank3Success",
    testCategory,
    14303
  )
end

function me.TestCombatEventImmolationTrapRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolationTrapRank4Success",
    testCategory,
    14304
  )
end

function me.TestCombatEventImmolationTrapRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolationTrapRank5Success",
    testCategory,
    14305
  )
end

function me.TestCombatEventImmolationTrapRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolationTrapRank6Success",
    testCategory,
    27023
  )
end

function me.TestCombatEventMendPetRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMendPetRank1Success",
    testCategory,
    136
  )
end

function me.TestCombatEventMendPetRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMendPetRank2Success",
    testCategory,
    3111
  )
end

function me.TestCombatEventMendPetRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMendPetRank3Success",
    testCategory,
    3661
  )
end

function me.TestCombatEventMendPetRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMendPetRank4Success",
    testCategory,
    3662
  )
end

function me.TestCombatEventMendPetRank5Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventMendPetRank5Success",
  testCategory,
  13542
)
end

function me.TestCombatEventMendPetRank6Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventMendPetRank6Success",
  testCategory,
  13543
)
end

function me.TestCombatEventMendPetRank7Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventMendPetRank7Success",
  testCategory,
  13544
)
end

function me.TestCombatEventMendPetRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMendPetRank8Success",
    testCategory,
    27046
  )
end

function me.TestCombatEventMongooseBiteRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMongooseBiteRank1Success",
    testCategory,
    1495
  )
end

function me.TestCombatEventMongooseBiteRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMongooseBiteRank2Success",
    testCategory,
    14269
  )
end

function me.TestCombatEventMongooseBiteRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMongooseBiteRank3Success",
    testCategory,
    14270
  )
end

function me.TestCombatEventMongooseBiteRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMongooseBiteRank4Success",
    testCategory,
    14271
  )
end

function me.TestCombatEventMongooseBiteRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMongooseBiteRank5Success",
    testCategory,
    36916
  )
end

function me.TestCombatEventMultiShotRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMultiShotRank1Success",
    testCategory,
    2643
  )
end

function me.TestCombatEventMultiShotRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMultiShotRank2Success",
    testCategory,
    14288
  )
end

function me.TestCombatEventMultiShotRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMultiShotRank3Success",
    testCategory,
    14289
  )
end
function me.TestCombatEventMultiShotRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMultiShotRank4Success",
    testCategory,
    14290
  )
end

function me.TestCombatEventMultiShotRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMultiShotRank5Success",
    testCategory,
    25294
  )
end

function me.TestCombatEventMultiShotRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMultiShotRank6Success",
    testCategory,
    27021
  )
end

function me.TestCombatEventRapidFireApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRapidFireApplied",
    testCategory,
    3045
  )
end

function me.TestCombatEventRapidFireRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRapidFireRemoved",
    testCategory,
    3045
  )
end

function me.TestCombatEventRaptorStrikeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank1Success",
    testCategory,
    2973
  )
end

function me.TestCombatEventRaptorStrikeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank2Success",
    testCategory,
    14260
  )
end

function me.TestCombatEventRaptorStrikeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank3Success",
    testCategory,
    14261
  )
end

function me.TestCombatEventRaptorStrikeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank4Success",
    testCategory,
    14262
  )
end

function me.TestCombatEventRaptorStrikeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank5Success",
    testCategory,
    14263
  )
end

function me.TestCombatEventRaptorStrikeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank6Success",
    testCategory,
    14264
  )
end

function me.TestCombatEventRaptorStrikeRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank7Success",
    testCategory,
    14265
  )
end

function me.TestCombatEventRaptorStrikeRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank8Success",
    testCategory,
    14266
  )
end

function me.TestCombatEventRaptorStrikeRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRaptorStrikeRank9Success",
    testCategory,
    27014
  )
end

function me.TestCombatEventRevivePetSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRevivePetSuccess",
    testCategory,
    982
  )
end

function me.TestCombatEventScareBeastRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScareBeastRank1Success",
    testCategory,
    1513
  )
end

function me.TestCombatEventScareBeastRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScareBeastRank2Success",
    testCategory,
    14326
  )
end

function me.TestCombatEventScareBeastRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScareBeastRank3Success",
    testCategory,
    14327
  )
end

function me.TestCombatEventScorpidStingSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorpidStingSuccess",
    testCategory,
    3043
  )
end

function me.TestCombatEventSerpentStingRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank1Success",
    testCategory,
    1978
  )
end


function me.TestCombatEventSerpentStingRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank2Success",
    testCategory,
    13549
  )
end

function me.TestCombatEventSerpentStingRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank3Success",
    testCategory,
    13550
  )
end

function me.TestCombatEventSerpentStingRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank4Success",
    testCategory,
    13551
  )
end

function me.TestCombatEventSerpentStingRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank5Success",
    testCategory,
    13552
  )
end

function me.TestCombatEventSerpentStingRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank6Success",
    testCategory,
    13553
  )
end

function me.TestCombatEventSerpentStingRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank7Success",
    testCategory,
    13554
  )
end

function me.TestCombatEventSerpentStingRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank8Success",
    testCategory,
    13555
  )
end

function me.TestCombatEventSerpentStingRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank9Success",
    testCategory,
    25295
  )
end

function me.TestCombatEventSerpentStingRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSerpentStingRank10Success",
    testCategory,
    27016
  )
end

function me.TestCombatEventSnakeTrapSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSnakeTrapSuccess",
    testCategory,
    34600
  )
end

function me.TestCombatEventTrackBeastsSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackBeastsSuccess",
    testCategory,
    1494
  )
end

function me.TestCombatEventTrackDemonsSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackDemonsSuccess",
    testCategory,
    19878
  )
end

function me.TestCombatEventTrackDragonkinSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackDragonkinSuccess",
    testCategory,
    19879
  )
end

function me.TestCombatEventTrackElementalsSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackElementalsSuccess",
    testCategory,
    19880
  )
end

function me.TestCombatEventTrackGiantsSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackGiantsSuccess",
    testCategory,
    19882
  )
end

function me.TestCombatEventTrackHiddenSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackHiddenSuccess",
    testCategory,
    19885
  )
end

function me.TestCombatEventTrackHumanoidsSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackHumanoidsSuccess",
    testCategory,
    19883
  )
end

function me.TestCombatEventTrackUndeadSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTrackUndeadSuccess",
    testCategory,
    19884
  )
end

function me.TestCombatEventViperStingRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventViperStingRank1Success",
    testCategory,
    3034
  )
end


function me.TestCombatEventViperStingRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventViperStingRank2Success",
    testCategory,
    14279
  )
end

function me.TestCombatEventViperStingRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventViperStingRank3Success",
    testCategory,
    14280
  )
end

function me.TestCombatEventViperStingRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventViperStingRank4Success",
    testCategory,
    27018
  )
end

function me.TestCombatEventVolleyRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVolleyRank1Success",
    testCategory,
    1510
  )
end

function me.TestCombatEventVolleyRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVolleyRank2Success",
    testCategory,
    14294
  )
end

function me.TestCombatEventVolleyRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVolleyRank3Success",
    testCategory,
    14295
  )
end

function me.TestCombatEventVolleyRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVolleyRank4Success",
    testCategory,
    27022
  )
end

function me.TestCombatEventWingClipRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWingClipRank1Success",
    testCategory,
    2974
  )
end
function me.TestCombatEventWingClipRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWingClipRank2Success",
    testCategory,
    14267
  )
end
function me.TestCombatEventWingClipRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWingClipRank3Success",
    testCategory,
    14268
  )
end

function me.TestCombatEventAimedShotRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAimedShotRank1Success",
    testCategory,
    19434
  )
end


function me.TestCombatEventAimedShotRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAimedShotRank2Success",
    testCategory,
    20900
  )
end

function me.TestCombatEventAimedShotRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAimedShotRank3Success",
    testCategory,
    20901
  )
end

function me.TestCombatEventAimedShotRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAimedShotRank4Success",
    testCategory,
    20902
  )
end

function me.TestCombatEventAimedShotRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAimedShotRank5Success",
    testCategory,
    20903
  )
end

function me.TestCombatEventAimedShotRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAimedShotRank6Success",
    testCategory,
    20904
  )
end

function me.TestCombatEventAimedShotRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAimedShotRank7Success",
    testCategory,
    27065
  )
end

function me.TestCombatEventBestialWrathApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBestialWrathApplied",
    testCategory,
    19574
  )
end

function me.TestCombatEventBestialWrathRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBestialWrathRemoved",
    testCategory,
    19574
  )
end

function me.TestCombatEventCounterattackRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCounterattackRank1Success",
    testCategory,
    19306
  )
end


function me.TestCombatEventCounterattackRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCounterattackRank2Success",
    testCategory,
    20909
  )
end

function me.TestCombatEventCounterattackRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCounterattackRank3Success",
    testCategory,
    20910
  )
end

function me.TestCombatEventCounterattackRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCounterattackRank4Success",
    testCategory,
    27067
  )
end

function me.TestCombatEventDeterrenceApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDeterrenceApplied",
    testCategory,
    19263
  )
end

function me.TestCombatEventDeterrenceRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDeterrenceRemoved",
    testCategory,
    19263
  )
end

function me.TestCombatEventIntimidationApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIntimidationApplied",
    testCategory,
    19577
  )
end

function me.TestCombatEventIntimidationRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIntimidationRemoved",
    testCategory,
    19577
  )
end

function me.TestCombatEventReadinessSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventReadinessSuccess",
    testCategory,
    23989
  )
end

function me.TestCombatEventScatterShotSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScatterShotSuccess",
    testCategory,
    19503
  )
end

function me.TestCombatEventSilencingShotSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSilencingShotSuccess",
    testCategory,
    34490
  )
end

function me.TestCombatEventTheBeastWithinApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTheBeastWithinApplied",
    testCategory,
    34692
  )
end

function me.TestCombatEventTheBeastWithinRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTheBeastWithinRemoved",
    testCategory,
    34692
  )
end

function me.TestCombatEventTrueshotAuraRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTrueshotAuraRank1Applied",
    testCategory,
    19506
  )
end

function me.TestCombatEventTrueshotAuraRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTrueshotAuraRank1Removed",
    testCategory,
    19506
  )
end

function me.TestCombatEventTrueshotAuraRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTrueshotAuraRank2Applied",
    testCategory,
    20905
  )
end

function me.TestCombatEventTrueshotAuraRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTrueshotAuraRank2Removed",
    testCategory,
    20905
  )
end

function me.TestCombatEventTrueshotAuraRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTrueshotAuraRank3Applied",
    testCategory,
    20906
  )
end

function me.TestCombatEventTrueshotAuraRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTrueshotAuraRank3Removed",
    testCategory,
    20906
  )
end

function me.TestCombatEventTrueshotAuraRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTrueshotAuraRank4Applied",
    testCategory,
    27066
  )
end

function me.TestCombatEventTrueshotAuraRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTrueshotAuraRank4Removed",
    testCategory,
    27066
  )
end

function me.TestCombatEventWyvernStingRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWyvernStingRank1Success",
    testCategory,
    19386
  )
end

function me.TestCombatEventWyvernStingRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWyvernStingRank2Success",
    testCategory,
    24132
  )
end

function me.TestCombatEventWyvernStingRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWyvernStingRank3Success",
    testCategory,
    24133
  )
end

function me.TestCombatEventWyvernStingRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWyvernStingRank4Success",
    testCategory,
    27068
  )
end
