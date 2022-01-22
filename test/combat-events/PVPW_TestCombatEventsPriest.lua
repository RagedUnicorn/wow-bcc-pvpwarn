--[[
  MIT License

  Copyright (c) 2022 Michael Wiesendanger

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
mod.testCombatEventsPriest = me

me.tag = "TestCombatEventsPriest"

local testGroupName = "CombatEventsPriest"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAbolishDiseaseSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBindingHealSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChastiseRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChastiseRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChastiseRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChastiseRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChastiseRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventChastiseRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConsumeMagicSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCureDiseaseSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDesperatePrayerRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevouringPlagueRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevouringPlagueRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevouringPlagueRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevouringPlagueRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevouringPlagueRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevouringPlagueRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDevouringPlagueRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDispelMagicRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDispelMagicRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventElunesGraceApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventElunesGraceRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventElunesGraceRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearWardApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearWardRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFearWardRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeedbackRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlashHealRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGreaterHealRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexOfWeaknessRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexOfWeaknessRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexOfWeaknessRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexOfWeaknessRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexOfWeaknessRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexOfWeaknessRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexOfWeaknessRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyFireRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFireRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserHealRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLevitateApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLevitateRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLevitateRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaBurnRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMassDispelSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindBlastRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindControlRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindControlRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindControlRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindVisionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindVisionRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordFortitudeRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank8Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank8Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank8Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank9Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank9Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank9Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank10Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank10Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank10Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank11Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank11Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank11Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank12Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank12Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerWordShieldRank12Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfFortitudeRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfHealingRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfMendingSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfShadowProtectionRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfShadowProtectionRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfShadowProtectionRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfShadowProtectionRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfShadowProtectionRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfShadowProtectionRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfSpiritRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfSpiritRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfSpiritRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfSpiritRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfSpiritRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPrayerOfSpiritRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPsychicScreamRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPsychicScreamRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPsychicScreamRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPsychicScreamRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRenewRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventResurrectionRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowProtectionRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordDeathRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordDeathRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowWordPainRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowfiendSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowguardRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSmiteRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarshardsRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSymbolOfHopeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTouchOfWeaknessRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlackoutRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlackoutRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlackoutRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlackoutRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlackoutRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCircleOfHealingRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCircleOfHealingRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCircleOfHealingRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCircleOfHealingRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCircleOfHealingRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDivineSpiritRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyNovaRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyNovaRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyNovaRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyNovaRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyNovaRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyNovaRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHolyNovaRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFocusApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnerFocusRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindFlayRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindFlayRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindFlayRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindFlayRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindFlayRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindFlayRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindFlayRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPainSuppressionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPainSuppressionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerInfusionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPowerInfusionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowformApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowformRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSilenceSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVampiricEmbraceSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVampiricTouchRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVampiricTouchRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVampiricTouchRank3Success)
end

function me.TestCombatEventAbolishDiseaseSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAbolishDiseaseSuccess",
    testCategory,
    552
  )
end

function me.TestCombatEventBindingHealSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBindingHealSuccess",
    testCategory,
    32546
  )
end

function me.TestCombatEventChastiseRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChastiseRank1Success",
    testCategory,
    44041
  )
end

function me.TestCombatEventChastiseRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChastiseRank2Success",
    testCategory,
    44043
  )
end

function me.TestCombatEventChastiseRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChastiseRank3Success",
    testCategory,
    44044
  )
end

function me.TestCombatEventChastiseRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChastiseRank4Success",
    testCategory,
    44045
  )
end

function me.TestCombatEventChastiseRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChastiseRank5Success",
    testCategory,
    44046
  )
end

function me.TestCombatEventChastiseRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventChastiseRank6Success",
    testCategory,
    44047
  )
end

function me.TestCombatEventConsumeMagicSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConsumeMagicSuccess",
    testCategory,
    32676
  )
end

function me.TestCombatEventCureDiseaseSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCureDiseaseSuccess",
    testCategory,
    528
  )
end

function me.TestCombatEventDesperatePrayerRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank1Success",
    testCategory,
    13908
  )
end

function me.TestCombatEventDesperatePrayerRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank2Success",
    testCategory,
    19236
  )
end

function me.TestCombatEventDesperatePrayerRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank3Success",
    testCategory,
    19238
  )
end

function me.TestCombatEventDesperatePrayerRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank4Success",
    testCategory,
    19240
  )
end

function me.TestCombatEventDesperatePrayerRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank5Success",
    testCategory,
    19241
  )
end

function me.TestCombatEventDesperatePrayerRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank6Success",
    testCategory,
    19242
  )
end

function me.TestCombatEventDesperatePrayerRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank7Success",
    testCategory,
    19243
  )
end

function me.TestCombatEventDesperatePrayerRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDesperatePrayerRank8Success",
    testCategory,
    25437
  )
end

function me.TestCombatEventDevouringPlagueRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevouringPlagueRank1Success",
    testCategory,
    2944
  )
end

function me.TestCombatEventDevouringPlagueRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevouringPlagueRank2Success",
    testCategory,
    19276
  )
end

function me.TestCombatEventDevouringPlagueRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevouringPlagueRank3Success",
    testCategory,
    19277
  )
end

function me.TestCombatEventDevouringPlagueRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevouringPlagueRank4Success",
    testCategory,
    19278
  )
end

function me.TestCombatEventDevouringPlagueRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevouringPlagueRank5Success",
    testCategory,
    19279
  )
end

function me.TestCombatEventDevouringPlagueRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevouringPlagueRank6Success",
    testCategory,
    19280
  )
end

function me.TestCombatEventDevouringPlagueRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDevouringPlagueRank7Success",
    testCategory,
    25467
  )
end

function me.TestCombatEventDispelMagicRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDispelMagicRank1Success",
    testCategory,
    527
  )
end

function me.TestCombatEventDispelMagicRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDispelMagicRank2Success",
    testCategory,
    988
  )
