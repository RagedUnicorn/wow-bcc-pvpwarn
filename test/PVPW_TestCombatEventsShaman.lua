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
mod.testCombatEventsShaman = me

me.tag = "TestCombatEventsShaman"

local testGroupName = "CombatEventsShaman"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES_NEW.SHAMAN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncestralSpiritRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodlustRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodlustRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodlustRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainHealRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChainLightningRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCureDiseaseSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurePoisonSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDiseaseCleansingTotemSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthElementalTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShockRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShockRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShockRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShockRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShockRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShockRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShockRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthbindTotemSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireElementalTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireNovaTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireNovaTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireNovaTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireNovaTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireNovaTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireNovaTotemRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireNovaTotemRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlameShockRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlameShockRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlameShockRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlameShockRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlameShockRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlameShockRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlameShockRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueWeaponRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueWeaponRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueWeaponRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueWeaponRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueWeaponRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueWeaponRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlametongueWeaponRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostShockRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostShockRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostShockRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostShockRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostShockRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostbrandWeaponRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostbrandWeaponRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostbrandWeaponRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostbrandWeaponRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostbrandWeaponRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostbrandWeaponRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGhostWolfApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGhostWolfRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGraceOfAirTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGraceOfAirTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGraceOfAirTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGroundingTotemSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingStreamTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingStreamTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingStreamTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingStreamTotemRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingStreamTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingStreamTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingWaveRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHeroismApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHeroismRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHeroismRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealingWaveRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningBoltRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank8Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank8Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank8Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank9Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank9Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLightningShieldRank9Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMagmaTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMagmaTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMagmaTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMagmaTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMagmaTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaSpringTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaSpringTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaSpringTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaSpringTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaSpringTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNatureResistanceTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNatureResistanceTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNatureResistanceTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNatureResistanceTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPoisonCleansingTotemSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPurgeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPurgeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventReincarnationSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRockbiterWeaponRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingTotemRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSearingTotemRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneclawTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneclawTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneclawTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneclawTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneclawTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneclawTotemRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneclawTotemRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneskinTotemRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStrengthOfEarthTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStrengthOfEarthTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStrengthOfEarthTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStrengthOfEarthTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStrengthOfEarthTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStrengthOfEarthTotemRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTremorTotemSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterBreathingApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterBreathingRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterBreathingRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterShieldRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterShieldRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterShieldRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterShieldRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterShieldRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWaterShieldRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryTotemRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryWeaponRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryWeaponRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryWeaponRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryWeaponRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindfuryWeaponRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindwallTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindwallTotemRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindwallTotemRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWindwallTotemRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathOfAirTotemRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEarthShieldRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventElementalMasteryApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventElementalMasteryRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaTideTotemSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesSwiftnessApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesSwiftnessRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShamanisticRageRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShamanisticRageRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStormstrikeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTotemOfWrathRank1Success)
end

function me.TestCombatEventAncestralSpiritRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAncestralSpiritRank1Success",
    testCategory,
    2008
  )
end

function me.TestCombatEventAncestralSpiritRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAncestralSpiritRank2Success",
    testCategory,
    20609
  )
end

function me.TestCombatEventAncestralSpiritRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAncestralSpiritRank3Success",
    testCategory,
    20610
  )
end

function me.TestCombatEventAncestralSpiritRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAncestralSpiritRank4Success",
    testCategory,
    20776
  )
end

function me.TestCombatEventAncestralSpiritRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAncestralSpiritRank5Success",
    testCategory,
    20777
  )
end

function me.TestCombatEventBloodlustRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBloodlustRank1Applied",
    testCategory,
    2825
  )
end

function me.TestCombatEventBloodlustRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBloodlustRank1Removed",
    testCategory,
    2825
  )
end

function me.TestCombatEventBloodlustRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBloodlustRank1Refresh",
    testCategory,
    2825
  )
end

