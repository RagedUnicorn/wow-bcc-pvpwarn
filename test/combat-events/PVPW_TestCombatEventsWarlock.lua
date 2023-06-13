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
mod.testCombatEventsWarlock = me

me.tag = "TestCombatEventsWarlock"

local testGroupName = "CombatEventsWarlock"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBanishRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBanishRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCorruptionRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateFirestoneRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSoulstoneRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulstoneResurrectionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulstoneResurrectionRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulstoneResurrectionRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulstoneResurrectionRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulstoneResurrectionRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulstoneResurrectionRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCreateSpellstoneRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellstoneRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellstoneRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellstoneRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellstoneRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellstoneRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfAgonyRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfAgonyRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfAgonyRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfAgonyRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfAgonyRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfAgonyRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfAgonyRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfRecklessnessRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfRecklessnessRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfRecklessnessRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfRecklessnessRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfRecklessnessRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfTheElementsRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfTheElementsRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfTheElementsRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfTheElementsRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfTonguesRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfTonguesRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfWeaknessRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeathCoilRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeathCoilRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeathCoilRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDeathCoilRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonArmorRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonSkinRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonSkinRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonSkinRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonSkinRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonSkinRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonSkinRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDetectInvisibilityApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDetectInvisibilityRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDetectInvisibilityRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainLifeRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainManaRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainManaRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainManaRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainManaRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainManaRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainSoulRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainSoulRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainSoulRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainSoulRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDrainSoulRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEyeOfKilroggSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelArmorRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelArmorRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelArmorRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelArmorRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelArmorRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelArmorRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealthFunnelRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHellfireRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHellfireRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHellfireRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHellfireRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHowlOfTerrorRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHowlOfTerrorRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventImmolateRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIncinerateRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIncinerateRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifeTapRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifeTapRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifeTapRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifeTapRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifeTapRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifeTapRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifeTapRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRainOfFireRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRainOfFireRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRainOfFireRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRainOfFireRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRainOfFireRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRitualOfSoulsRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRitualOfSummoningSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingPainRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSeedOfCorruptionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowBoltRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWardRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulFireRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonFelhunterSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonImpSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonSuccubusSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonVoidwalkerSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnendingBreathApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnendingBreathRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnendingBreathRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyCurseApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyCurseRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConflagrateRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConflagrateRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConflagrateRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConflagrateRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConflagrateRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConflagrateRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurseOfExhaustionSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDarkPactRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDarkPactRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDarkPactRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDarkPactRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemonicSacrificeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelDominationApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelDominationRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNetherProtectionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNetherProtectionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNetherProtectionRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightfallRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightfallRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightfallRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightfallRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightfallRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightfallRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowburnRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowfuryRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowfuryRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowfuryRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSiphonLifeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSiphonLifeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSiphonLifeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSiphonLifeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSiphonLifeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSiphonLifeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulLinkApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSoulLinkRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonFelguardSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnstableAfflictionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnstableAfflictionRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUnstableAfflictionRank3Success)
end

function me.TestCombatEventBanishRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBanishRank1Success",
    testCategory,
    710
  )
end

function me.TestCombatEventBanishRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBanishRank2Success",
    testCategory,
    18647
  )
end

function me.TestCombatEventCorruptionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank1Success",
    testCategory,
    172
  )
end

function me.TestCombatEventCorruptionRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank2Success",
    testCategory,
    6222
  )
end

function me.TestCombatEventCorruptionRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank3Success",
    testCategory,
    6223
  )
end

function me.TestCombatEventCorruptionRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank4Success",
    testCategory,
    7648
  )
end

function me.TestCombatEventCorruptionRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank5Success",
    testCategory,
    11671
  )
end

function me.TestCombatEventCorruptionRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank6Success",
    testCategory,
    11672
  )
end

function me.TestCombatEventCorruptionRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank7Success",
    testCategory,
    25311
  )
end

function me.TestCombatEventCorruptionRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCorruptionRank8Success",
    testCategory,
    27216
  )
end

function me.TestCombatEventCreateFirestoneRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateFirestoneRank1Success",
    testCategory,
    6366
  )
end

function me.TestCombatEventCreateFirestoneRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateFirestoneRank2Success",
    testCategory,
    17951
  )
end

function me.TestCombatEventCreateFirestoneRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateFirestoneRank3Success",
    testCategory,
    17952
  )
end

function me.TestCombatEventCreateFirestoneRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateFirestoneRank4Success",
    testCategory,
    17953
  )
end

function me.TestCombatEventCreateFirestoneRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateFirestoneRank5Success",
    testCategory,
    27250
  )
end

function me.TestCombatEventCreateSoulstoneRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSoulstoneRank1Success",
    testCategory,
    693
  )
end

function me.TestCombatEventCreateSoulstoneRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSoulstoneRank2Success",
    testCategory,
    20752
  )
end

function me.TestCombatEventCreateSoulstoneRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSoulstoneRank3Success",
    testCategory,
    20755
  )
end

function me.TestCombatEventCreateSoulstoneRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSoulstoneRank4Success",
    testCategory,
    20756
  )
end

function me.TestCombatEventCreateSoulstoneRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSoulstoneRank5Success",
    testCategory,
    20757
  )
end

function me.TestCombatEventCreateSoulstoneRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSoulstoneRank6Success",
    testCategory,
    27238
  )
end

function me.TestCombatEventSoulstoneResurrectionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulstoneResurrectionRank1Success",
    testCategory,
    20707
  )
end

function me.TestCombatEventSoulstoneResurrectionRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulstoneResurrectionRank2Success",
    testCategory,
    20762
  )
end

function me.TestCombatEventSoulstoneResurrectionRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulstoneResurrectionRank3Success",
    testCategory,
    20763
  )
end

function me.TestCombatEventSoulstoneResurrectionRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulstoneResurrectionRank4Success",
    testCategory,
    20764
  )
end

function me.TestCombatEventSoulstoneResurrectionRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulstoneResurrectionRank5Success",
    testCategory,
    20765
  )
end

function me.TestCombatEventSoulstoneResurrectionRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulstoneResurrectionRank6Success",
    testCategory,
    27239
  )
end

function me.TestCombatEventCreateSpellstoneRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSpellstoneRank1Success",
    testCategory,
    2362
  )
end

function me.TestCombatEventCreateSpellstoneRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSpellstoneRank2Success",
    testCategory,
    17727
  )
end

function me.TestCombatEventCreateSpellstoneRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSpellstoneRank3Success",
    testCategory,
    17728
  )
end

function me.TestCombatEventCreateSpellstoneRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCreateSpellstoneRank4Success",
    testCategory,
    28172
  )
end

function me.TestCombatEventSpellstoneRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSpellstoneRank1Success",
    testCategory,
    128
  )
end

function me.TestCombatEventSpellstoneRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSpellstoneRank2Success",
    testCategory,
    17729
  )
end

function me.TestCombatEventSpellstoneRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSpellstoneRank3Success",
    testCategory,
    17730
  )
end

function me.TestCombatEventSpellstoneRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSpellstoneRank4Success",
    testCategory,
    28170
  )
end

function me.TestCombatEventSpellstoneRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSpellstoneRank4Success",
    testCategory,
    28170
  )
end

function me.TestCombatEventCurseOfAgonyRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfAgonyRank1Success",
    testCategory,
    980
  )
end

function me.TestCombatEventCurseOfAgonyRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfAgonyRank2Success",
    testCategory,
    1014
  )
end

function me.TestCombatEventCurseOfAgonyRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfAgonyRank3Success",
    testCategory,
    6217
  )
end

function me.TestCombatEventCurseOfAgonyRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfAgonyRank4Success",
    testCategory,
    11711
  )
end

function me.TestCombatEventCurseOfAgonyRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfAgonyRank5Success",
    testCategory,
    11712
  )