end

function me.TestCombatEventElunesGraceApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventElunesGraceApplied",
    testCategory,
    2651
  )
end

function me.TestCombatEventElunesGraceRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventElunesGraceRemoved",
    testCategory,
    2651
  )
end

function me.TestCombatEventElunesGraceRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventElunesGraceRefresh",
    testCategory,
    2651
  )
end

function me.TestCombatEventFearWardApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFearWardApplied",
    testCategory,
    6346
  )
end

function me.TestCombatEventFearWardRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFearWardRemoved",
    testCategory,
    6346
  )
end

function me.TestCombatEventFearWardRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFearWardRefresh",
    testCategory,
    6346
  )
end

function me.TestCombatEventFeedbackRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFeedbackRank1Applied",
    testCategory,
    13896
  )
end

function me.TestCombatEventFeedbackRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFeedbackRank1Removed",
    testCategory,
    13896
  )
end

function me.TestCombatEventFeedbackRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFeedbackRank1Refresh",
    testCategory,
    13896
  )
end

function me.TestCombatEventFeedbackRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFeedbackRank2Applied",
    testCategory,
    19271
  )
end

function me.TestCombatEventFeedbackRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFeedbackRank2Removed",
    testCategory,
    19271
  )
end

function me.TestCombatEventFeedbackRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFeedbackRank2Refresh",
    testCategory,
    19271
  )
end

function me.TestCombatEventFeedbackRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFeedbackRank3Applied",
    testCategory,
    19273
  )
end

function me.TestCombatEventFeedbackRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFeedbackRank3Removed",
    testCategory,
    19273
  )
end

function me.TestCombatEventFeedbackRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFeedbackRank3Refresh",
    testCategory,
    19273
  )
end

function me.TestCombatEventFeedbackRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFeedbackRank4Applied",
    testCategory,
    19274
  )
end

function me.TestCombatEventFeedbackRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFeedbackRank4Removed",
    testCategory,
    19274
  )
end

function me.TestCombatEventFeedbackRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFeedbackRank4Refresh",
    testCategory,
    19274
  )
end

function me.TestCombatEventFeedbackRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFeedbackRank5Applied",
    testCategory,
    19275
  )
end

function me.TestCombatEventFeedbackRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFeedbackRank5Removed",
    testCategory,
    19275
  )
end

function me.TestCombatEventFeedbackRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFeedbackRank5Refresh",
    testCategory,
    19275
  )
end

function me.TestCombatEventFeedbackRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFeedbackRank6Applied",
    testCategory,
    25441
  )
end

function me.TestCombatEventFeedbackRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFeedbackRank6Removed",
    testCategory,
    25441
  )
end

function me.TestCombatEventFeedbackRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFeedbackRank6Refresh",
    testCategory,
    25441
  )
end

function me.TestCombatEventFlashHealRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank1Success",
    testCategory,
    2061
  )
end

function me.TestCombatEventFlashHealRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank2Success",
    testCategory,
    9472
  )
end

function me.TestCombatEventFlashHealRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank3Success",
    testCategory,
    9473
  )
end

function me.TestCombatEventFlashHealRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank4Success",
    testCategory,
    9474
  )
end

function me.TestCombatEventFlashHealRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank5Success",
    testCategory,
    10915
  )
end

function me.TestCombatEventFlashHealRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank6Success",
    testCategory,
    10916
  )
end

function me.TestCombatEventFlashHealRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank7Success",
    testCategory,
    10917
  )
end

function me.TestCombatEventFlashHealRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank8Success",
    testCategory,
    25233
  )
end

function me.TestCombatEventFlashHealRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlashHealRank9Success",
    testCategory,
    25235
  )
end

function me.TestCombatEventGreaterHealRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGreaterHealRank1Success",
    testCategory,
    2060
  )
end

function me.TestCombatEventGreaterHealRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGreaterHealRank2Success",
    testCategory,
    10963
  )
end

function me.TestCombatEventGreaterHealRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGreaterHealRank3Success",
    testCategory,
    10964
  )
end

function me.TestCombatEventGreaterHealRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGreaterHealRank4Success",
    testCategory,
    10965
  )
end

function me.TestCombatEventGreaterHealRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGreaterHealRank5Success",
    testCategory,
    25314
  )
end

function me.TestCombatEventGreaterHealRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGreaterHealRank6Success",
    testCategory,
    25210
  )
end

function me.TestCombatEventGreaterHealRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGreaterHealRank7Success",
    testCategory,
    25213
  )
end

function me.TestCombatEventHealRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealRank1Success",
    testCategory,
    2054
  )
end

function me.TestCombatEventHealRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealRank2Success",
    testCategory,
    2055
  )
end

function me.TestCombatEventHealRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealRank3Success",
    testCategory,
    6063
  )
end

function me.TestCombatEventHealRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealRank4Success",
    testCategory,
    6064
  )
end

function me.TestCombatEventHexOfWeaknessRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHexOfWeaknessRank1Success",
    testCategory,
    9035
  )
end

function me.TestCombatEventHexOfWeaknessRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHexOfWeaknessRank2Success",
    testCategory,
    19281
  )
end

function me.TestCombatEventHexOfWeaknessRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHexOfWeaknessRank3Success",
    testCategory,
    19282
  )
end

function me.TestCombatEventHexOfWeaknessRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHexOfWeaknessRank4Success",
    testCategory,
    19283
  )
end

function me.TestCombatEventHexOfWeaknessRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHexOfWeaknessRank5Success",
    testCategory,
    19284
  )
end

function me.TestCombatEventHexOfWeaknessRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHexOfWeaknessRank6Success",
    testCategory,
    19285
  )
end

function me.TestCombatEventHexOfWeaknessRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHexOfWeaknessRank7Success",
    testCategory,
    25470
  )
end

function me.TestCombatEventHolyFireRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank1Success",
    testCategory,
    14914
  )
end

function me.TestCombatEventHolyFireRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank2Success",
    testCategory,
    15262
  )
end

function me.TestCombatEventHolyFireRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank3Success",
    testCategory,
    15263
  )
end

function me.TestCombatEventHolyFireRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank4Success",
    testCategory,
    15264
  )
end

function me.TestCombatEventHolyFireRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank5Success",
    testCategory,
    15265
  )
end

function me.TestCombatEventHolyFireRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank6Success",
    testCategory,
    15266
  )
end

function me.TestCombatEventHolyFireRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank7Success",
    testCategory,
    15267
  )
end

function me.TestCombatEventHolyFireRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank8Success",
    testCategory,
    15261
  )
end

function me.TestCombatEventHolyFireRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyFireRank9Success",
    testCategory,
    25384
  )
end

function me.TestCombatEventInnerFireRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFireRank1Applied",
    testCategory,
    588
  )
end

function me.TestCombatEventInnerFireRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFireRank1Removed",
    testCategory,
    588
  )
end

function me.TestCombatEventInnerFireRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventInnerFireRank1Refresh",
    testCategory,
    588
  )
end

function me.TestCombatEventInnerFireRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFireRank2Applied",
    testCategory,
    7128
  )
end

function me.TestCombatEventInnerFireRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFireRank2Removed",
    testCategory,
    7128
  )
end

function me.TestCombatEventInnerFireRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventInnerFireRank2Refresh",
    testCategory,
    7128
  )
end

function me.TestCombatEventInnerFireRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFireRank3Applied",
    testCategory,
    602
  )
end

function me.TestCombatEventInnerFireRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFireRank3Removed",
    testCategory,
    602
  )
end

function me.TestCombatEventInnerFireRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventInnerFireRank3Refresh",
    testCategory,
    602
  )
end

function me.TestCombatEventInnerFireRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFireRank4Applied",
    testCategory,
    1006
  )
end

function me.TestCombatEventInnerFireRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFireRank4Removed",
    testCategory,
    1006
  )
end

function me.TestCombatEventInnerFireRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventInnerFireRank4Refresh",
    testCategory,
    1006
  )
end

function me.TestCombatEventInnerFireRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFireRank5Applied",
    testCategory,
    10951
  )
end

function me.TestCombatEventInnerFireRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFireRank5Removed",
    testCategory,
    10951
  )
end

function me.TestCombatEventInnerFireRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventInnerFireRank5Refresh",
    testCategory,
    10951
  )
end

function me.TestCombatEventInnerFireRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFireRank6Applied",
    testCategory,
    10952
  )
end

function me.TestCombatEventInnerFireRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFireRank6Removed",
    testCategory,
    10952
  )
end

function me.TestCombatEventInnerFireRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventInnerFireRank6Refresh",
    testCategory,
    10952
  )
end

function me.TestCombatEventInnerFireRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFireRank7Applied",
    testCategory,
    25431
  )
end

function me.TestCombatEventInnerFireRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFireRank7Removed",
    testCategory,
    25431
  )
end

function me.TestCombatEventInnerFireRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventInnerFireRank7Refresh",
    testCategory,
    25431
  )
end

function me.TestCombatEventLesserHealRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealRank1Success",
    testCategory,
    2050
  )
end

function me.TestCombatEventLesserHealRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealRank2Success",
    testCategory,
    2052
  )
end

function me.TestCombatEventLesserHealRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLesserHealRank3Success",
    testCategory,
    2053
  )
end

function me.TestCombatEventLevitateApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLevitateApplied",
    testCategory,
    1706
  )
end

function me.TestCombatEventLevitateRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLevitateRemoved",
    testCategory,
    1706
  )
end

function me.TestCombatEventLevitateRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventLevitateRefresh",
    testCategory,
    1706
  )
end

function me.TestCombatEventManaBurnRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaBurnRank1Success",
    testCategory,
    8129
  )
end

function me.TestCombatEventManaBurnRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaBurnRank2Success",
    testCategory,
    8131
  )
end

function me.TestCombatEventManaBurnRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaBurnRank3Success",
    testCategory,
    10874
  )
end

function me.TestCombatEventManaBurnRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaBurnRank4Success",
    testCategory,
    10875
  )
end

function me.TestCombatEventManaBurnRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaBurnRank5Success",
    testCategory,
    10876
  )
end

function me.TestCombatEventManaBurnRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaBurnRank6Success",
    testCategory,
    25379
  )
end

function me.TestCombatEventManaBurnRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaBurnRank7Success",
    testCategory,
    25380
  )
end

function me.TestCombatEventMassDispelSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMassDispelSuccess",
    testCategory,
    32375
  )
end

function me.TestCombatEventMindBlastRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank1Success",
    testCategory,
    8092
  )
end

function me.TestCombatEventMindBlastRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank2Success",
    testCategory,
    8102
  )
end

function me.TestCombatEventMindBlastRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank3Success",
    testCategory,
    8103
  )
end

function me.TestCombatEventMindBlastRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank4Success",
    testCategory,
    8104
  )
end

function me.TestCombatEventMindBlastRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank5Success",
    testCategory,
    8105
  )
end

function me.TestCombatEventMindBlastRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank6Success",
    testCategory,
    8106
  )
end

function me.TestCombatEventMindBlastRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank7Success",
    testCategory,
    10945
  )
end

function me.TestCombatEventMindBlastRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank8Success",
    testCategory,
    10946
  )
end

function me.TestCombatEventMindBlastRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank9Success",
    testCategory,
    10947
  )
end

function me.TestCombatEventMindBlastRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank10Success",
    testCategory,
    25372
  )
end

function me.TestCombatEventMindBlastRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindBlastRank11Success",
    testCategory,
    25375
  )
end

function me.TestCombatEventMindControlRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindControlRank1Success",
    testCategory,
    605
  )
end

function me.TestCombatEventMindControlRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindControlRank2Success",
    testCategory,
    10911
  )