function me.TestCombatEventChainHealRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainHealRank1Success",
    testCategory,
    1064
  )
end

function me.TestCombatEventChainHealRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainHealRank2Success",
    testCategory,
    10622
  )
end

function me.TestCombatEventChainHealRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainHealRank3Success",
    testCategory,
    10623
  )
end

function me.TestCombatEventChainHealRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainHealRank4Success",
    testCategory,
    25422
  )
end

function me.TestCombatEventChainHealRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainHealRank5Success",
    testCategory,
    25423
  )
end

function me.TestCombatEventChainLightningRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainLightningRank1Success",
    testCategory,
    421
  )
end

function me.TestCombatEventChainLightningRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainLightningRank2Success",
    testCategory,
    930
  )
end

function me.TestCombatEventChainLightningRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainLightningRank3Success",
    testCategory,
    2860
  )
end


function me.TestCombatEventChainLightningRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainLightningRank4Success",
    testCategory,
    10605
  )
end

function me.TestCombatEventChainLightningRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainLightningRank5Success",
    testCategory,
    25439
  )
end

function me.TestCombatEventChainLightningRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChainLightningRank6Success",
    testCategory,
    25442
  )
end

function me.TestCombatEventCureDiseaseSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCureDiseaseSuccess",
    testCategory,
    2870
  )
end

function me.TestCombatEventCurePoisonSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCurePoisonSuccess",
    testCategory,
    526
  )
end

function me.TestCombatEventDiseaseCleansingTotemSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDiseaseCleansingTotemSuccess",
    testCategory,
    8170
  )
end

function me.TestCombatEventEarthElementalTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthElementalTotemRank1Success",
    testCategory,
    2062
  )
end

function me.TestCombatEventEarthShockRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthShockRank1Success",
    testCategory,
    8042
  )
end

function me.TestCombatEventEarthShockRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthShockRank2Success",
    testCategory,
    8044
  )
end

function me.TestCombatEventEarthShockRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthShockRank3Success",
    testCategory,
    8045
  )
end

function me.TestCombatEventEarthShockRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthShockRank4Success",
    testCategory,
    8046
  )
end

function me.TestCombatEventEarthShockRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthShockRank5Success",
    testCategory,
    10412
  )
end

function me.TestCombatEventEarthShockRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthShockRank6Success",
    testCategory,
    10413
  )
end

function me.TestCombatEventEarthShockRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthShockRank7Success",
    testCategory,
    10414
  )
end

function me.TestCombatEventEarthbindTotemSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEarthbindTotemSuccess",
    testCategory,
    2484
  )
end

function me.TestCombatEventFireElementalTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireElementalTotemRank1Success",
    testCategory,
    2894
  )
end

function me.TestCombatEventFireNovaTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireNovaTotemRank1Success",
    testCategory,
    1535
  )
end

function me.TestCombatEventFireNovaTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireNovaTotemRank2Success",
    testCategory,
    8498
  )
end

function me.TestCombatEventFireNovaTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireNovaTotemRank3Success",
    testCategory,
    8499
  )
end

function me.TestCombatEventFireNovaTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireNovaTotemRank4Success",
    testCategory,
    11314
  )
end

function me.TestCombatEventFireNovaTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireNovaTotemRank5Success",
    testCategory,
    11315
  )
end

function me.TestCombatEventFireNovaTotemRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireNovaTotemRank6Success",
    testCategory,
    25546
  )
end

function me.TestCombatEventFireNovaTotemRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireNovaTotemRank7Success",
    testCategory,
    25547
  )
end

function me.TestCombatEventFireResistanceTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceTotemRank1Success",
    testCategory,
    8184
  )
end

function me.TestCombatEventFireResistanceTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceTotemRank2Success",
    testCategory,
    10537
  )
end

function me.TestCombatEventFireResistanceTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceTotemRank3Success",
    testCategory,
    10538
  )
end

function me.TestCombatEventFireResistanceTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceTotemRank4Success",
    testCategory,
    25563
  )