end

function me.TestCombatEventCurseOfAgonyRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfAgonyRank6Success",
    testCategory,
    11713
  )
end

function me.TestCombatEventCurseOfAgonyRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfAgonyRank7Success",
    testCategory,
    27218
  )
end

function me.TestCombatEventCurseOfRecklessnessRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfRecklessnessRank1Success",
    testCategory,
    704
  )
end

function me.TestCombatEventCurseOfRecklessnessRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfRecklessnessRank2Success",
    testCategory,
    7658
  )
end

function me.TestCombatEventCurseOfRecklessnessRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfRecklessnessRank3Success",
    testCategory,
    7659
  )
end

function me.TestCombatEventCurseOfRecklessnessRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfRecklessnessRank4Success",
    testCategory,
    11717
  )
end

function me.TestCombatEventCurseOfRecklessnessRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfRecklessnessRank5Success",
    testCategory,
    27226
  )
end

function me.TestCombatEventCurseOfTheElementsRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfTheElementsRank1Success",
    testCategory,
    1490
  )
end

function me.TestCombatEventCurseOfTheElementsRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfTheElementsRank2Success",
    testCategory,
    11721
  )
end

function me.TestCombatEventCurseOfTheElementsRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfTheElementsRank3Success",
    testCategory,
    11722
  )
end

function me.TestCombatEventCurseOfTheElementsRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfTheElementsRank4Success",
    testCategory,
    27228
  )
end

function me.TestCombatEventCurseOfTonguesRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfTonguesRank1Success",
    testCategory,
    1714
  )
end

function me.TestCombatEventCurseOfTonguesRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfTonguesRank2Success",
    testCategory,
    11719
  )
end

function me.TestCombatEventCurseOfWeaknessRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank1Success",
    testCategory,
    702
  )
end

function me.TestCombatEventCurseOfWeaknessRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank2Success",
    testCategory,
    1108
  )
end

function me.TestCombatEventCurseOfWeaknessRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank3Success",
    testCategory,
    6205
  )
end

function me.TestCombatEventCurseOfWeaknessRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank4Success",
    testCategory,
    7646
  )
end

function me.TestCombatEventCurseOfWeaknessRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank5Success",
    testCategory,
    11707
  )
end

function me.TestCombatEventCurseOfWeaknessRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank6Success",
    testCategory,
    11708
  )
end

function me.TestCombatEventCurseOfWeaknessRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank7Success",
    testCategory,
    27224
  )
end

function me.TestCombatEventCurseOfWeaknessRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfWeaknessRank8Success",
    testCategory,
    30909
  )
end

function me.TestCombatEventDeathCoilRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeathCoilRank1Success",
    testCategory,
    6789
  )
end

function me.TestCombatEventDeathCoilRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeathCoilRank2Success",
    testCategory,
    17925
  )
end

function me.TestCombatEventDeathCoilRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeathCoilRank3Success",
    testCategory,
    17926
  )
end

function me.TestCombatEventDeathCoilRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDeathCoilRank4Success",
    testCategory,
    27223
  )
end

function me.TestCombatEventDemonArmorRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonArmorRank1Applied",
    testCategory,
    706
  )
end

function me.TestCombatEventDemonArmorRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonArmorRank1Removed",
    testCategory,
    706
  )
end

function me.TestCombatEventDemonArmorRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonArmorRank1Refresh",
    testCategory,
    706
  )
end

function me.TestCombatEventDemonArmorRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonArmorRank2Applied",
    testCategory,
    1086
  )
end

function me.TestCombatEventDemonArmorRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonArmorRank2Removed",
    testCategory,
    1086
  )
end

function me.TestCombatEventDemonArmorRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonArmorRank2Refresh",
    testCategory,
    1086
  )
end

function me.TestCombatEventDemonArmorRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonArmorRank3Applied",
    testCategory,
    11733
  )
end

function me.TestCombatEventDemonArmorRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonArmorRank3Removed",
    testCategory,
    11733
  )
