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
mod.testCombatEventsRogue = me

me.tag = "TestCombatEventsRogue"

local testGroupName = "CombatEventsRogue"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES_NEW.ROGUE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmbushRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmbushRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmbushRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmbushRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmbushRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmbushRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmbushRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAnestheticPoisonRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBackstabRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlindSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCheapShotSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCloakOfShadowsApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCloakOfShadowsRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCripplingPoisonRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCripplingPoisonRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyPoisonRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeadlyThrowSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDistractSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnvenomRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnvenomRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEvasionRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEvasionRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEvasionRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEvasionRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEviscerateRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExposeArmorRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExposeArmorRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExposeArmorRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExposeArmorRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExposeArmorRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventExposeArmorRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGarroteRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGougeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGougeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGougeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGougeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGougeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGougeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInstantPoisonRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventKickRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventKickRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventKickRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventKickRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventKickRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventKidneyShotRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventKidneyShotRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindNumbingPoisonRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindNumbingPoisonRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindNumbingPoisonRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRuptureRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRuptureRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRuptureRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRuptureRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRuptureRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRuptureRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRuptureRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSapRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSapRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSapRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShivRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSinisterStrikeRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSliceAndDiceRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSliceAndDiceRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSliceAndDiceRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSliceAndDiceRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSliceAndDiceRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSliceAndDiceRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSprintRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStealthRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStealthRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStealthRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStealthRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVanishRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVanishRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVanishRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWoundPoisonRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAdrenalineRushApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAdrenalineRushRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBladeFlurryApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBladeFlurryRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCheatDeathRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCheatDeathRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCheatDeathRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventColdBloodApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventColdBloodRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGhostlyStrikeApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGhostlyStrikeRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHemorrhageRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHemorrhageRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHemorrhageRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHemorrhageRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMutilateRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMutilateRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMutilateRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMutilateRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPremeditationSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPreparationSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRiposteSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowstepSuccess)
end

function me.TestCombatEventAmbushRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAmbushRank1Success",
    testCategory,
    8676
  )
end

function me.TestCombatEventAmbushRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAmbushRank2Success",
    testCategory,
    8724
  )
end

function me.TestCombatEventAmbushRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAmbushRank3Success",
    testCategory,
    8725
  )
end

function me.TestCombatEventAmbushRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAmbushRank4Success",
    testCategory,
    11267
  )
end

function me.TestCombatEventAmbushRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAmbushRank5Success",
    testCategory,
    11268
  )
end

function me.TestCombatEventAmbushRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAmbushRank6Success",
    testCategory,
    11269
  )
end

function me.TestCombatEventAmbushRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAmbushRank7Success",
    testCategory,
    27441
  )
end

function me.TestCombatEventAnestheticPoisonRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAnestheticPoisonRank1Success",
    testCategory,
    26785
  )
end

function me.TestCombatEventBackstabRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank1Success",
    testCategory,
    53
  )
end

function me.TestCombatEventBackstabRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank2Success",
    testCategory,
    2589
  )
end

function me.TestCombatEventBackstabRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank3Success",
    testCategory,
    2590
  )
end

function me.TestCombatEventBackstabRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank4Success",
    testCategory,
    2591
  )
end

function me.TestCombatEventBackstabRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank5Success",
    testCategory,
    8721
  )
end

function me.TestCombatEventBackstabRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank6Success",
    testCategory,
    11279
  )
end

function me.TestCombatEventBackstabRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank7Success",
    testCategory,
    11280
  )
end

function me.TestCombatEventBackstabRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank8Success",
    testCategory,
    11281
  )
end

function me.TestCombatEventBackstabRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank9Success",
    testCategory,
    25300
  )
end

function me.TestCombatEventBackstabRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBackstabRank10Success",
    testCategory,
    26863
  )
end