end

function me.TestCombatEventFlameShockRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlameShockRank1Success",
    testCategory,
    8050
  )
end

function me.TestCombatEventFlameShockRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlameShockRank2Success",
    testCategory,
    8052
  )
end

function me.TestCombatEventFlameShockRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlameShockRank3Success",
    testCategory,
    8053
  )
end

function me.TestCombatEventFlameShockRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlameShockRank4Success",
    testCategory,
    10447
  )
end

function me.TestCombatEventFlameShockRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlameShockRank5Success",
    testCategory,
    10448
  )
end

function me.TestCombatEventFlameShockRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlameShockRank6Success",
    testCategory,
    29228
  )
end

function me.TestCombatEventFlameShockRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlameShockRank7Success",
    testCategory,
    25457
  )
end

function me.TestCombatEventFlametongueTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueTotemRank1Success",
    testCategory,
    8227
  )
end

function me.TestCombatEventFlametongueTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueTotemRank2Success",
    testCategory,
    8249
  )
end

function me.TestCombatEventFlametongueTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueTotemRank3Success",
    testCategory,
    10526
  )
end

function me.TestCombatEventFlametongueTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueTotemRank4Success",
    testCategory,
    16387
  )
end

function me.TestCombatEventFlametongueTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueTotemRank5Success",
    testCategory,
    25557
  )
end

function me.TestCombatEventFlametongueWeaponRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueWeaponRank1Success",
    testCategory,
    8024
  )
end

function me.TestCombatEventFlametongueWeaponRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueWeaponRank2Success",
    testCategory,
    8027
  )
end

function me.TestCombatEventFlametongueWeaponRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueWeaponRank3Success",
    testCategory,
    8030
  )
end

function me.TestCombatEventFlametongueWeaponRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueWeaponRank4Success",
    testCategory,
    16339
  )
end

function me.TestCombatEventFlametongueWeaponRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueWeaponRank5Success",
    testCategory,
    16341
  )
end

function me.TestCombatEventFlametongueWeaponRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueWeaponRank6Success",
    testCategory,
    16342
  )
end

function me.TestCombatEventFlametongueWeaponRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlametongueWeaponRank7Success",
    testCategory,
    25489
  )
end

function me.TestCombatEventFrostResistanceTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceTotemRank2Success",
    testCategory,
    10478
  )
end

function me.TestCombatEventFrostResistanceTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceTotemRank3Success",
    testCategory,
    10479
  )
end

function me.TestCombatEventFrostResistanceTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceTotemRank1Success",
    testCategory,
    8181
  )
end

function me.TestCombatEventFrostResistanceTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceTotemRank4Success",
    testCategory,
    25560
  )
end

function me.TestCombatEventFrostShockRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostShockRank1Success",
    testCategory,
    8056
  )
end

function me.TestCombatEventFrostShockRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostShockRank2Success",
    testCategory,
    8058
  )
end

function me.TestCombatEventFrostShockRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostShockRank3Success",
    testCategory,
    10472
  )
end

function me.TestCombatEventFrostShockRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostShockRank4Success",
    testCategory,
    10473
  )
end

function me.TestCombatEventFrostShockRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostShockRank5Success",
    testCategory,
    25464
  )
end

function me.TestCombatEventFrostbrandWeaponRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostbrandWeaponRank1Success",
    testCategory,
    8033
  )
end

function me.TestCombatEventFrostbrandWeaponRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostbrandWeaponRank2Success",
    testCategory,
    8038
  )
end

function me.TestCombatEventFrostbrandWeaponRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostbrandWeaponRank3Success",
    testCategory,
    10456
  )
end

function me.TestCombatEventFrostbrandWeaponRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostbrandWeaponRank4Success",
    testCategory,
    16355
  )
end

function me.TestCombatEventFrostbrandWeaponRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostbrandWeaponRank5Success",
    testCategory,
    16356
  )
end

function me.TestCombatEventFrostbrandWeaponRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostbrandWeaponRank6Success",
    testCategory,
    25500
  )
end

function me.TestCombatEventGhostWolfApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGhostWolfApplied",
    testCategory,
    2645
  )
end

function me.TestCombatEventGhostWolfRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGhostWolfRemoved",
    testCategory,
    2645
  )
end

function me.TestCombatEventGraceOfAirTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGraceOfAirTotemRank1Success",
    testCategory,
    8835
  )
end

function me.TestCombatEventGraceOfAirTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGraceOfAirTotemRank2Success",
    testCategory,
    10627
  )
end

function me.TestCombatEventGraceOfAirTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGraceOfAirTotemRank3Success",
    testCategory,
    25359
  )
end

function me.TestCombatEventGroundingTotemSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGroundingTotemSuccess",
    testCategory,
    8177
  )
end

function me.TestCombatEventHealingStreamTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingStreamTotemRank1Success",
    testCategory,
    5394
  )
end

function me.TestCombatEventHealingStreamTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingStreamTotemRank2Success",
    testCategory,
    6375
  )
end

function me.TestCombatEventHealingStreamTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingStreamTotemRank3Success",
    testCategory,
    6377
  )
end

function me.TestCombatEventHealingStreamTotemRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingStreamTotemRank6Success",
    testCategory,
    25567
  )
end

function me.TestCombatEventHealingStreamTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingStreamTotemRank4Success",
    testCategory,
    10462
  )
end

function me.TestCombatEventHealingStreamTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingStreamTotemRank5Success",
    testCategory,
    10463
  )
end

function me.TestCombatEventHealingWaveRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank1Success",
    testCategory,
    331
  )
end

function me.TestCombatEventHealingWaveRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank2Success",
    testCategory,
    332
  )
end

function me.TestCombatEventHealingWaveRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank3Success",
    testCategory,
    547
  )
end

function me.TestCombatEventHealingWaveRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank4Success",
    testCategory,
    913
  )
end

function me.TestCombatEventHealingWaveRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank5Success",
    testCategory,
    939
  )
end

function me.TestCombatEventHealingWaveRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank6Success",
    testCategory,
    959
  )
end

function me.TestCombatEventHealingWaveRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank7Success",
    testCategory,
    8005
  )
end

function me.TestCombatEventHealingWaveRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank8Success",
    testCategory,
    10395
  )
end

function me.TestCombatEventHealingWaveRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank9Success",
    testCategory,
    10396
  )
end

function me.TestCombatEventHealingWaveRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank10Success",
    testCategory,
    25357
  )
end

function me.TestCombatEventHealingWaveRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank11Success",
    testCategory,
    25391
  )
end

function me.TestCombatEventHealingWaveRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingWaveRank12Success",
    testCategory,
    25396
  )
end

function me.TestCombatEventHeroismApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventHeroismApplied",
    testCategory,
    32182
  )
end

function me.TestCombatEventHeroismRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventHeroismRemoved",
    testCategory,
    32182
  )
end

function me.TestCombatEventHeroismRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventHeroismRefresh",
    testCategory,
    32182
  )
end

function me.TestCombatEventLesserHealingWaveRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealingWaveRank1Success",
    testCategory,
    8004
  )
end

function me.TestCombatEventLesserHealingWaveRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealingWaveRank2Success",
    testCategory,
    8008
  )
end

function me.TestCombatEventLesserHealingWaveRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealingWaveRank3Success",
    testCategory,
    8010
  )
end

function me.TestCombatEventLesserHealingWaveRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealingWaveRank4Success",
    testCategory,
    10466
  )
end

function me.TestCombatEventLesserHealingWaveRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealingWaveRank5Success",
    testCategory,
    10467
  )
end

function me.TestCombatEventLesserHealingWaveRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealingWaveRank6Success",
    testCategory,
    10468
  )
end

function me.TestCombatEventLesserHealingWaveRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealingWaveRank7Success",
    testCategory,
    25420
  )
