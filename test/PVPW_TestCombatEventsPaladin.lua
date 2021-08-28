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
mod.testCombatEventsPaladin = me

me.tag = "TestCombatEventsPaladin"

local testGroupName = "CombatEventsPaladin"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES_NEW.PALADIN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengingWrathApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengingWrathRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfFreedomApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfFreedomRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfLightRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank8Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank8Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank8Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfMightRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfProtectionRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfProtectionRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfProtectionRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfProtectionRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfProtectionRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfProtectionRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSacrificeRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfWisdomRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCleanseSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConcentrationAuraSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConsecrationRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConsecrationRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConsecrationRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConsecrationRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConsecrationRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConsecrationRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCrusaderAuraSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevotionAuraRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineInterventionSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineProtectionRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineProtectionRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineProtectionRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineProtectionRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineShieldRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineShieldRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineShieldRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineShieldRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceAuraRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceAuraRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceAuraRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireResistanceAuraRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashOfLightRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceAuraRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceAuraRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceAuraRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostResistanceAuraRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfKingsApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfKingsRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfKingsRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfLightRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfLightRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfLightRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfLightRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfLightRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfLightRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfMightRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterBlessingOfWisdomRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfJusticeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfJusticeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfJusticeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfJusticeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHammerOfWrathRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyLightRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventJudgementSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLayOnHandsRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLayOnHandsRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLayOnHandsRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLayOnHandsRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPurifySuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRedemptionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRedemptionRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRedemptionRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRedemptionRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRedemptionRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetributionAuraRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetributionAuraRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetributionAuraRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetributionAuraRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetributionAuraRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRetributionAuraRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfBloodRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfCorruptionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfJusticeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfJusticeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfLightRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfLightRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfLightRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfLightRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfLightRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfRighteousnessRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheCrusaderRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheCrusaderRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheCrusaderRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheCrusaderRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheCrusaderRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheCrusaderRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheCrusaderRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfTheMartyrRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfVengeanceRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfWisdomRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfWisdomRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfWisdomRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfWisdomRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowResistanceAuraRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowResistanceAuraRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowResistanceAuraRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowResistanceAuraRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengersShieldRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengersShieldRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAvengersShieldRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfKingsApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfKingsRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfKingsRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlessingOfSanctuaryRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCrusaderStrikeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineFavorSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyShockRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyShockRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyShockRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyShockRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyShockRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRepentanceSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfCommandRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfCommandRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfCommandRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfCommandRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfCommandRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSealOfCommandRank6Success)
end

function me.TestCombatEventAvengingWrathApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAvengingWrathApplied",
    testCategory,
    31884
  )
end

function me.TestCombatEventAvengingWrathRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAvengingWrathRemoved",
    testCategory,
    31884
  )
end

function me.TestCombatEventBlessingOfFreedomApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfFreedomApplied",
    testCategory,
    1044
  )
end

function me.TestCombatEventBlessingOfFreedomRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfFreedomRemoved",
    testCategory,
    1044
  )
end

function me.TestCombatEventBlessingOfLightRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfLightRank1Applied",
    testCategory,
    19977
  )
end

function me.TestCombatEventBlessingOfLightRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfLightRank1Removed",
    testCategory,
    19977
  )
end

function me.TestCombatEventBlessingOfLightRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfLightRank1Refresh",
    testCategory,
    19977
  )
end

function me.TestCombatEventBlessingOfLightRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfLightRank2Applied",
    testCategory,
    19978
  )
end

function me.TestCombatEventBlessingOfLightRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfLightRank2Removed",
    testCategory,
    19978
  )
end

function me.TestCombatEventBlessingOfLightRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfLightRank2Refresh",
    testCategory,
    19978
  )
end

function me.TestCombatEventBlessingOfLightRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfLightRank3Applied",
    testCategory,
    19979
  )
end

function me.TestCombatEventBlessingOfLightRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfLightRank3Removed",
    testCategory,
    19979
  )
end

function me.TestCombatEventBlessingOfLightRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfLightRank3Refresh",
    testCategory,
    19979
  )
end

function me.TestCombatEventBlessingOfLightRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfLightRank4Applied",
    testCategory,
    27144
  )
end

function me.TestCombatEventBlessingOfLightRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfLightRank4Removed",
    testCategory,
    27144
  )
end

function me.TestCombatEventBlessingOfLightRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfLightRank4Refresh",
    testCategory,
    27144
  )
end

function me.TestCombatEventBlessingOfMightRank8Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank8Applied",
    testCategory,
    27140
  )
end

function me.TestCombatEventBlessingOfMightRank8Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank8Removed",
    testCategory,
    27140
  )
end

function me.TestCombatEventBlessingOfMightRank8Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank8Refresh",
    testCategory,
    27140
  )
end

function me.TestCombatEventBlessingOfMightRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank1Applied",
    testCategory,
    19740
  )
end

function me.TestCombatEventBlessingOfMightRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank1Removed",
    testCategory,
    19740
  )
end

function me.TestCombatEventBlessingOfMightRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank1Refresh",
    testCategory,
    19740
  )
end

function me.TestCombatEventBlessingOfMightRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank2Applied",
    testCategory,
    19834
  )
end

function me.TestCombatEventBlessingOfMightRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank2Removed",
    testCategory,
    19834
  )
end

function me.TestCombatEventBlessingOfMightRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank2Refresh",
    testCategory,
    19834
  )
end

function me.TestCombatEventBlessingOfMightRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank3Applied",
    testCategory,
    19835
  )
end

function me.TestCombatEventBlessingOfMightRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank3Removed",
    testCategory,
    19835
  )
end

function me.TestCombatEventBlessingOfMightRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank3Refresh",
    testCategory,
    19835
  )
end

function me.TestCombatEventBlessingOfMightRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank4Applied",
    testCategory,
    19836
  )
end

function me.TestCombatEventBlessingOfMightRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank4Removed",
    testCategory,
    19836
  )
end

function me.TestCombatEventBlessingOfMightRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank4Refresh",
    testCategory,
    19836
  )
end

function me.TestCombatEventBlessingOfMightRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank5Applied",
    testCategory,
    19837
  )
end

function me.TestCombatEventBlessingOfMightRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank5Removed",
    testCategory,
    19837
  )
end

function me.TestCombatEventBlessingOfMightRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank5Refresh",
    testCategory,
    19837
  )
end

function me.TestCombatEventBlessingOfMightRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank6Applied",
    testCategory,
    19838
  )
end

function me.TestCombatEventBlessingOfMightRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank6Removed",
    testCategory,
    19838
  )
end

function me.TestCombatEventBlessingOfMightRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank6Refresh",
    testCategory,
    19838
  )
end

function me.TestCombatEventBlessingOfMightRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfMightRank7Applied",
    testCategory,
    25291
  )
end

function me.TestCombatEventBlessingOfMightRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfMightRank7Removed",
    testCategory,
    25291
  )
end

function me.TestCombatEventBlessingOfMightRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfMightRank7Refresh",
    testCategory,
    25291
  )
end

function me.TestCombatEventBlessingOfProtectionRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfProtectionRank1Applied",
    testCategory,
    1022
  )
end

function me.TestCombatEventBlessingOfProtectionRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfProtectionRank1Removed",
    testCategory,
    1022
  )
end

function me.TestCombatEventBlessingOfProtectionRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfProtectionRank2Applied",
    testCategory,
    5599
  )
end

function me.TestCombatEventBlessingOfProtectionRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfProtectionRank2Removed",
    testCategory,
    5599
  )
end

function me.TestCombatEventBlessingOfProtectionRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfProtectionRank3Applied",
    testCategory,
    10278
  )
end

function me.TestCombatEventBlessingOfProtectionRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfProtectionRank3Removed",
    testCategory,
    10278
  )
end

function me.TestCombatEventBlessingOfSacrificeRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSacrificeRank1Applied",
    testCategory,
    6940
  )
end

function me.TestCombatEventBlessingOfSacrificeRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSacrificeRank1Removed",
    testCategory,
    6940
  )
end

function me.TestCombatEventBlessingOfSacrificeRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSacrificeRank1Refresh",
    testCategory,
    6940
  )
end

function me.TestCombatEventBlessingOfSacrificeRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSacrificeRank2Applied",
    testCategory,
    20729
  )
end

function me.TestCombatEventBlessingOfSacrificeRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSacrificeRank2Removed",
    testCategory,
    20729
  )
end

function me.TestCombatEventBlessingOfSacrificeRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSacrificeRank2Refresh",
    testCategory,
    20729
  )
end

function me.TestCombatEventBlessingOfSacrificeRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSacrificeRank3Applied",
    testCategory,
    27147
  )
end

function me.TestCombatEventBlessingOfSacrificeRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSacrificeRank3Removed",
    testCategory,
    27147
  )
end

function me.TestCombatEventBlessingOfSacrificeRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSacrificeRank3Refresh",
    testCategory,
    27147
  )
end

function me.TestCombatEventBlessingOfSacrificeRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSacrificeRank4Applied",
    testCategory,
    27148
  )
end

function me.TestCombatEventBlessingOfSacrificeRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSacrificeRank4Removed",
    testCategory,
    27148
  )
end

function me.TestCombatEventBlessingOfSacrificeRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSacrificeRank4Refresh",
    testCategory,
    27148
  )
end

function me.TestCombatEventBlessingOfWisdomRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfWisdomRank1Applied",
    testCategory,
    19742
  )
end

function me.TestCombatEventBlessingOfWisdomRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfWisdomRank1Removed",
    testCategory,
    19742
  )
end

function me.TestCombatEventBlessingOfWisdomRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfWisdomRank1Refresh",
    testCategory,
    19742
  )
end

function me.TestCombatEventBlessingOfWisdomRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfWisdomRank2Applied",
    testCategory,
    19850
  )
end

function me.TestCombatEventBlessingOfWisdomRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfWisdomRank2Removed",
    testCategory,
    19850
  )
end

function me.TestCombatEventBlessingOfWisdomRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfWisdomRank2Refresh",
    testCategory,
    19850
  )
end

function me.TestCombatEventBlessingOfWisdomRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfWisdomRank3Applied",
    testCategory,
    19852
  )
end

function me.TestCombatEventBlessingOfWisdomRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfWisdomRank3Removed",
    testCategory,
    19852
  )
end

function me.TestCombatEventBlessingOfWisdomRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfWisdomRank3Refresh",
    testCategory,
    19852
  )
end

function me.TestCombatEventBlessingOfWisdomRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfWisdomRank4Applied",
    testCategory,
    19853
  )
end

function me.TestCombatEventBlessingOfWisdomRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfWisdomRank4Removed",
    testCategory,
    19853
  )
end

function me.TestCombatEventBlessingOfWisdomRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfWisdomRank4Refresh",
    testCategory,
    19853
  )
end

function me.TestCombatEventBlessingOfWisdomRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfWisdomRank5Applied",
    testCategory,
    19854
  )
end

function me.TestCombatEventBlessingOfWisdomRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfWisdomRank5Removed",
    testCategory,
    19854
  )
end

function me.TestCombatEventBlessingOfWisdomRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfWisdomRank5Refresh",
    testCategory,
    19854
  )
end

function me.TestCombatEventBlessingOfWisdomRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfWisdomRank6Applied",
    testCategory,
    25290
  )
end

function me.TestCombatEventBlessingOfWisdomRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfWisdomRank6Removed",
    testCategory,
    25290
  )
end

function me.TestCombatEventBlessingOfWisdomRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfWisdomRank6Refresh",
    testCategory,
    25290
  )
end

function me.TestCombatEventBlessingOfWisdomRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfWisdomRank7Applied",
    testCategory,
    27142
  )
end

function me.TestCombatEventBlessingOfWisdomRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfWisdomRank7Removed",
    testCategory,
    27142
  )
end

function me.TestCombatEventBlessingOfWisdomRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfWisdomRank7Refresh",
    testCategory,
    27142
  )
end

function me.TestCombatEventCleanseSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCleanseSuccess",
    testCategory,
    4987
  )
end

function me.TestCombatEventConcentrationAuraSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConcentrationAuraSuccess",
    testCategory,
    19746
  )
end

function me.TestCombatEventConsecrationRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConsecrationRank1Success",
    testCategory,
    26573
  )
end

function me.TestCombatEventConsecrationRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConsecrationRank2Success",
    testCategory,
    20116
  )
end

function me.TestCombatEventConsecrationRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConsecrationRank3Success",
    testCategory,
    20922
  )
end

function me.TestCombatEventConsecrationRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConsecrationRank4Success",
    testCategory,
    20923
  )
end

function me.TestCombatEventConsecrationRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConsecrationRank5Success",
    testCategory,
    20924
  )
end

function me.TestCombatEventConsecrationRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConsecrationRank6Success",
    testCategory,
    27173
  )
end

function me.TestCombatEventCrusaderAuraSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCrusaderAuraSuccess",
    testCategory,
    32223
  )
end

function me.TestCombatEventDevotionAuraRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank1Success",
    testCategory,
    465
  )
end

function me.TestCombatEventDevotionAuraRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank2Success",
    testCategory,
    10290
  )
end

function me.TestCombatEventDevotionAuraRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank3Success",
    testCategory,
    643
  )
end

function me.TestCombatEventDevotionAuraRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank4Success",
    testCategory,
    10291
  )
end

function me.TestCombatEventDevotionAuraRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank5Success",
    testCategory,
    1032
  )
end

function me.TestCombatEventDevotionAuraRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank6Success",
    testCategory,
    10292
  )
end

function me.TestCombatEventDevotionAuraRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank7Success",
    testCategory,
    10293
  )
end

function me.TestCombatEventDevotionAuraRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevotionAuraRank8Success",
    testCategory,
    27149
  )
end

function me.TestCombatEventDivineInterventionSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDivineInterventionSuccess",
    testCategory,
    19752
  )
end

function me.TestCombatEventDivineProtectionRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineProtectionRank1Applied",
    testCategory,
    498
  )
end

function me.TestCombatEventDivineProtectionRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineProtectionRank1Removed",
    testCategory,
    498
  )
end

function me.TestCombatEventDivineProtectionRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineProtectionRank2Applied",
    testCategory,
    5573
  )
end

function me.TestCombatEventDivineProtectionRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineProtectionRank2Removed",
    testCategory,
    5573
  )
end

function me.TestCombatEventDivineShieldRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineShieldRank1Applied",
    testCategory,
    642
  )
end

function me.TestCombatEventDivineShieldRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineShieldRank1Removed",
    testCategory,
    642
  )
end

function me.TestCombatEventDivineShieldRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineShieldRank2Applied",
    testCategory,
    1020
  )
end

function me.TestCombatEventDivineShieldRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineShieldRank2Removed",
    testCategory,
    1020
  )
end

function me.TestCombatEventFireResistanceAuraRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceAuraRank1Success",
    testCategory,
    19891
  )
end

function me.TestCombatEventFireResistanceAuraRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceAuraRank2Success",
    testCategory,
    19899
  )
end

function me.TestCombatEventFireResistanceAuraRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceAuraRank3Success",
    testCategory,
    19900
  )
end

function me.TestCombatEventFireResistanceAuraRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireResistanceAuraRank4Success",
    testCategory,
    27153
  )
end

function me.TestCombatEventFlashOfLightRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashOfLightRank1Success",
    testCategory,
    19750
  )
end

function me.TestCombatEventFlashOfLightRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashOfLightRank2Success",
    testCategory,
    19939
  )
end

function me.TestCombatEventFlashOfLightRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashOfLightRank3Success",
    testCategory,
    19940
  )
end

function me.TestCombatEventFlashOfLightRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashOfLightRank4Success",
    testCategory,
    19941
  )
end

function me.TestCombatEventFlashOfLightRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashOfLightRank5Success",
    testCategory,
    19942
  )
end

function me.TestCombatEventFlashOfLightRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashOfLightRank6Success",
    testCategory,
    19943
  )
end

function me.TestCombatEventFlashOfLightRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashOfLightRank7Success",
    testCategory,
    27137
  )
end

function me.TestCombatEventFrostResistanceAuraRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceAuraRank1Success",
    testCategory,
    19888
  )
end

function me.TestCombatEventFrostResistanceAuraRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceAuraRank2Success",
    testCategory,
    19897
  )
end

function me.TestCombatEventFrostResistanceAuraRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceAuraRank3Success",
    testCategory,
    19898
  )
end

function me.TestCombatEventFrostResistanceAuraRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostResistanceAuraRank4Success",
    testCategory,
    27152
  )
end

function me.TestCombatEventGreaterBlessingOfKingsApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfKingsApplied",
    testCategory,
    25898
  )
end

function me.TestCombatEventGreaterBlessingOfKingsRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfKingsRemoved",
    testCategory,
    25898
  )
end

function me.TestCombatEventGreaterBlessingOfKingsRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfKingsRefresh",
    testCategory,
    25898
  )
end

function me.TestCombatEventGreaterBlessingOfLightRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfLightRank1Applied",
    testCategory,
    25890
  )
end

function me.TestCombatEventGreaterBlessingOfLightRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfLightRank1Removed",
    testCategory,
    25890
  )
end

function me.TestCombatEventGreaterBlessingOfLightRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfLightRank1Refresh",
    testCategory,
    25890
  )
end

function me.TestCombatEventGreaterBlessingOfLightRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfLightRank2Applied",
    testCategory,
    27145
  )
end

function me.TestCombatEventGreaterBlessingOfLightRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfLightRank2Removed",
    testCategory,
    27145
  )
end

function me.TestCombatEventGreaterBlessingOfLightRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfLightRank2Refresh",
    testCategory,
    27145
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfMightRank1Applied",
    testCategory,
    25782
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfMightRank1Removed",
    testCategory,
    25782
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfMightRank1Refresh",
    testCategory,
    25782
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfMightRank2Applied",
    testCategory,
    25916
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfMightRank2Removed",
    testCategory,
    25916
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfMightRank2Refresh",
    testCategory,
    25916
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfMightRank3Applied",
    testCategory,
    27141
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfMightRank3Removed",
    testCategory,
    27141
  )
end

function me.TestCombatEventGreaterBlessingOfMightRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfMightRank3Refresh",
    testCategory,
    27141
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfWisdomRank1Applied",
    testCategory,
    25894
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfWisdomRank1Removed",
    testCategory,
    25894
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfWisdomRank1Refresh",
    testCategory,
    25894
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfWisdomRank2Applied",
    testCategory,
    25918
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfWisdomRank2Removed",
    testCategory,
    25918
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfWisdomRank2Refresh",
    testCategory,
    25918
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGreaterBlessingOfWisdomRank3Applied",
    testCategory,
    27143
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGreaterBlessingOfWisdomRank3Removed",
    testCategory,
    27143
  )
end

function me.TestCombatEventGreaterBlessingOfWisdomRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventGreaterBlessingOfWisdomRank3Refresh",
    testCategory,
    27143
  )
end

function me.TestCombatEventHammerOfJusticeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfJusticeRank1Success",
    testCategory,
    853
  )
end

function me.TestCombatEventHammerOfJusticeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfJusticeRank2Success",
    testCategory,
    5588
  )
end

function me.TestCombatEventHammerOfJusticeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfJusticeRank3Success",
    testCategory,
    5589
  )
end

function me.TestCombatEventHammerOfJusticeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfJusticeRank4Success",
    testCategory,
    10308
  )
end

function me.TestCombatEventHammerOfWrathRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfWrathRank1Success",
    testCategory,
    24275
  )
end

function me.TestCombatEventHammerOfWrathRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfWrathRank2Success",
    testCategory,
    24274
  )
end

function me.TestCombatEventHammerOfWrathRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfWrathRank3Success",
    testCategory,
    24239
  )
end

function me.TestCombatEventHammerOfWrathRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHammerOfWrathRank4Success",
    testCategory,
    27180
  )
end

function me.TestCombatEventHolyLightRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank1Success",
    testCategory,
    635
  )
end

function me.TestCombatEventHolyLightRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank2Success",
    testCategory,
    639
  )
end

function me.TestCombatEventHolyLightRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank3Success",
    testCategory,
    647
  )
end

function me.TestCombatEventHolyLightRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank4Success",
    testCategory,
    1026
  )
end

function me.TestCombatEventHolyLightRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank5Success",
    testCategory,
    1042
  )
end

function me.TestCombatEventHolyLightRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank6Success",
    testCategory,
    3472
  )
end

function me.TestCombatEventHolyLightRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank7Success",
    testCategory,
    10328
  )
end

function me.TestCombatEventHolyLightRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank8Success",
    testCategory,
    10329
  )
end

function me.TestCombatEventHolyLightRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank9Success",
    testCategory,
    25292
  )
end

function me.TestCombatEventHolyLightRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank10Success",
    testCategory,
    27135
  )
end

function me.TestCombatEventHolyLightRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyLightRank11Success",
    testCategory,
    27136
  )
end

function me.TestCombatEventJudgementSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventJudgementSuccess",
    testCategory,
    20271
  )
end

function me.TestCombatEventLayOnHandsRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLayOnHandsRank1Success",
    testCategory,
    633
  )
end

function me.TestCombatEventLayOnHandsRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLayOnHandsRank2Success",
    testCategory,
    2800
  )
end

function me.TestCombatEventLayOnHandsRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLayOnHandsRank3Success",
    testCategory,
    10310
  )
end

function me.TestCombatEventLayOnHandsRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLayOnHandsRank4Success",
    testCategory,
    27154
  )
end

function me.TestCombatEventPurifySuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPurifySuccess",
    testCategory,
    1152
  )
end

function me.TestCombatEventRedemptionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRedemptionRank1Success",
    testCategory,
    7328
  )
end

function me.TestCombatEventRedemptionRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRedemptionRank2Success",
    testCategory,
    10322
  )
end

function me.TestCombatEventRedemptionRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRedemptionRank3Success",
    testCategory,
    10324
  )
end

function me.TestCombatEventRedemptionRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRedemptionRank4Success",
    testCategory,
    20772
  )
end

function me.TestCombatEventRedemptionRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRedemptionRank5Success",
    testCategory,
    20773
  )
end

function me.TestCombatEventRetributionAuraRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRetributionAuraRank1Success",
    testCategory,
    7294
  )
end

function me.TestCombatEventRetributionAuraRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRetributionAuraRank2Success",
    testCategory,
    10298
  )
end

function me.TestCombatEventRetributionAuraRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRetributionAuraRank3Success",
    testCategory,
    10299
  )
end

function me.TestCombatEventRetributionAuraRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRetributionAuraRank4Success",
    testCategory,
    10300
  )
end

function me.TestCombatEventRetributionAuraRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRetributionAuraRank5Success",
    testCategory,
    10301
  )