function me.TestCombatEventBlindSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlindSuccess",
    testCategory,
    2094
  )
end

function me.TestCombatEventCheapShotSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCheapShotSuccess",
    testCategory,
    1833
  )
end

function me.TestCombatEventCloakOfShadowsApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventCloakOfShadowsApplied",
    testCategory,
    31224
  )
end

function me.TestCombatEventCloakOfShadowsRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventCloakOfShadowsRemoved",
    testCategory,
    31224
  )
end

function me.TestCombatEventCripplingPoisonRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCripplingPoisonRank1Success",
    testCategory,
    3408
  )
end

function me.TestCombatEventCripplingPoisonRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCripplingPoisonRank2Success",
    testCategory,
    11202
  )
end

function me.TestCombatEventDeadlyPoisonRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyPoisonRank1Success",
    testCategory,
    2823
  )
end

function me.TestCombatEventDeadlyPoisonRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyPoisonRank2Success",
    testCategory,
    2824
  )
end

function me.TestCombatEventDeadlyPoisonRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyPoisonRank3Success",
    testCategory,
    11355
  )
end

function me.TestCombatEventDeadlyPoisonRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyPoisonRank4Success",
    testCategory,
    11356
  )
end

function me.TestCombatEventDeadlyPoisonRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyPoisonRank5Success",
    testCategory,
    25351
  )
end

function me.TestCombatEventDeadlyPoisonRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyPoisonRank6Success",
    testCategory,
    26967
  )
end

function me.TestCombatEventDeadlyPoisonRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyPoisonRank7Success",
    testCategory,
    27186
  )
end

function me.TestCombatEventDeadlyThrowSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeadlyThrowSuccess",
    testCategory,
    26679
  )
end

function me.TestCombatEventDistractSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDistractSuccess",
    testCategory,
    1725
  )
end

function me.TestCombatEventEnvenomRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEnvenomRank1Success",
    testCategory,
    32645
  )
end

function me.TestCombatEventEnvenomRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEnvenomRank2Success",
    testCategory,
    32684
  )
end

function me.TestCombatEventEvasionRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEvasionRank1Applied",
    testCategory,
    5277
  )
end

function me.TestCombatEventEvasionRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEvasionRank1Removed",
    testCategory,
    5277
  )
end

function me.TestCombatEventEvasionRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEvasionRank2Applied",
    testCategory,
    26669
  )
end

function me.TestCombatEventEvasionRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEvasionRank2Removed",
    testCategory,
    26669
  )
end

function me.TestCombatEventEviscerateRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank1Success",
    testCategory,
    2098
  )
end

function me.TestCombatEventEviscerateRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank2Success",
    testCategory,
    6760
  )
end

function me.TestCombatEventEviscerateRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank3Success",
    testCategory,
    6761
  )
end

function me.TestCombatEventEviscerateRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank4Success",
    testCategory,
    6762
  )
end

function me.TestCombatEventEviscerateRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank5Success",
    testCategory,
    8623
  )
end

function me.TestCombatEventEviscerateRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank6Success",
    testCategory,
    8624
  )
end

function me.TestCombatEventEviscerateRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank7Success",
    testCategory,
    11299
  )
end

function me.TestCombatEventEviscerateRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank8Success",
    testCategory,
    11300
  )
end

function me.TestCombatEventEviscerateRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank9Success",
    testCategory,
    31016
  )
end

function me.TestCombatEventEviscerateRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEviscerateRank10Success",
    testCategory,
    26865
  )
end


function me.TestCombatEventExposeArmorRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExposeArmorRank1Success",
    testCategory,
    8647
  )
end

function me.TestCombatEventExposeArmorRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExposeArmorRank2Success",
    testCategory,
    8649
  )
end

function me.TestCombatEventExposeArmorRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExposeArmorRank3Success",
    testCategory,
    8650
  )
end

function me.TestCombatEventExposeArmorRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExposeArmorRank4Success",
    testCategory,
    11197
  )