end

function me.TestCombatEventDemonArmorRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonArmorRank3Refresh",
    testCategory,
    11733
  )
end

function me.TestCombatEventDemonArmorRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonArmorRank4Applied",
    testCategory,
    11734
  )
end

function me.TestCombatEventDemonArmorRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonArmorRank4Removed",
    testCategory,
    11734
  )
end

function me.TestCombatEventDemonArmorRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonArmorRank4Refresh",
    testCategory,
    11734
  )
end

function me.TestCombatEventDemonArmorRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonArmorRank5Applied",
    testCategory,
    11735
  )
end

function me.TestCombatEventDemonArmorRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonArmorRank5Removed",
    testCategory,
    11735
  )
end

function me.TestCombatEventDemonArmorRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonArmorRank5Refresh",
    testCategory,
    11735
  )
end

function me.TestCombatEventDemonArmorRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonArmorRank6Applied",
    testCategory,
    27260
  )
end

function me.TestCombatEventDemonArmorRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonArmorRank6Removed",
    testCategory,
    27260
  )
end

function me.TestCombatEventDemonArmorRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonArmorRank6Refresh",
    testCategory,
    27260
  )
end

function me.TestCombatEventDemonSkinRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonSkinRank1Applied",
    testCategory,
    687
  )
end

function me.TestCombatEventDemonSkinRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonSkinRank1Removed",
    testCategory,
    687
  )
end

function me.TestCombatEventDemonSkinRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonSkinRank1Refresh",
    testCategory,
    687
  )
end

function me.TestCombatEventDemonSkinRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDemonSkinRank2Applied",
    testCategory,
    696
  )
end

function me.TestCombatEventDemonSkinRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDemonSkinRank2Removed",
    testCategory,
    696
  )
end

function me.TestCombatEventDemonSkinRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDemonSkinRank2Refresh",
    testCategory,
    696
  )
end

function me.TestCombatEventDetectInvisibilityApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDetectInvisibilityApplied",
    testCategory,
    132
  )
end

function me.TestCombatEventDetectInvisibilityRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDetectInvisibilityRemoved",
    testCategory,
    132
  )
end

function me.TestCombatEventDetectInvisibilityRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDetectInvisibilityRefresh",
    testCategory,
    132
  )
end

function me.TestCombatEventDrainLifeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank1Success",
    testCategory,
    689
  )
end

function me.TestCombatEventDrainLifeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank2Success",
    testCategory,
    699
  )
end

function me.TestCombatEventDrainLifeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank3Success",
    testCategory,
    709
  )
end

function me.TestCombatEventDrainLifeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank4Success",
    testCategory,
    7651
  )
end

function me.TestCombatEventDrainLifeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank5Success",
    testCategory,
    11699
  )
end

function me.TestCombatEventDrainLifeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank6Success",
    testCategory,
    11700
  )
end

function me.TestCombatEventDrainLifeRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank7Success",
    testCategory,
    27219
  )
end

function me.TestCombatEventDrainLifeRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainLifeRank8Success",
    testCategory,
    27220
  )
end

function me.TestCombatEventDrainManaRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainManaRank1Success",
    testCategory,
    5138
  )
end

function me.TestCombatEventDrainManaRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainManaRank2Success",
    testCategory,
    6226
  )
end

function me.TestCombatEventDrainManaRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainManaRank3Success",
    testCategory,
    11703
  )
end

function me.TestCombatEventDrainManaRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainManaRank4Success",
    testCategory,
    11704
  )
end

function me.TestCombatEventDrainManaRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainManaRank5Success",
    testCategory,
    27221
  )
end

function me.TestCombatEventDrainSoulRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainSoulRank1Success",
    testCategory,
    1120
  )
end

function me.TestCombatEventDrainSoulRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainSoulRank2Success",
    testCategory,
    8288
  )
end

function me.TestCombatEventDrainSoulRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainSoulRank3Success",
    testCategory,
    8289
  )