end

function me.TestCombatEventMindControlRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindControlRank3Success",
    testCategory,
    10912
  )
end

function me.TestCombatEventMindVisionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindVisionRank1Success",
    testCategory,
    2096
  )
end

function me.TestCombatEventMindVisionRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindVisionRank2Success",
    testCategory,
    10909
  )
end

function me.TestCombatEventPowerWordFortitudeRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordFortitudeRank1Applied",
    testCategory,
    1243
  )
end

function me.TestCombatEventPowerWordFortitudeRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordFortitudeRank1Removed",
    testCategory,
    1243
  )
end

function me.TestCombatEventPowerWordFortitudeRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordFortitudeRank1Refresh",
    testCategory,
    1243
  )
end

function me.TestCombatEventPowerWordFortitudeRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordFortitudeRank2Applied",
    testCategory,
    1244
  )
end

function me.TestCombatEventPowerWordFortitudeRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordFortitudeRank2Removed",
    testCategory,
    1244
  )
end

function me.TestCombatEventPowerWordFortitudeRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordFortitudeRank2Refresh",
    testCategory,
    1244
  )
end

function me.TestCombatEventPowerWordFortitudeRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordFortitudeRank3Applied",
    testCategory,
    1245
  )
end

function me.TestCombatEventPowerWordFortitudeRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordFortitudeRank3Removed",
    testCategory,
    1245
  )
end

function me.TestCombatEventPowerWordFortitudeRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordFortitudeRank3Refresh",
    testCategory,
    1245
  )
end

function me.TestCombatEventPowerWordFortitudeRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordFortitudeRank4Applied",
    testCategory,
    2791
  )
end

function me.TestCombatEventPowerWordFortitudeRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordFortitudeRank4Removed",
    testCategory,
    2791
  )
end

function me.TestCombatEventPowerWordFortitudeRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordFortitudeRank4Refresh",
    testCategory,
    2791
  )
end

function me.TestCombatEventPowerWordFortitudeRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordFortitudeRank5Applied",
    testCategory,
    10937
  )
end

function me.TestCombatEventPowerWordFortitudeRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordFortitudeRank5Removed",
    testCategory,
    10937
  )
end

function me.TestCombatEventPowerWordFortitudeRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordFortitudeRank5Refresh",
    testCategory,
    10937
  )
end

function me.TestCombatEventPowerWordFortitudeRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordFortitudeRank6Applied",
    testCategory,
    10938
  )
end

function me.TestCombatEventPowerWordFortitudeRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordFortitudeRank6Removed",
    testCategory,
    10938
  )
end

function me.TestCombatEventPowerWordFortitudeRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordFortitudeRank6Refresh",
    testCategory,
    10938
  )
end

function me.TestCombatEventPowerWordFortitudeRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordFortitudeRank7Applied",
    testCategory,
    25389
  )
end

function me.TestCombatEventPowerWordFortitudeRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordFortitudeRank7Removed",
    testCategory,
    25389
  )
end

function me.TestCombatEventPowerWordFortitudeRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordFortitudeRank7Refresh",
    testCategory,
    25389
  )
end

function me.TestCombatEventPowerWordShieldRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank1Applied",
    testCategory,
    17
  )
end

function me.TestCombatEventPowerWordShieldRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank1Removed",
    testCategory,
    17
  )
end

function me.TestCombatEventPowerWordShieldRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank1Refresh",
    testCategory,
    17
  )
end

function me.TestCombatEventPowerWordShieldRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank2Applied",
    testCategory,
    592
  )
end

function me.TestCombatEventPowerWordShieldRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank2Removed",
    testCategory,
    592
  )
end

function me.TestCombatEventPowerWordShieldRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank2Refresh",
    testCategory,
    592
  )
end

function me.TestCombatEventPowerWordShieldRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank3Applied",
    testCategory,
    600
  )
end

function me.TestCombatEventPowerWordShieldRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank3Removed",
    testCategory,
    600
  )
end

function me.TestCombatEventPowerWordShieldRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank3Refresh",
    testCategory,
    600
  )
end

function me.TestCombatEventPowerWordShieldRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank4Applied",
    testCategory,
    3747
  )
end

function me.TestCombatEventPowerWordShieldRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank4Removed",
    testCategory,
    3747
  )
end

function me.TestCombatEventPowerWordShieldRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank4Refresh",
    testCategory,
    3747
  )
end

function me.TestCombatEventPowerWordShieldRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank5Applied",
    testCategory,
    6065
  )
end

function me.TestCombatEventPowerWordShieldRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank5Removed",
    testCategory,
    6065
  )
end

function me.TestCombatEventPowerWordShieldRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank5Refresh",
    testCategory,
    6065
  )
end

function me.TestCombatEventPowerWordShieldRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank6Applied",
    testCategory,
    6066
  )
end

function me.TestCombatEventPowerWordShieldRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank6Removed",
    testCategory,
    6066
  )
end

function me.TestCombatEventPowerWordShieldRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank6Refresh",
    testCategory,
    6066
  )
end

function me.TestCombatEventPowerWordShieldRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank7Applied",
    testCategory,
    10898
  )
end

function me.TestCombatEventPowerWordShieldRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank7Removed",
    testCategory,
    10898
  )
end

function me.TestCombatEventPowerWordShieldRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank7Refresh",
    testCategory,
    10898
  )
end

function me.TestCombatEventPowerWordShieldRank8Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank8Applied",
    testCategory,
    10899
  )
end

function me.TestCombatEventPowerWordShieldRank8Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank8Removed",
    testCategory,
    10899
  )
end

function me.TestCombatEventPowerWordShieldRank8Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank8Refresh",
    testCategory,
    10899
  )
end

function me.TestCombatEventPowerWordShieldRank9Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank9Applied",
    testCategory,
    10900
  )
end