end

function me.TestCombatEventExposeArmorRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExposeArmorRank5Success",
    testCategory,
    11198
  )
end

function me.TestCombatEventExposeArmorRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventExposeArmorRank6Success",
    testCategory,
    26866
  )
end

function me.TestCombatEventGarroteRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank1Success",
    testCategory,
    703
  )
end

function me.TestCombatEventGarroteRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank2Success",
    testCategory,
    8631
  )
end

function me.TestCombatEventGarroteRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank3Success",
    testCategory,
    8632
  )
end

function me.TestCombatEventGarroteRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank4Success",
    testCategory,
    8633
  )
end

function me.TestCombatEventGarroteRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank5Success",
    testCategory,
    11289
  )
end

function me.TestCombatEventGarroteRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank6Success",
    testCategory,
    11290
  )
end

function me.TestCombatEventGarroteRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank7Success",
    testCategory,
    26839
  )
end

function me.TestCombatEventGarroteRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGarroteRank8Success",
    testCategory,
    26884
  )
end

function me.TestCombatEventGougeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGougeRank1Success",
    testCategory,
    1776
  )
end

function me.TestCombatEventGougeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGougeRank2Success",
    testCategory,
    1777
  )
end

function me.TestCombatEventGougeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGougeRank3Success",
    testCategory,
    8629
  )
end

function me.TestCombatEventGougeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGougeRank4Success",
    testCategory,
    11285
  )
end

function me.TestCombatEventGougeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGougeRank5Success",
    testCategory,
    11286
  )
end

function me.TestCombatEventGougeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGougeRank6Success",
    testCategory,
    38764
  )
end

function me.TestCombatEventInstantPoisonRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInstantPoisonRank1Success",
    testCategory,
    8679
  )
end

function me.TestCombatEventInstantPoisonRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInstantPoisonRank2Success",
    testCategory,
    8686
  )
end

function me.TestCombatEventInstantPoisonRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInstantPoisonRank3Success",
    testCategory,
    8688
  )
end

function me.TestCombatEventInstantPoisonRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInstantPoisonRank4Success",
    testCategory,
    11338
  )
end

function me.TestCombatEventInstantPoisonRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInstantPoisonRank5Success",
    testCategory,
    11339
  )
end

function me.TestCombatEventInstantPoisonRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInstantPoisonRank6Success",
    testCategory,
    11340
  )
end

function me.TestCombatEventInstantPoisonRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInstantPoisonRank7Success",
    testCategory,
    26891
  )
end

function me.TestCombatEventKickRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventKickRank1Success",
    testCategory,
    1766
  )
end

function me.TestCombatEventKickRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventKickRank2Success",
    testCategory,
    1767
  )
end

function me.TestCombatEventKickRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventKickRank3Success",
    testCategory,
    1768
  )
end

function me.TestCombatEventKickRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventKickRank4Success",
    testCategory,
    1769
  )
end

function me.TestCombatEventKickRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventKickRank5Success",
    testCategory,
    38768
  )
end

function me.TestCombatEventKidneyShotRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventKidneyShotRank1Success",
    testCategory,
    408
  )
end

function me.TestCombatEventKidneyShotRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventKidneyShotRank2Success",
    testCategory,
    8643
  )
end

function me.TestCombatEventMindNumbingPoisonRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindNumbingPoisonRank1Success",
    testCategory,
    5761
  )
end

function me.TestCombatEventMindNumbingPoisonRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindNumbingPoisonRank2Success",
    testCategory,
    8693
  )
end

function me.TestCombatEventMindNumbingPoisonRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindNumbingPoisonRank3Success",
    testCategory,
    11399
  )
end

function me.TestCombatEventRuptureRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRuptureRank1Success",
    testCategory,
    1943
  )
end

function me.TestCombatEventRuptureRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRuptureRank2Success",
    testCategory,
    8639
  )