end

function me.TestCombatEventDrainSoulRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainSoulRank4Success",
    testCategory,
    11675
  )
end

function me.TestCombatEventDrainSoulRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDrainSoulRank5Success",
    testCategory,
    27217
  )
end

function me.TestCombatEventEyeOfKilroggSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEyeOfKilroggSuccess",
    testCategory,
    126
  )
end

function me.TestCombatEventFearRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFearRank1Success",
    testCategory,
    5782
  )
end

function me.TestCombatEventFearRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFearRank2Success",
    testCategory,
    6213
  )
end

function me.TestCombatEventFearRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFearRank3Success",
    testCategory,
    6215
  )
end

function me.TestCombatEventFelArmorRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFelArmorRank1Applied",
    testCategory,
    28176
  )
end

function me.TestCombatEventFelArmorRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFelArmorRank1Removed",
    testCategory,
    28176
  )
end

function me.TestCombatEventFelArmorRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFelArmorRank1Refresh",
    testCategory,
    28176
  )
end

function me.TestCombatEventFelArmorRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFelArmorRank2Applied",
    testCategory,
    28189
  )
end

function me.TestCombatEventFelArmorRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFelArmorRank2Removed",
    testCategory,
    28189
  )
end

function me.TestCombatEventFelArmorRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFelArmorRank2Refresh",
    testCategory,
    28189
  )
end

function me.TestCombatEventHealthFunnelRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank1Success",
    testCategory,
    755
  )
end

function me.TestCombatEventHealthFunnelRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank2Success",
    testCategory,
    3698
  )
end

function me.TestCombatEventHealthFunnelRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank3Success",
    testCategory,
    3699
  )
end

function me.TestCombatEventHealthFunnelRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank4Success",
    testCategory,
    3700
  )
end

function me.TestCombatEventHealthFunnelRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank5Success",
    testCategory,
    11693
  )
end

function me.TestCombatEventHealthFunnelRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank6Success",
    testCategory,
    11694
  )
end

function me.TestCombatEventHealthFunnelRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank7Success",
    testCategory,
    11695
  )
end

function me.TestCombatEventHealthFunnelRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealthFunnelRank8Success",
    testCategory,
    27259
  )
end

function me.TestCombatEventHellfireRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHellfireRank1Success",
    testCategory,
    1949
  )
end

function me.TestCombatEventHellfireRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHellfireRank2Success",
    testCategory,
    11683
  )
end

function me.TestCombatEventHellfireRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHellfireRank3Success",
    testCategory,
    11684
  )
end

function me.TestCombatEventHellfireRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHellfireRank4Success",
    testCategory,
    27213
  )
end

function me.TestCombatEventHowlOfTerrorRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHowlOfTerrorRank1Success",
    testCategory,
    5484
  )
end

function me.TestCombatEventHowlOfTerrorRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHowlOfTerrorRank2Success",
    testCategory,
    17928
  )
end

function me.TestCombatEventImmolateRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank1Success",
    testCategory,
    348
  )
end

function me.TestCombatEventImmolateRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank2Success",
    testCategory,
    707
  )
end

function me.TestCombatEventImmolateRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank3Success",
    testCategory,
    1094
  )
end

function me.TestCombatEventImmolateRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank4Success",
    testCategory,
    2941
  )
end

function me.TestCombatEventImmolateRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank5Success",
    testCategory,
    11665
  )
end

function me.TestCombatEventImmolateRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank6Success",
    testCategory,
    11667
  )
end

function me.TestCombatEventImmolateRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank7Success",
    testCategory,
    11668
  )
end

function me.TestCombatEventImmolateRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank8Success",
    testCategory,
    25309
  )
end

function me.TestCombatEventImmolateRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventImmolateRank9Success",
    testCategory,
    27215
  )
end

function me.TestCombatEventIncinerateRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventIncinerateRank1Success",
    testCategory,
    29722
  )
end

function me.TestCombatEventIncinerateRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventIncinerateRank2Success",
    testCategory,
    32231
  )