end

function me.TestCombatEventRetributionAuraRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRetributionAuraRank6Success",
    testCategory,
    27150
  )
end

function me.TestCombatEventSealOfBloodRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfBloodRank1Success",
    testCategory,
    31892
  )
end

function me.TestCombatEventSealOfCorruptionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfCorruptionRank1Success",
    testCategory,
    348704
  )
end

function me.TestCombatEventSealOfJusticeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfJusticeRank1Success",
    testCategory,
    20164
  )
end

function me.TestCombatEventSealOfJusticeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfJusticeRank2Success",
    testCategory,
    31895
  )
end

function me.TestCombatEventSealOfLightRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfLightRank5Success",
    testCategory,
    27160
  )
end

function me.TestCombatEventSealOfLightRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfLightRank1Success",
    testCategory,
    20165
  )
end

function me.TestCombatEventSealOfLightRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfLightRank2Success",
    testCategory,
    20347
  )
end

function me.TestCombatEventSealOfLightRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfLightRank3Success",
    testCategory,
    20348
  )
end

function me.TestCombatEventSealOfLightRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfLightRank4Success",
    testCategory,
    20349
  )
end

function me.TestCombatEventSealOfRighteousnessRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank1Success",
    testCategory,
    21084
  )
end

function me.TestCombatEventSealOfRighteousnessRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank2Success",
    testCategory,
    20287
  )
end

function me.TestCombatEventSealOfRighteousnessRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank3Success",
    testCategory,
    20288
  )
end

function me.TestCombatEventSealOfRighteousnessRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank4Success",
    testCategory,
    20289
  )
end

function me.TestCombatEventSealOfRighteousnessRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank5Success",
    testCategory,
    20290
  )
end

function me.TestCombatEventSealOfRighteousnessRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank6Success",
    testCategory,
    20291
  )
end

function me.TestCombatEventSealOfRighteousnessRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank7Success",
    testCategory,
    20292
  )
end

function me.TestCombatEventSealOfRighteousnessRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank8Success",
    testCategory,
    20293
  )
end

function me.TestCombatEventSealOfRighteousnessRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfRighteousnessRank9Success",
    testCategory,
    27155
  )
end

function me.TestCombatEventSealOfTheCrusaderRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheCrusaderRank7Success",
    testCategory,
    27158
  )
end

function me.TestCombatEventSealOfTheCrusaderRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheCrusaderRank1Success",
    testCategory,
    21082
  )
end

function me.TestCombatEventSealOfTheCrusaderRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheCrusaderRank2Success",
    testCategory,
    20162
  )
end

function me.TestCombatEventSealOfTheCrusaderRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheCrusaderRank3Success",
    testCategory,
    20305
  )
end

function me.TestCombatEventSealOfTheCrusaderRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheCrusaderRank4Success",
    testCategory,
    20306
  )
end

function me.TestCombatEventSealOfTheCrusaderRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheCrusaderRank5Success",
    testCategory,
    20307
  )
end

function me.TestCombatEventSealOfTheCrusaderRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheCrusaderRank6Success",
    testCategory,
    20308
  )
end

function me.TestCombatEventSealOfTheMartyrRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfTheMartyrRank1Success",
    testCategory,
    348700
  )
end

function me.TestCombatEventSealOfVengeanceRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfVengeanceRank1Success",
    testCategory,
    31801
  )
end

function me.TestCombatEventSealOfWisdomRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfWisdomRank1Success",
    testCategory,
    20166
  )
end

function me.TestCombatEventSealOfWisdomRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfWisdomRank2Success",
    testCategory,
    20356
  )
end

function me.TestCombatEventSealOfWisdomRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfWisdomRank3Success",
    testCategory,
    20357
  )
end

function me.TestCombatEventSealOfWisdomRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfWisdomRank4Success",
    testCategory,
    27166
  )
end

function me.TestCombatEventShadowResistanceAuraRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowResistanceAuraRank1Success",
    testCategory,
    19876
  )
end

function me.TestCombatEventShadowResistanceAuraRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowResistanceAuraRank2Success",
    testCategory,
    19895
  )
end

function me.TestCombatEventShadowResistanceAuraRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowResistanceAuraRank3Success",
    testCategory,
    19896
  )
end

function me.TestCombatEventShadowResistanceAuraRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowResistanceAuraRank4Success",
    testCategory,
    27151
  )
end

function me.TestCombatEventAvengersShieldRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAvengersShieldRank1Success",
    testCategory,
    31935
  )
end

function me.TestCombatEventAvengersShieldRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAvengersShieldRank2Success",
    testCategory,
    32699
  )
end

function me.TestCombatEventAvengersShieldRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAvengersShieldRank3Success",
    testCategory,
    32700
  )
end

function me.TestCombatEventBlessingOfKingsApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfKingsApplied",
    testCategory,
    20217
  )
end

function me.TestCombatEventBlessingOfKingsRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfKingsRemoved",
    testCategory,
    20217
  )
end

function me.TestCombatEventBlessingOfKingsRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfKingsRefresh",
    testCategory,
    20217
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSanctuaryRank1Applied",
    testCategory,
    20911
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSanctuaryRank1Removed",
    testCategory,
    20911
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSanctuaryRank1Refresh",
    testCategory,
    20911
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSanctuaryRank2Applied",
    testCategory,
    20912
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSanctuaryRank2Removed",
    testCategory,
    20912
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSanctuaryRank2Refresh",
    testCategory,
    20912
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSanctuaryRank3Applied",
    testCategory,
    20913
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSanctuaryRank3Removed",
    testCategory,
    20913
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSanctuaryRank3Refresh",
    testCategory,
    20913
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSanctuaryRank4Applied",
    testCategory,
    20914
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSanctuaryRank4Removed",
    testCategory,
    20914
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSanctuaryRank4Refresh",
    testCategory,
    20914
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBlessingOfSanctuaryRank5Applied",
    testCategory,
    27168
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBlessingOfSanctuaryRank5Removed",
    testCategory,
    27168
  )
end

function me.TestCombatEventBlessingOfSanctuaryRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventBlessingOfSanctuaryRank5Refresh",
    testCategory,
    27168
  )
end

function me.TestCombatEventCrusaderStrikeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCrusaderStrikeSuccess",
    testCategory,
    35395
  )
end

function me.TestCombatEventDivineFavorSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDivineFavorSuccess",
    testCategory,
    20216
  )
end

function me.TestCombatEventHolyShockRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyShockRank1Success",
    testCategory,
    20473
  )
end

function me.TestCombatEventHolyShockRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyShockRank2Success",
    testCategory,
    20929
  )
end

function me.TestCombatEventHolyShockRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyShockRank3Success",
    testCategory,
    20930
  )
end

function me.TestCombatEventHolyShockRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyShockRank4Success",
    testCategory,
    27174
  )
end

function me.TestCombatEventHolyShockRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyShockRank5Success",
    testCategory,
    33072
  )
end

function me.TestCombatEventRepentanceSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRepentanceSuccess",
    testCategory,
    20066
  )
end

function me.TestCombatEventSealOfCommandRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfCommandRank1Success",
    testCategory,
    20375
  )
end

function me.TestCombatEventSealOfCommandRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfCommandRank2Success",
    testCategory,
    20915
  )
end

function me.TestCombatEventSealOfCommandRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfCommandRank3Success",
    testCategory,
    20918
  )
end

function me.TestCombatEventSealOfCommandRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfCommandRank4Success",
    testCategory,
    20919
  )
end

function me.TestCombatEventSealOfCommandRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfCommandRank5Success",
    testCategory,
    20920
  )
end

function me.TestCombatEventSealOfCommandRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSealOfCommandRank6Success",
    testCategory,
    27170
  )
end