function me.TestCombatEventPowerWordShieldRank9Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank9Removed",
    testCategory,
    10900
  )
end

function me.TestCombatEventPowerWordShieldRank9Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank9Refresh",
    testCategory,
    10900
  )
end

function me.TestCombatEventPowerWordShieldRank10Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank10Applied",
    testCategory,
    10901
  )
end

function me.TestCombatEventPowerWordShieldRank10Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank10Removed",
    testCategory,
    10901
  )
end

function me.TestCombatEventPowerWordShieldRank10Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank10Refresh",
    testCategory,
    10901
  )
end

function me.TestCombatEventPowerWordShieldRank11Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank11Applied",
    testCategory,
    25217
  )
end

function me.TestCombatEventPowerWordShieldRank11Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank11Removed",
    testCategory,
    25217
  )
end

function me.TestCombatEventPowerWordShieldRank11Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank11Refresh",
    testCategory,
    25217
  )
end

function me.TestCombatEventPowerWordShieldRank12Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerWordShieldRank12Applied",
    testCategory,
    25218
  )
end

function me.TestCombatEventPowerWordShieldRank12Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerWordShieldRank12Removed",
    testCategory,
    25218
  )
end

function me.TestCombatEventPowerWordShieldRank12Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPowerWordShieldRank12Refresh",
    testCategory,
    25218
  )
end

function me.TestCombatEventPrayerOfFortitudeRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPrayerOfFortitudeRank1Applied",
    testCategory,
    21562
  )
end

function me.TestCombatEventPrayerOfFortitudeRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPrayerOfFortitudeRank1Removed",
    testCategory,
    21562
  )
end

function me.TestCombatEventPrayerOfFortitudeRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPrayerOfFortitudeRank1Refresh",
    testCategory,
    21562
  )
end

function me.TestCombatEventPrayerOfFortitudeRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPrayerOfFortitudeRank2Applied",
    testCategory,
    21564
  )
end

function me.TestCombatEventPrayerOfFortitudeRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPrayerOfFortitudeRank2Removed",
    testCategory,
    21564
  )
end

function me.TestCombatEventPrayerOfFortitudeRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPrayerOfFortitudeRank2Refresh",
    testCategory,
    21564
  )
end

function me.TestCombatEventPrayerOfFortitudeRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPrayerOfFortitudeRank3Applied",
    testCategory,
    25392
  )
end

function me.TestCombatEventPrayerOfFortitudeRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPrayerOfFortitudeRank3Removed",
    testCategory,
    25392
  )
end

function me.TestCombatEventPrayerOfFortitudeRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPrayerOfFortitudeRank3Refresh",
    testCategory,
    25392
  )
end

function me.TestCombatEventPrayerOfHealingRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPrayerOfHealingRank1Success",
    testCategory,
    596
  )
end

function me.TestCombatEventPrayerOfHealingRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPrayerOfHealingRank2Success",
    testCategory,
    996
  )
end

function me.TestCombatEventPrayerOfHealingRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPrayerOfHealingRank3Success",
    testCategory,
    10960
  )
end

function me.TestCombatEventPrayerOfHealingRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPrayerOfHealingRank4Success",
    testCategory,
    10961
  )
end

function me.TestCombatEventPrayerOfHealingRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPrayerOfHealingRank5Success",
    testCategory,
    25316
  )
end

function me.TestCombatEventPrayerOfHealingRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPrayerOfHealingRank6Success",
    testCategory,
    25308
  )
end

function me.TestCombatEventPrayerOfMendingSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPrayerOfMendingSuccess",
    testCategory,
    33076
  )
end

function me.TestCombatEventPrayerOfShadowProtectionRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPrayerOfShadowProtectionRank1Applied",
    testCategory,
    27683
  )
end

function me.TestCombatEventPrayerOfShadowProtectionRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPrayerOfShadowProtectionRank1Removed",
    testCategory,
    27683
  )
end

function me.TestCombatEventPrayerOfShadowProtectionRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPrayerOfShadowProtectionRank1Refresh",
    testCategory,
    27683
  )
end

function me.TestCombatEventPrayerOfShadowProtectionRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPrayerOfShadowProtectionRank2Applied",
    testCategory,
    39374
  )
end

function me.TestCombatEventPrayerOfShadowProtectionRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPrayerOfShadowProtectionRank2Removed",
    testCategory,
    39374
  )
end

function me.TestCombatEventPrayerOfShadowProtectionRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPrayerOfShadowProtectionRank2Refresh",
    testCategory,
    39374
  )
end

function me.TestCombatEventPrayerOfSpiritRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPrayerOfSpiritRank1Applied",
    testCategory,
    27681
  )
end

function me.TestCombatEventPrayerOfSpiritRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPrayerOfSpiritRank1Removed",
    testCategory,
    27681
  )
end

function me.TestCombatEventPrayerOfSpiritRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPrayerOfSpiritRank1Refresh",
    testCategory,
    27681
  )
end

function me.TestCombatEventPrayerOfSpiritRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPrayerOfSpiritRank2Applied",
    testCategory,
    32999
  )
end

function me.TestCombatEventPrayerOfSpiritRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPrayerOfSpiritRank2Removed",
    testCategory,
    32999
  )
end

function me.TestCombatEventPrayerOfSpiritRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventPrayerOfSpiritRank2Refresh",
    testCategory,
    32999
  )
end

function me.TestCombatEventPsychicScreamRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPsychicScreamRank1Success",
    testCategory,
    8122
  )
end

function me.TestCombatEventPsychicScreamRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPsychicScreamRank2Success",
    testCategory,
    8124
  )
end

function me.TestCombatEventPsychicScreamRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPsychicScreamRank3Success",
    testCategory,
    10888
  )
end

function me.TestCombatEventPsychicScreamRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPsychicScreamRank4Success",
    testCategory,
    10890
  )
end

function me.TestCombatEventRenewRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank1Success",
    testCategory,
    139
  )
end

function me.TestCombatEventRenewRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank2Success",
    testCategory,
    6074
  )