end

function me.TestCombatEventLifeTapRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifeTapRank7Success",
    testCategory,
    27222
  )
end

function me.TestCombatEventLifeTapRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifeTapRank4Success",
    testCategory,
    11687
  )
end

function me.TestCombatEventLifeTapRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifeTapRank5Success",
    testCategory,
    11688
  )
end

function me.TestCombatEventLifeTapRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifeTapRank6Success",
    testCategory,
    11689
  )
end

function me.TestCombatEventLifeTapRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifeTapRank1Success",
    testCategory,
    1454
  )
end

function me.TestCombatEventLifeTapRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifeTapRank2Success",
    testCategory,
    1455
  )
end

function me.TestCombatEventLifeTapRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifeTapRank3Success",
    testCategory,
    1456
  )
end

function me.TestCombatEventRainOfFireRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRainOfFireRank1Success",
    testCategory,
    5740
  )
end

function me.TestCombatEventRainOfFireRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRainOfFireRank2Success",
    testCategory,
    6219
  )
end

function me.TestCombatEventRainOfFireRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRainOfFireRank3Success",
    testCategory,
    11677
  )
end

function me.TestCombatEventRainOfFireRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRainOfFireRank4Success",
    testCategory,
    11678
  )
end

function me.TestCombatEventRainOfFireRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRainOfFireRank5Success",
    testCategory,
    27212
  )
end

function me.TestCombatEventRitualOfSoulsRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRitualOfSoulsRank1Success",
    testCategory,
    29893
  )
end

function me.TestCombatEventRitualOfSummoningSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRitualOfSummoningSuccess",
    testCategory,
    698
  )
end


function me.TestCombatEventSearingPainRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank1Success",
    testCategory,
    5676
  )
end

function me.TestCombatEventSearingPainRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank2Success",
    testCategory,
    17919
  )
end

function me.TestCombatEventSearingPainRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank3Success",
    testCategory,
    17920
  )
end

function me.TestCombatEventSearingPainRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank4Success",
    testCategory,
    17921
  )
end

function me.TestCombatEventSearingPainRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank5Success",
    testCategory,
    17922
  )
end

function me.TestCombatEventSearingPainRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank6Success",
    testCategory,
    17923
  )
end

function me.TestCombatEventSearingPainRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank7Success",
    testCategory,
    27210
  )
end

function me.TestCombatEventSearingPainRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingPainRank8Success",
    testCategory,
    30459
  )
end

function me.TestCombatEventSeedOfCorruptionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSeedOfCorruptionRank1Success",
    testCategory,
    27243
  )
end

function me.TestCombatEventShadowBoltRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank1Success",
    testCategory,
    686
  )
end

function me.TestCombatEventShadowBoltRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank2Success",
    testCategory,
    695
  )
end

function me.TestCombatEventShadowBoltRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank3Success",
    testCategory,
    705
  )
end

function me.TestCombatEventShadowBoltRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank4Success",
    testCategory,
    1088
  )
end

function me.TestCombatEventShadowBoltRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank5Success",
    testCategory,
    1106
  )
end

function me.TestCombatEventShadowBoltRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank6Success",
    testCategory,
    7641
  )
end

function me.TestCombatEventShadowBoltRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank7Success",
    testCategory,
    11659
  )
end

function me.TestCombatEventShadowBoltRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank8Success",
    testCategory,
    11660
  )
end

function me.TestCombatEventShadowBoltRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank9Success",
    testCategory,
    11661
  )
end

function me.TestCombatEventShadowBoltRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank10Success",
    testCategory,
    25307
  )
end

function me.TestCombatEventShadowBoltRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowBoltRank11Success",
    testCategory,
    27209
  )
end

function me.TestCombatEventShadowWardRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowWardRank1Applied",
    testCategory,
    6229
  )
end

function me.TestCombatEventShadowWardRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowWardRank1Removed",
    testCategory,
    6229
  )