end

function me.TestCombatEventRuptureRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRuptureRank3Success",
    testCategory,
    8640
  )
end

function me.TestCombatEventRuptureRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRuptureRank4Success",
    testCategory,
    11273
  )
end

function me.TestCombatEventRuptureRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRuptureRank5Success",
    testCategory,
    11274
  )
end

function me.TestCombatEventRuptureRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRuptureRank6Success",
    testCategory,
    11275
  )
end

function me.TestCombatEventRuptureRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRuptureRank7Success",
    testCategory,
    26867
  )
end

function me.TestCombatEventSapRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSapRank1Success",
    testCategory,
    6770
  )
end

function me.TestCombatEventSapRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSapRank2Success",
    testCategory,
    2070
  )
end

function me.TestCombatEventSapRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSapRank3Success",
    testCategory,
    11297
  )
end

function me.TestCombatEventShivRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShivRank1Success",
    testCategory,
    5938
  )
end

function me.TestCombatEventSinisterStrikeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank1Success",
    testCategory,
    1752
  )
end

function me.TestCombatEventSinisterStrikeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank2Success",
    testCategory,
    1757
  )
end

function me.TestCombatEventSinisterStrikeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank3Success",
    testCategory,
    1758
  )
end

function me.TestCombatEventSinisterStrikeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank4Success",
    testCategory,
    1759
  )
end

function me.TestCombatEventSinisterStrikeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank5Success",
    testCategory,
    1760
  )
end

function me.TestCombatEventSinisterStrikeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank6Success",
    testCategory,
    8621
  )
end

function me.TestCombatEventSinisterStrikeRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank7Success",
    testCategory,
    11293
  )
end

function me.TestCombatEventSinisterStrikeRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank8Success",
    testCategory,
    11294
  )
end

function me.TestCombatEventSinisterStrikeRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank9Success",
    testCategory,
    26861
  )
end

function me.TestCombatEventSinisterStrikeRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSinisterStrikeRank10Success",
    testCategory,
    26862
  )
end

function me.TestCombatEventSliceAndDiceRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSliceAndDiceRank1Applied",
    testCategory,
    5171
  )
end

function me.TestCombatEventSliceAndDiceRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSliceAndDiceRank1Removed",
    testCategory,
    5171
  )
end

function me.TestCombatEventSliceAndDiceRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventSliceAndDiceRank1Refresh",
    testCategory,
    5171
  )
end

function me.TestCombatEventSliceAndDiceRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSliceAndDiceRank2Applied",
    testCategory,
    6774
  )
end

function me.TestCombatEventSliceAndDiceRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSliceAndDiceRank2Removed",
    testCategory,
    6774
  )
end

function me.TestCombatEventSliceAndDiceRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventSliceAndDiceRank2Refresh",
    testCategory,
    6774
  )
end

function me.TestCombatEventSprintRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSprintRank1Applied",
    testCategory,
    2983
  )
end

function me.TestCombatEventSprintRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSprintRank1Removed",
    testCategory,
    2983
  )
end

function me.TestCombatEventSprintRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventSprintRank1Refresh",
    testCategory,
    2983
  )
end

function me.TestCombatEventSprintRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSprintRank2Applied",
    testCategory,
    8696
  )
end

function me.TestCombatEventSprintRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSprintRank2Removed",
    testCategory,
    8696
  )
end

function me.TestCombatEventSprintRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventSprintRank2Refresh",
    testCategory,
    8696
  )
end

function me.TestCombatEventSprintRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSprintRank3Applied",
    testCategory,
    11305
  )
end

function me.TestCombatEventSprintRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSprintRank3Removed",
    testCategory,
    11305
  )
end

function me.TestCombatEventSprintRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventSprintRank3Refresh",
    testCategory,
    11305
  )
end

function me.TestCombatEventStealthRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStealthRank1Success",
    testCategory,
    1784
  )
end