end

function me.TestCombatEventRenewRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank3Success",
    testCategory,
    6075
  )
end

function me.TestCombatEventRenewRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank4Success",
    testCategory,
    6076
  )
end

function me.TestCombatEventRenewRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank5Success",
    testCategory,
    6077
  )
end

function me.TestCombatEventRenewRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank6Success",
    testCategory,
    6078
  )
end

function me.TestCombatEventRenewRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank7Success",
    testCategory,
    10927
  )
end

function me.TestCombatEventRenewRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank8Success",
    testCategory,
    10928
  )
end

function me.TestCombatEventRenewRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank9Success",
    testCategory,
    10929
  )
end

function me.TestCombatEventRenewRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank10Success",
    testCategory,
    25315
  )
end

function me.TestCombatEventRenewRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank11Success",
    testCategory,
    25221
  )
end

function me.TestCombatEventRenewRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRenewRank12Success",
    testCategory,
    25222
  )
end

function me.TestCombatEventResurrectionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventResurrectionRank1Success",
    testCategory,
    2006
  )
end

function me.TestCombatEventResurrectionRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventResurrectionRank2Success",
    testCategory,
    2010
  )
end

function me.TestCombatEventResurrectionRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventResurrectionRank3Success",
    testCategory,
    10880
  )
end

function me.TestCombatEventResurrectionRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventResurrectionRank4Success",
    testCategory,
    10881
  )
end

function me.TestCombatEventResurrectionRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventResurrectionRank5Success",
    testCategory,
    20770
  )
end

function me.TestCombatEventResurrectionRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventResurrectionRank6Success",
    testCategory,
    25435
  )
end

function me.TestCombatEventShadowProtectionRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowProtectionRank1Applied",
    testCategory,
    976
  )
end

function me.TestCombatEventShadowProtectionRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowProtectionRank1Removed",
    testCategory,
    976
  )
end

function me.TestCombatEventShadowProtectionRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowProtectionRank1Refresh",
    testCategory,
    976
  )
end

function me.TestCombatEventShadowProtectionRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowProtectionRank2Applied",
    testCategory,
    10957
  )
end

function me.TestCombatEventShadowProtectionRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowProtectionRank2Removed",
    testCategory,
    10957
  )
end

function me.TestCombatEventShadowProtectionRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowProtectionRank2Refresh",
    testCategory,
    10957
  )
end

function me.TestCombatEventShadowProtectionRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowProtectionRank3Applied",
    testCategory,
    10958
  )
end

function me.TestCombatEventShadowProtectionRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowProtectionRank3Removed",
    testCategory,
    10958
  )
end

function me.TestCombatEventShadowProtectionRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowProtectionRank3Refresh",
    testCategory,
    10958
  )
end

function me.TestCombatEventShadowProtectionRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowProtectionRank4Applied",
    testCategory,
    25433
  )
end

function me.TestCombatEventShadowProtectionRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowProtectionRank4Removed",
    testCategory,
    25433
  )
end

function me.TestCombatEventShadowProtectionRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowProtectionRank4Refresh",
    testCategory,
    25433
  )
end

function me.TestCombatEventShadowWordDeathRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordDeathRank1Success",
    testCategory,
    32379
  )
end

function me.TestCombatEventShadowWordDeathRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordDeathRank2Success",
    testCategory,
    32996
  )
end

function me.TestCombatEventShadowWordPainRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank1Success",
    testCategory,
    589
  )
end

function me.TestCombatEventShadowWordPainRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank2Success",
    testCategory,
    594
  )
end

function me.TestCombatEventShadowWordPainRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank3Success",
    testCategory,
    970
  )
end

function me.TestCombatEventShadowWordPainRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank4Success",
    testCategory,
    992
  )
end

function me.TestCombatEventShadowWordPainRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank5Success",
    testCategory,
    2767
  )
end

function me.TestCombatEventShadowWordPainRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank6Success",
    testCategory,
    10892
  )
end

function me.TestCombatEventShadowWordPainRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank7Success",
    testCategory,
    10893
  )
end

function me.TestCombatEventShadowWordPainRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank8Success",
    testCategory,
    10894
  )
end

function me.TestCombatEventShadowWordPainRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank9Success",
    testCategory,
    25367
  )
end

function me.TestCombatEventShadowWordPainRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowWordPainRank10Success",
    testCategory,
    25368
  )
end

function me.TestCombatEventShadowfiendSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowfiendSuccess",
    testCategory,
    34433
  )
end

function me.TestCombatEventShadowguardRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowguardRank1Applied",
    testCategory,
    18137
  )
end

function me.TestCombatEventShadowguardRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowguardRank1Removed",
    testCategory,
    18137
  )
end

function me.TestCombatEventShadowguardRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowguardRank1Refresh",
    testCategory,
    18137
  )
end

function me.TestCombatEventShadowguardRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowguardRank2Applied",
    testCategory,
    19308
  )
end

function me.TestCombatEventShadowguardRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowguardRank2Removed",
    testCategory,
    19308
  )
end

function me.TestCombatEventShadowguardRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowguardRank2Refresh",
    testCategory,
    19308
  )
end

function me.TestCombatEventShadowguardRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowguardRank3Applied",
    testCategory,
    19309
  )
end

function me.TestCombatEventShadowguardRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowguardRank3Removed",
    testCategory,
    19309
  )
end

function me.TestCombatEventShadowguardRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowguardRank3Refresh",
    testCategory,
    19309
  )
end

function me.TestCombatEventShadowguardRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowguardRank4Applied",
    testCategory,
    19310
  )
end

function me.TestCombatEventShadowguardRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowguardRank4Removed",
    testCategory,
    19310
  )
end

function me.TestCombatEventShadowguardRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowguardRank4Refresh",
    testCategory,
    19310
  )
end

function me.TestCombatEventShadowguardRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowguardRank5Applied",
    testCategory,
    19311
  )