end

function me.TestCombatEventShadowWardRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowWardRank1Refresh",
    testCategory,
    6229
  )
end

function me.TestCombatEventShadowWardRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowWardRank2Applied",
    testCategory,
    11739
  )
end

function me.TestCombatEventShadowWardRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowWardRank2Removed",
    testCategory,
    11739
  )
end

function me.TestCombatEventShadowWardRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowWardRank2Refresh",
    testCategory,
    11739
  )
end

function me.TestCombatEventShadowWardRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowWardRank3Applied",
    testCategory,
    11740
  )
end

function me.TestCombatEventShadowWardRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowWardRank3Removed",
    testCategory,
    11740
  )
end

function me.TestCombatEventShadowWardRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowWardRank3Refresh",
    testCategory,
    11740
  )
end

function me.TestCombatEventShadowWardRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowWardRank4Applied",
    testCategory,
    28610
  )
end

function me.TestCombatEventShadowWardRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowWardRank4Removed",
    testCategory,
    28610
  )
end

function me.TestCombatEventShadowWardRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowWardRank4Refresh",
    testCategory,
    28610
  )
end

function me.TestCombatEventSoulFireRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulFireRank1Success",
    testCategory,
    6353
  )
end

function me.TestCombatEventSoulFireRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulFireRank2Success",
    testCategory,
    17924
  )
end

function me.TestCombatEventSoulFireRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulFireRank3Success",
    testCategory,
    27211
  )
end

function me.TestCombatEventSoulFireRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSoulFireRank4Success",
    testCategory,
    30545
  )
end

function me.TestCombatEventSummonFelhunterSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSummonFelhunterSuccess",
    testCategory,
    691
  )
end

function me.TestCombatEventSummonImpSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSummonImpSuccess",
    testCategory,
    688
  )
end

function me.TestCombatEventSummonSuccubusSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSummonSuccubusSuccess",
    testCategory,
    712
  )
end

function me.TestCombatEventSummonVoidwalkerSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSummonVoidwalkerSuccess",
    testCategory,
    697
  )
end

function me.TestCombatEventUnendingBreathApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventUnendingBreathApplied",
    testCategory,
    5697
  )
end

function me.TestCombatEventUnendingBreathRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventUnendingBreathRemoved",
    testCategory,
    5697
  )
end

function me.TestCombatEventUnendingBreathRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventUnendingBreathRefresh",
    testCategory,
    5697
  )
end

function me.TestCombatEventAmplifyCurseApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAmplifyCurseApplied",
    testCategory,
    18288
  )
end

function me.TestCombatEventAmplifyCurseRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAmplifyCurseRemoved",
    testCategory,
    18288
  )
end

function me.TestCombatEventConflagrateRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConflagrateRank1Success",
    testCategory,
    17962
  )
end

function me.TestCombatEventConflagrateRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConflagrateRank2Success",
    testCategory,
    18930
  )
end

function me.TestCombatEventConflagrateRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConflagrateRank3Success",
    testCategory,
    18931
  )
end

function me.TestCombatEventConflagrateRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConflagrateRank4Success",
    testCategory,
    18932
  )
end

function me.TestCombatEventConflagrateRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConflagrateRank5Success",
    testCategory,
    27266
  )
end

function me.TestCombatEventConflagrateRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConflagrateRank6Success",
    testCategory,
    30912
  )
end

function me.TestCombatEventCurseOfExhaustionSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurseOfExhaustionSuccess",
    testCategory,
    18223
  )
end

function me.TestCombatEventDarkPactRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDarkPactRank1Success",
    testCategory,
    18220
  )
end

function me.TestCombatEventDarkPactRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDarkPactRank2Success",
    testCategory,
    18937
  )
end

function me.TestCombatEventDarkPactRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDarkPactRank3Success",
    testCategory,
    18938
  )
end

function me.TestCombatEventDarkPactRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDarkPactRank4Success",
    testCategory,
    27265
  )
end

function me.TestCombatEventDemonicSacrificeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemonicSacrificeSuccess",
    testCategory,
    18788
  )
end

function me.TestCombatEventFelDominationApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFelDominationApplied",
    testCategory,
    18708
  )
end

function me.TestCombatEventFelDominationRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFelDominationRemoved",
    testCategory,
    18708
  )
end

function me.TestCombatEventNetherProtectionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNetherProtectionApplied",
    testCategory,
    30300
  )
end

function me.TestCombatEventNetherProtectionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNetherProtectionRemoved",
    testCategory,
    30300
  )
end

function me.TestCombatEventNetherProtectionRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventNetherProtectionRefresh",
    testCategory,
    30300
  )
end

function me.TestCombatEventNightfallRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNightfallRank1Applied",
    testCategory,
    18094
  )
end

function me.TestCombatEventNightfallRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNightfallRank1Removed",
    testCategory,
    18094
  )
end

function me.TestCombatEventNightfallRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventNightfallRank1Refresh",
    testCategory,
    18094
  )
end

function me.TestCombatEventNightfallRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNightfallRank2Applied",
    testCategory,
    18095
  )
end

function me.TestCombatEventNightfallRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNightfallRank2Removed",
    testCategory,
    18095
  )
end

function me.TestCombatEventNightfallRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventNightfallRank2Refresh",
    testCategory,
    18095
  )
end

function me.TestCombatEventShadowburnRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank1Success",
    testCategory,
    17877
  )
end

function me.TestCombatEventShadowburnRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank2Success",
    testCategory,
    18867
  )
end

function me.TestCombatEventShadowburnRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank3Success",
    testCategory,
    18868
  )
end

function me.TestCombatEventShadowburnRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank4Success",
    testCategory,
    18869
  )
end

function me.TestCombatEventShadowburnRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank5Success",
    testCategory,
    18870
  )
end

function me.TestCombatEventShadowburnRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank6Success",
    testCategory,
    18871
  )
end

function me.TestCombatEventShadowburnRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank7Success",
    testCategory,
    27263
  )
end

function me.TestCombatEventShadowburnRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowburnRank8Success",
    testCategory,
    30546
  )
end

function me.TestCombatEventShadowfuryRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowfuryRank1Success",
    testCategory,
    30283
  )
end

function me.TestCombatEventShadowfuryRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowfuryRank2Success",
    testCategory,
    30413
  )
end

function me.TestCombatEventShadowfuryRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowfuryRank3Success",
    testCategory,
    30414
  )
end

function me.TestCombatEventSiphonLifeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSiphonLifeRank1Success",
    testCategory,
    18265
  )
end

function me.TestCombatEventSiphonLifeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSiphonLifeRank2Success",
    testCategory,
    18879
  )
end

function me.TestCombatEventSiphonLifeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSiphonLifeRank3Success",
    testCategory,
    18880
  )
end

function me.TestCombatEventSiphonLifeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSiphonLifeRank4Success",
    testCategory,
    18881
  )
end

function me.TestCombatEventSiphonLifeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSiphonLifeRank5Success",
    testCategory,
    27264
  )
end

function me.TestCombatEventSiphonLifeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSiphonLifeRank6Success",
    testCategory,
    30911
  )
end

function me.TestCombatEventSoulLinkApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSoulLinkApplied",
    testCategory,
    19028
  )
end

function me.TestCombatEventSoulLinkRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSoulLinkRemoved",
    testCategory,
    19028
  )
end

function me.TestCombatEventSummonFelguardSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSummonFelguardSuccess",
    testCategory,
    30146
  )
end

function me.TestCombatEventUnstableAfflictionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventUnstableAfflictionRank1Success",
    testCategory,
    30108
  )
end

function me.TestCombatEventUnstableAfflictionRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventUnstableAfflictionRank2Success",
    testCategory,
    30404
  )
end

function me.TestCombatEventUnstableAfflictionRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventUnstableAfflictionRank3Success",
    testCategory,
    30405
  )
end