function me.TestCombatEventStealthRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStealthRank2Success",
    testCategory,
    1785
  )
end

function me.TestCombatEventStealthRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStealthRank3Success",
    testCategory,
    1786
  )
end

function me.TestCombatEventStealthRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStealthRank4Success",
    testCategory,
    1787
  )
end

function me.TestCombatEventVanishRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVanishRank1Success",
    testCategory,
    1856
  )
end

function me.TestCombatEventVanishRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVanishRank2Success",
    testCategory,
    1857
  )
end

function me.TestCombatEventVanishRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVanishRank3Success",
    testCategory,
    26889
  )
end

function me.TestCombatEventWoundPoisonRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWoundPoisonRank1Success",
    testCategory,
    13219
  )
end

function me.TestCombatEventWoundPoisonRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWoundPoisonRank2Success",
    testCategory,
    13225
  )
end

function me.TestCombatEventWoundPoisonRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWoundPoisonRank3Success",
    testCategory,
    13226
  )
end

function me.TestCombatEventWoundPoisonRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWoundPoisonRank4Success",
    testCategory,
    13227
  )
end

function me.TestCombatEventWoundPoisonRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWoundPoisonRank5Success",
    testCategory,
    27188
  )
end

function me.TestCombatEventAdrenalineRushApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAdrenalineRushApplied",
    testCategory,
    13750
  )
end

function me.TestCombatEventAdrenalineRushRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAdrenalineRushRemoved",
    testCategory,
    13750
  )
end

function me.TestCombatEventBladeFlurryApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBladeFlurryApplied",
    testCategory,
    13877
  )
end

function me.TestCombatEventBladeFlurryRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBladeFlurryRemoved",
    testCategory,
    13877
  )
end

function me.TestCombatEventCheatDeathRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCheatDeathRank1Success",
    testCategory,
    31228
  )
end

function me.TestCombatEventCheatDeathRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCheatDeathRank2Success",
    testCategory,
    31229
  )
end

function me.TestCombatEventCheatDeathRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCheatDeathRank3Success",
    testCategory,
    31230
  )
end

function me.TestCombatEventColdBloodApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventColdBloodApplied",
    testCategory,
    14177
  )
end

function me.TestCombatEventColdBloodRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventColdBloodRemoved",
    testCategory,
    14177
  )
end

function me.TestCombatEventGhostlyStrikeApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGhostlyStrikeApplied",
    testCategory,
    14278
  )
end

function me.TestCombatEventGhostlyStrikeRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGhostlyStrikeRemoved",
    testCategory,
    14278
  )
end

function me.TestCombatEventHemorrhageRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHemorrhageRank1Success",
    testCategory,
    16511
  )
end

function me.TestCombatEventHemorrhageRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHemorrhageRank2Success",
    testCategory,
    17347
  )
end

function me.TestCombatEventHemorrhageRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHemorrhageRank3Success",
    testCategory,
    17348
  )
end

function me.TestCombatEventHemorrhageRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHemorrhageRank4Success",
    testCategory,
    26864
  )
end

function me.TestCombatEventMutilateRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMutilateRank1Success",
    testCategory,
    1329
  )
end

function me.TestCombatEventMutilateRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMutilateRank2Success",
    testCategory,
    34411
  )
end

function me.TestCombatEventMutilateRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMutilateRank3Success",
    testCategory,
    34412
  )
end

function me.TestCombatEventMutilateRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMutilateRank4Success",
    testCategory,
    34413
  )
end

function me.TestCombatEventPremeditationSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPremeditationSuccess",
    testCategory,
    14183
  )
end

function me.TestCombatEventPreparationSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPreparationSuccess",
    testCategory,
    14185
  )
end

function me.TestCombatEventRiposteSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRiposteSuccess",
    testCategory,
    14251
  )
end

function me.TestCombatEventShadowstepSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowstepSuccess",
    testCategory,
    36554
  )
end