end

function me.TestCombatEventLightningBoltRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank1Success",
    testCategory,
    403
  )
end

function me.TestCombatEventLightningBoltRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank2Success",
    testCategory,
    529
  )
end

function me.TestCombatEventLightningBoltRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank3Success",
    testCategory,
    548
  )
end

function me.TestCombatEventLightningBoltRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank4Success",
    testCategory,
    915
  )
end

function me.TestCombatEventLightningBoltRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank5Success",
    testCategory,
    943
  )
end

function me.TestCombatEventLightningBoltRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank6Success",
    testCategory,
    6041
  )
end

function me.TestCombatEventLightningBoltRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank7Success",
    testCategory,
    10391
  )
end

function me.TestCombatEventLightningBoltRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank8Success",
    testCategory,
    10392
  )
end

function me.TestCombatEventLightningBoltRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank9Success",
    testCategory,
    15207
  )
end

function me.TestCombatEventLightningBoltRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank10Success",
    testCategory,
    15208
  )
end

function me.TestCombatEventLightningBoltRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank11Success",
    testCategory,
    25448
  )
end

function me.TestCombatEventLightningBoltRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLightningBoltRank12Success",
    testCategory,
    25449
  )
end

function me.TestCombatEventLightningShieldRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank1Applied",
    testCategory,
    324
  )
end

function me.TestCombatEventLightningShieldRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank1Removed",
    testCategory,
    324
  )
end

function me.TestCombatEventLightningShieldRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank1Refresh",
    testCategory,
    324
  )
end

function me.TestCombatEventLightningShieldRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank2Applied",
    testCategory,
    325
  )
end

function me.TestCombatEventLightningShieldRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank2Removed",
    testCategory,
    325
  )
end

function me.TestCombatEventLightningShieldRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank2Refresh",
    testCategory,
    325
  )
end

function me.TestCombatEventLightningShieldRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank3Applied",
    testCategory,
    905
  )
end

function me.TestCombatEventLightningShieldRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank3Removed",
    testCategory,
    905
  )
end

function me.TestCombatEventLightningShieldRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank3Refresh",
    testCategory,
    905
  )
end

function me.TestCombatEventLightningShieldRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank4Applied",
    testCategory,
    945
  )
end

function me.TestCombatEventLightningShieldRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank4Removed",
    testCategory,
    945
  )
end

function me.TestCombatEventLightningShieldRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank4Refresh",
    testCategory,
    945
  )
end

function me.TestCombatEventLightningShieldRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank5Applied",
    testCategory,
    8134
  )
end

function me.TestCombatEventLightningShieldRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank5Removed",
    testCategory,
    8134
  )
end

function me.TestCombatEventLightningShieldRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank5Refresh",
    testCategory,
    8134
  )
end

function me.TestCombatEventLightningShieldRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank6Applied",
    testCategory,
    10431
  )
end

function me.TestCombatEventLightningShieldRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank6Removed",
    testCategory,
    10431
  )
end

function me.TestCombatEventLightningShieldRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank6Refresh",
    testCategory,
    10431
  )
end

function me.TestCombatEventLightningShieldRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank7Applied",
    testCategory,
    10432
  )
end

function me.TestCombatEventLightningShieldRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank7Removed",
    testCategory,
    10432
  )
end

function me.TestCombatEventLightningShieldRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank7Refresh",
    testCategory,
    10432
  )
end

function me.TestCombatEventLightningShieldRank8Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank8Applied",
    testCategory,
    25469
  )
end

function me.TestCombatEventLightningShieldRank8Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank8Removed",
    testCategory,
    25469
  )
end

function me.TestCombatEventLightningShieldRank8Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank8Refresh",
    testCategory,
    25469
  )
end

function me.TestCombatEventLightningShieldRank9Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLightningShieldRank9Applied",
    testCategory,
    25472
  )
end