end

function me.TestCombatEventShadowguardRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowguardRank5Removed",
    testCategory,
    19311
  )
end

function me.TestCombatEventShadowguardRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowguardRank5Refresh",
    testCategory,
    19311
  )
end

function me.TestCombatEventShadowguardRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowguardRank6Applied",
    testCategory,
    19312
  )
end

function me.TestCombatEventShadowguardRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowguardRank6Removed",
    testCategory,
    19312
  )
end

function me.TestCombatEventShadowguardRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowguardRank6Refresh",
    testCategory,
    19312
  )
end

function me.TestCombatEventShadowguardRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowguardRank7Applied",
    testCategory,
    25477
  )
end

function me.TestCombatEventShadowguardRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowguardRank7Removed",
    testCategory,
    25477
  )
end

function me.TestCombatEventShadowguardRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventShadowguardRank7Refresh",
    testCategory,
    25477
  )
end

function me.TestCombatEventSmiteRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank1Success",
    testCategory,
    585
  )
end

function me.TestCombatEventSmiteRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank2Success",
    testCategory,
    591
  )
end

function me.TestCombatEventSmiteRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank3Success",
    testCategory,
    598
  )
end

function me.TestCombatEventSmiteRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank4Success",
    testCategory,
    984
  )
end

function me.TestCombatEventSmiteRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank5Success",
    testCategory,
    1004
  )
end

function me.TestCombatEventSmiteRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank6Success",
    testCategory,
    6060
  )
end

function me.TestCombatEventSmiteRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank7Success",
    testCategory,
    10933
  )
end

function me.TestCombatEventSmiteRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank8Success",
    testCategory,
    10934
  )
end

function me.TestCombatEventSmiteRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank9Success",
    testCategory,
    25363
  )
end

function me.TestCombatEventSmiteRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSmiteRank10Success",
    testCategory,
    25364
  )
end

function me.TestCombatEventStarshardsRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank1Success",
    testCategory,
    10797
  )
end

function me.TestCombatEventStarshardsRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank2Success",
    testCategory,
    19296
  )
end

function me.TestCombatEventStarshardsRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank3Success",
    testCategory,
    19299
  )
end

function me.TestCombatEventStarshardsRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank4Success",
    testCategory,
    19302
  )
end

function me.TestCombatEventStarshardsRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank5Success",
    testCategory,
    19303
  )
end

function me.TestCombatEventStarshardsRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank6Success",
    testCategory,
    19304
  )
end

function me.TestCombatEventStarshardsRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank7Success",
    testCategory,
    19305
  )
end

function me.TestCombatEventStarshardsRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarshardsRank8Success",
    testCategory,
    25446
  )
end

function me.TestCombatEventSymbolOfHopeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSymbolOfHopeSuccess",
    testCategory,
    32548
  )
end

function me.TestCombatEventTouchOfWeaknessRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTouchOfWeaknessRank1Applied",
    testCategory,
    2652
  )
end

function me.TestCombatEventTouchOfWeaknessRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTouchOfWeaknessRank1Removed",
    testCategory,
    2652
  )
end

function me.TestCombatEventTouchOfWeaknessRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTouchOfWeaknessRank1Refresh",
    testCategory,
    2652
  )
end

function me.TestCombatEventTouchOfWeaknessRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTouchOfWeaknessRank2Applied",
    testCategory,
    19261
  )
end

function me.TestCombatEventTouchOfWeaknessRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTouchOfWeaknessRank2Removed",
    testCategory,
    19261
  )
end

function me.TestCombatEventTouchOfWeaknessRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTouchOfWeaknessRank2Refresh",
    testCategory,
    19261
  )
end

function me.TestCombatEventTouchOfWeaknessRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTouchOfWeaknessRank3Applied",
    testCategory,
    19262
  )
end

function me.TestCombatEventTouchOfWeaknessRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTouchOfWeaknessRank3Removed",
    testCategory,
    19262
  )
end

function me.TestCombatEventTouchOfWeaknessRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTouchOfWeaknessRank3Refresh",
    testCategory,
    19262
  )
end

function me.TestCombatEventTouchOfWeaknessRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTouchOfWeaknessRank4Applied",
    testCategory,
    19264
  )
end

function me.TestCombatEventTouchOfWeaknessRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTouchOfWeaknessRank4Removed",
    testCategory,
    19264
  )
end

function me.TestCombatEventTouchOfWeaknessRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTouchOfWeaknessRank4Refresh",
    testCategory,
    19264
  )
end

function me.TestCombatEventTouchOfWeaknessRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTouchOfWeaknessRank5Applied",
    testCategory,
    19265
  )
end

function me.TestCombatEventTouchOfWeaknessRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTouchOfWeaknessRank5Removed",
    testCategory,
    19265
  )
end

function me.TestCombatEventTouchOfWeaknessRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTouchOfWeaknessRank5Refresh",
    testCategory,
    19265
  )
end

function me.TestCombatEventTouchOfWeaknessRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTouchOfWeaknessRank6Applied",
    testCategory,
    19266
  )
end

function me.TestCombatEventTouchOfWeaknessRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTouchOfWeaknessRank6Removed",
    testCategory,
    19266
  )
end

function me.TestCombatEventTouchOfWeaknessRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTouchOfWeaknessRank6Refresh",
    testCategory,
    19266
  )
end

function me.TestCombatEventTouchOfWeaknessRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTouchOfWeaknessRank7Applied",
    testCategory,
    25461
  )
end

function me.TestCombatEventTouchOfWeaknessRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTouchOfWeaknessRank7Removed",
    testCategory,
    25461
  )
end

function me.TestCombatEventTouchOfWeaknessRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTouchOfWeaknessRank7Refresh",
    testCategory,
    25461
  )
end

function me.TestCombatEventBlackoutRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlackoutRank1Success",
    testCategory,
    15268
  )
end

function me.TestCombatEventBlackoutRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlackoutRank2Success",
    testCategory,
    15323
  )
end

function me.TestCombatEventBlackoutRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlackoutRank3Success",
    testCategory,
    15324
  )
end

function me.TestCombatEventBlackoutRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlackoutRank4Success",
    testCategory,
    15325
  )
end

function me.TestCombatEventBlackoutRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlackoutRank5Success",
    testCategory,
    15326
  )
end

function me.TestCombatEventCircleOfHealingRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCircleOfHealingRank1Success",
    testCategory,
    34861
  )
end

function me.TestCombatEventCircleOfHealingRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCircleOfHealingRank2Success",
    testCategory,
    34863
  )
end

function me.TestCombatEventCircleOfHealingRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCircleOfHealingRank3Success",
    testCategory,
    34864
  )
end

function me.TestCombatEventCircleOfHealingRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCircleOfHealingRank4Success",
    testCategory,
    34865
  )
end

function me.TestCombatEventCircleOfHealingRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCircleOfHealingRank5Success",
    testCategory,
    34866
  )
end

function me.TestCombatEventDivineSpiritRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineSpiritRank1Applied",
    testCategory,
    14752
  )
end

function me.TestCombatEventDivineSpiritRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineSpiritRank1Removed",
    testCategory,
    14752
  )
end

function me.TestCombatEventDivineSpiritRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDivineSpiritRank1Refresh",
    testCategory,
    14752
  )
end

function me.TestCombatEventDivineSpiritRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineSpiritRank2Applied",
    testCategory,
    14818
  )
end

function me.TestCombatEventDivineSpiritRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineSpiritRank2Removed",
    testCategory,
    14818
  )
end

function me.TestCombatEventDivineSpiritRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDivineSpiritRank2Refresh",
    testCategory,
    14818
  )
end

function me.TestCombatEventDivineSpiritRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineSpiritRank3Applied",
    testCategory,
    14819
  )
end

function me.TestCombatEventDivineSpiritRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineSpiritRank3Removed",
    testCategory,
    14819
  )
end

function me.TestCombatEventDivineSpiritRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDivineSpiritRank3Refresh",
    testCategory,
    14819
  )
end

function me.TestCombatEventDivineSpiritRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineSpiritRank4Applied",
    testCategory,
    27841
  )
end

function me.TestCombatEventDivineSpiritRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineSpiritRank4Removed",
    testCategory,
    27841
  )
end

function me.TestCombatEventDivineSpiritRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDivineSpiritRank4Refresh",
    testCategory,
    27841
  )
end

function me.TestCombatEventDivineSpiritRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDivineSpiritRank5Applied",
    testCategory,
    25312
  )
end

function me.TestCombatEventDivineSpiritRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDivineSpiritRank5Removed",
    testCategory,
    25312
  )
end

function me.TestCombatEventDivineSpiritRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDivineSpiritRank5Refresh",
    testCategory,
    25312
  )
end

function me.TestCombatEventHolyNovaRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyNovaRank1Success",
    testCategory,
    15237
  )
end

function me.TestCombatEventHolyNovaRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyNovaRank2Success",
    testCategory,
    15430
  )
end

function me.TestCombatEventHolyNovaRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyNovaRank3Success",
    testCategory,
    15431
  )
end

function me.TestCombatEventHolyNovaRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyNovaRank4Success",
    testCategory,
    27799
  )
end

function me.TestCombatEventHolyNovaRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyNovaRank5Success",
    testCategory,
    27800
  )
end

function me.TestCombatEventHolyNovaRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyNovaRank6Success",
    testCategory,
    27801
  )
end

function me.TestCombatEventHolyNovaRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHolyNovaRank7Success",
    testCategory,
    25331
  )
end

function me.TestCombatEventInnerFocusApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnerFocusApplied",
    testCategory,
    14751
  )
end

function me.TestCombatEventInnerFocusRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnerFocusRemoved",
    testCategory,
    14751
  )
end

function me.TestCombatEventMindFlayRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindFlayRank1Success",
    testCategory,
    15407
  )
end

function me.TestCombatEventMindFlayRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindFlayRank2Success",
    testCategory,
    17311
  )
end

function me.TestCombatEventMindFlayRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindFlayRank3Success",
    testCategory,
    17312
  )
end

function me.TestCombatEventMindFlayRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindFlayRank4Success",
    testCategory,
    17313
  )
end

function me.TestCombatEventMindFlayRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindFlayRank5Success",
    testCategory,
    17314
  )
end

function me.TestCombatEventMindFlayRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindFlayRank6Success",
    testCategory,
    18807
  )
end

function me.TestCombatEventMindFlayRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMindFlayRank7Success",
    testCategory,
    25387
  )
end

function me.TestCombatEventPainSuppressionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPainSuppressionApplied",
    testCategory,
    33206
  )
end

function me.TestCombatEventPainSuppressionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPainSuppressionRemoved",
    testCategory,
    33206
  )
end

function me.TestCombatEventPowerInfusionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPowerInfusionApplied",
    testCategory,
    10060
  )
end

function me.TestCombatEventPowerInfusionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPowerInfusionRemoved",
    testCategory,
    10060
  )
end

function me.TestCombatEventShadowformApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowformApplied",
    testCategory,
    15473
  )
end

function me.TestCombatEventShadowformRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowformRemoved",
    testCategory,
    15473
  )
end

function me.TestCombatEventSilenceSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSilenceSuccess",
    testCategory,
    15487
  )
end

function me.TestCombatEventVampiricEmbraceSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVampiricEmbraceSuccess",
    testCategory,
    15286
  )
end

function me.TestCombatEventVampiricTouchRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVampiricTouchRank1Success",
    testCategory,
    34914
  )
end

function me.TestCombatEventVampiricTouchRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVampiricTouchRank2Success",
    testCategory,
    34916
  )
end

function me.TestCombatEventVampiricTouchRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVampiricTouchRank3Success",
    testCategory,
    34917
  )
end