function me.TestCombatEventLightningShieldRank9Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLightningShieldRank9Removed",
    testCategory,
    25472
  )
end

function me.TestCombatEventLightningShieldRank9Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLightningShieldRank9Refresh",
    testCategory,
    25472
  )
end

function me.TestCombatEventMagmaTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMagmaTotemRank1Success",
    testCategory,
    8190
  )
end

function me.TestCombatEventMagmaTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMagmaTotemRank2Success",
    testCategory,
    10585
  )
end

function me.TestCombatEventMagmaTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMagmaTotemRank3Success",
    testCategory,
    10586
  )
end

function me.TestCombatEventMagmaTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMagmaTotemRank4Success",
    testCategory,
    10587
  )
end

function me.TestCombatEventMagmaTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMagmaTotemRank5Success",
    testCategory,
    25552
  )
end

function me.TestCombatEventManaSpringTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaSpringTotemRank1Success",
    testCategory,
    5675
  )
end

function me.TestCombatEventManaSpringTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaSpringTotemRank2Success",
    testCategory,
    10495
  )
end

function me.TestCombatEventManaSpringTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaSpringTotemRank3Success",
    testCategory,
    10496
  )
end

function me.TestCombatEventManaSpringTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaSpringTotemRank4Success",
    testCategory,
    10497
  )
end

function me.TestCombatEventManaSpringTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaSpringTotemRank5Success",
    testCategory,
    25570
  )
end

function me.TestCombatEventNatureResistanceTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventNatureResistanceTotemRank1Success",
    testCategory,
    10595
  )
end

function me.TestCombatEventNatureResistanceTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventNatureResistanceTotemRank2Success",
    testCategory,
    10600
  )
end

function me.TestCombatEventNatureResistanceTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventNatureResistanceTotemRank3Success",
    testCategory,
    10601
  )
end

function me.TestCombatEventNatureResistanceTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventNatureResistanceTotemRank4Success",
    testCategory,
    25574
  )
end

function me.TestCombatEventPoisonCleansingTotemSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPoisonCleansingTotemSuccess",
    testCategory,
    8166
  )
end

function me.TestCombatEventPurgeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPurgeRank1Success",
    testCategory,
    370
  )
end

function me.TestCombatEventPurgeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPurgeRank2Success",
    testCategory,
    8012
  )
end

function me.TestCombatEventReincarnationSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventReincarnationSuccess",
    testCategory,
    20608
  )
end

function me.TestCombatEventRockbiterWeaponRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank1Success",
    testCategory,
    8017
  )
end

function me.TestCombatEventRockbiterWeaponRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank2Success",
    testCategory,
    8018
  )
end

function me.TestCombatEventRockbiterWeaponRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank3Success",
    testCategory,
    8019
  )
end

function me.TestCombatEventRockbiterWeaponRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank4Success",
    testCategory,
    10399
  )
end

function me.TestCombatEventRockbiterWeaponRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank5Success",
    testCategory,
    16314
  )
end

function me.TestCombatEventRockbiterWeaponRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank6Success",
    testCategory,
    16315
  )
end

function me.TestCombatEventRockbiterWeaponRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank7Success",
    testCategory,
    16316
  )
end

function me.TestCombatEventRockbiterWeaponRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank8Success",
    testCategory,
    25479
  )
end

function me.TestCombatEventRockbiterWeaponRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRockbiterWeaponRank9Success",
    testCategory,
    25485
  )
end

function me.TestCombatEventSearingTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingTotemRank1Success",
    testCategory,
    3599
  )
end

function me.TestCombatEventSearingTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingTotemRank2Success",
    testCategory,
    6363
  )
end

function me.TestCombatEventSearingTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingTotemRank3Success",
    testCategory,
    6364
  )
end

function me.TestCombatEventSearingTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingTotemRank4Success",
    testCategory,
    6365
  )
end

function me.TestCombatEventSearingTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingTotemRank5Success",
    testCategory,
    10437
  )
end

function me.TestCombatEventSearingTotemRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingTotemRank6Success",
    testCategory,
    10438
  )
end

function me.TestCombatEventSearingTotemRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSearingTotemRank7Success",
    testCategory,
    25533
  )
end

function me.TestCombatEventStoneclawTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneclawTotemRank1Success",
    testCategory,
    5730
  )
end

function me.TestCombatEventStoneclawTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneclawTotemRank2Success",
    testCategory,
    6390
  )
end

function me.TestCombatEventStoneclawTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneclawTotemRank3Success",
    testCategory,
    6391
  )
end

function me.TestCombatEventStoneclawTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneclawTotemRank4Success",
    testCategory,
    6392
  )
end

function me.TestCombatEventStoneclawTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneclawTotemRank5Success",
    testCategory,
    10427
  )
end

function me.TestCombatEventStoneclawTotemRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneclawTotemRank6Success",
    testCategory,
    10428
  )
end

function me.TestCombatEventStoneclawTotemRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneclawTotemRank7Success",
    testCategory,
    25525
  )
end

function me.TestCombatEventStoneskinTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank1Success",
    testCategory,
    8071
  )
end

function me.TestCombatEventStoneskinTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank2Success",
    testCategory,
    8154
  )
end

function me.TestCombatEventStoneskinTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank3Success",
    testCategory,
    8155
  )
end

function me.TestCombatEventStoneskinTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank4Success",
    testCategory,
    10406
  )
end

function me.TestCombatEventStoneskinTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank5Success",
    testCategory,
    10407
  )
end

function me.TestCombatEventStoneskinTotemRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank6Success",
    testCategory,
    10408
  )
end

function me.TestCombatEventStoneskinTotemRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank7Success",
    testCategory,
    25508
  )
end

function me.TestCombatEventStoneskinTotemRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStoneskinTotemRank8Success",
    testCategory,
    25509
  )
end

function me.TestCombatEventStrengthOfEarthTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStrengthOfEarthTotemRank1Success",
    testCategory,
    8075
  )
end

function me.TestCombatEventStrengthOfEarthTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStrengthOfEarthTotemRank2Success",
    testCategory,
    8160
  )
end

function me.TestCombatEventStrengthOfEarthTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStrengthOfEarthTotemRank3Success",
    testCategory,
    8161
  )
end

function me.TestCombatEventStrengthOfEarthTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStrengthOfEarthTotemRank4Success",
    testCategory,
    10442
  )
end

function me.TestCombatEventStrengthOfEarthTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStrengthOfEarthTotemRank5Success",
    testCategory,
    25361
  )
end

function me.TestCombatEventStrengthOfEarthTotemRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStrengthOfEarthTotemRank6Success",
    testCategory,
    25528
  )
end

function me.TestCombatEventTremorTotemSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTremorTotemSuccess",
    testCategory,
    8143
  )
end

function me.TestCombatEventWaterBreathingApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventWaterBreathingApplied",
    testCategory,
    131
  )
end

function me.TestCombatEventWaterBreathingRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventWaterBreathingRemoved",
    testCategory,
    131
  )
end

function me.TestCombatEventWaterBreathingRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventWaterBreathingRefresh",
    testCategory,
    131
  )
end

function me.TestCombatEventWaterShieldRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventWaterShieldRank1Applied",
    testCategory,
    24398
  )
end

function me.TestCombatEventWaterShieldRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventWaterShieldRank1Removed",
    testCategory,
    24398
  )
end

function me.TestCombatEventWaterShieldRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventWaterShieldRank1Refresh",
    testCategory,
    24398
  )
end

function me.TestCombatEventWaterShieldRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventWaterShieldRank2Applied",
    testCategory,
    33736
  )
end

function me.TestCombatEventWaterShieldRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventWaterShieldRank2Removed",
    testCategory,
    33736
  )
end

function me.TestCombatEventWaterShieldRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventWaterShieldRank2Refresh",
    testCategory,
    33736
  )
end

function me.TestCombatEventWindfuryTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryTotemRank1Success",
    testCategory,
    8512
  )
end

function me.TestCombatEventWindfuryTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryTotemRank2Success",
    testCategory,
    10613
  )
end

function me.TestCombatEventWindfuryTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryTotemRank3Success",
    testCategory,
    10614
  )
end

function me.TestCombatEventWindfuryTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryTotemRank4Success",
    testCategory,
    25585
  )
end

function me.TestCombatEventWindfuryTotemRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryTotemRank5Success",
    testCategory,
    25587
  )
end

function me.TestCombatEventWindfuryWeaponRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryWeaponRank1Success",
    testCategory,
    8232
  )
end

function me.TestCombatEventWindfuryWeaponRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryWeaponRank2Success",
    testCategory,
    8235
  )
end

function me.TestCombatEventWindfuryWeaponRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryWeaponRank3Success",
    testCategory,
    10486
  )
end

function me.TestCombatEventWindfuryWeaponRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryWeaponRank4Success",
    testCategory,
    16362
  )
end

function me.TestCombatEventWindfuryWeaponRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindfuryWeaponRank5Success",
    testCategory,
    25505
  )
end

function me.TestCombatEventWindwallTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindwallTotemRank1Success",
    testCategory,
    15107
  )
end

function me.TestCombatEventWindwallTotemRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindwallTotemRank2Success",
    testCategory,
    15111
  )
end

function me.TestCombatEventWindwallTotemRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindwallTotemRank3Success",
    testCategory,
    15112
  )
end

function me.TestCombatEventWindwallTotemRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWindwallTotemRank4Success",
    testCategory,
    25577
  )
end

function me.TestCombatEventWrathOfAirTotemRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWrathOfAirTotemRank1Success",
    testCategory,
    3738
  )
end

function me.TestCombatEventEarthShieldRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEarthShieldRank1Applied",
    testCategory,
    974
  )
end

function me.TestCombatEventEarthShieldRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEarthShieldRank1Removed",
    testCategory,
    974
  )
end

function me.TestCombatEventEarthShieldRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventEarthShieldRank1Refresh",
    testCategory,
    974
  )
end

function me.TestCombatEventEarthShieldRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEarthShieldRank2Applied",
    testCategory,
    32593
  )
end

function me.TestCombatEventEarthShieldRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEarthShieldRank2Removed",
    testCategory,
    32593
  )
end

function me.TestCombatEventEarthShieldRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventEarthShieldRank2Refresh",
    testCategory,
    32593
  )
end

function me.TestCombatEventEarthShieldRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEarthShieldRank3Applied",
    testCategory,
    32594
  )
end

function me.TestCombatEventEarthShieldRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEarthShieldRank3Removed",
    testCategory,
    32594
  )
end

function me.TestCombatEventEarthShieldRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventEarthShieldRank3Refresh",
    testCategory,
    32594
  )
end

function me.TestCombatEventElementalMasteryApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventElementalMasteryApplied",
    testCategory,
    16166
  )
end

function me.TestCombatEventElementalMasteryRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventElementalMasteryRemoved",
    testCategory,
    16166
  )
end

function me.TestCombatEventManaTideTotemSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaTideTotemSuccess",
    testCategory,
    16190
  )
end

function me.TestCombatEventNaturesSwiftnessApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesSwiftnessApplied",
    testCategory,
    16188
  )
end

function me.TestCombatEventNaturesSwiftnessRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesSwiftnessRemoved",
    testCategory,
    16188
  )
end

function me.TestCombatEventShamanisticRageRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShamanisticRageRank1Applied",
    testCategory,
    30823
  )
end

function me.TestCombatEventShamanisticRageRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShamanisticRageRank1Removed",
    testCategory,
    30823
  )
end

function me.TestCombatEventStormstrikeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStormstrikeSuccess",
    testCategory,
    17364
  )
end

function me.TestCombatEventTotemOfWrathRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTotemOfWrathRank1Success",
    testCategory,
    30706
  )
end
