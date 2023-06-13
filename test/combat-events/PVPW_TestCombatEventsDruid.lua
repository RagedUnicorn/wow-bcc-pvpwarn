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
mod.testCombatEventsDruid = me

me.tag = "TestCombatEventsDruid"

local testGroupName = "CombatEventsDruid"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAbolishPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAbolishPoisonRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAbolishPoisonRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAquaticFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBarkskinApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBarkskinRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBashRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBashRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBashRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBearFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCatFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventClawRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventClawRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventClawRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventClawRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventClawRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventClawRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurePoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurePoisonRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCurePoisonRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCycloneSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDashRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDashRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDashRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDashRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDashRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDashRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingRoarRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingRoarRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingRoarRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingRoarRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingRoarRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDemoralizingRoarRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDireBearFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnrageApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnrageRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEntanglingRootsRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFerociousBiteRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFerociousBiteRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFerociousBiteRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFerociousBiteRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFerociousBiteRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFerociousBiteRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlightFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrenziedRegenerationRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGiftOfTheWildRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGiftOfTheWildRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGiftOfTheWildRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHealingTouchRank13Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHibernateRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHibernateRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHibernateRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHurricaneRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHurricaneRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHurricaneRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHurricaneRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnervateApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInnervateRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLacerateRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLifebloomRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMaimRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMangleBearRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMangleBearRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMangleBearRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMangleCatRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMangleCatRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMangleCatRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMarkOfTheWildRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPounceRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonfireRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPounceRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPounceRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPounceRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventProwlRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventProwlRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventProwlRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRakeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRakeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRakeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRakeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRakeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRavageRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRavageRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRavageRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRavageRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRavageRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRebirthRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRegrowthRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRejuvenationRank13Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRemoveCurseSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRipRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRipRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRipRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRipRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRipRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRipRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRipRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShredRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShredRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShredRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShredRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShredRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShredRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShredRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStarfireRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwiftFlightFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwipeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwipeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwipeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwipeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwipeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwipeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThornsRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTigersFuryRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTranquilityRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTranquilityRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTranquilityRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTranquilityRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTranquilityRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTravelFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWrathRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireFeralRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireFeralRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireFeralRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireFeralRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFaerieFireFeralRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFeralChargeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventForceOfNatureSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsectSwarmRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsectSwarmRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsectSwarmRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsectSwarmRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsectSwarmRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsectSwarmRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoonkinFormApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesGraspRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesSwiftnessApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNaturesSwiftnessRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventOmenOfClarityApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventOmenOfClarityRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSwiftmendSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTreeOfLifeApplied)
end

function me.TestCombatEventAbolishPoisonApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAbolishPoisonApplied",
    testCategory,
    2893
  )
end

function me.TestCombatEventAbolishPoisonRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAbolishPoisonRemoved",
    testCategory,
    2893
  )
end

function me.TestCombatEventAbolishPoisonRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventAbolishPoisonRefresh",
    testCategory,
    2893
  )
end

function me.TestCombatEventAquaticFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAquaticFormApplied",
    testCategory,
    1066
  )
end

function me.TestCombatEventBarkskinApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBarkskinApplied",
    testCategory,
    22812
  )
end

function me.TestCombatEventBarkskinRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBarkskinRemoved",
    testCategory,
    22812
  )
end

function me.TestCombatEventBashRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBashRank1Success",
    testCategory,
    5211
  )
end

function me.TestCombatEventBashRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBashRank2Success",
    testCategory,
    6798
  )
end

function me.TestCombatEventBashRank3Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventBashRank3Success",
  testCategory,
  8983
)
end

function me.TestCombatEventBearFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBearFormApplied",
    testCategory,
    5487
  )
end

function me.TestCombatEventCatFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventCatFormApplied",
    testCategory,
    768
  )
end

function me.TestCombatEventClawRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventClawRank1Success",
    testCategory,
    1082
  )
end

function me.TestCombatEventClawRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventClawRank2Success",
    testCategory,
    3029
  )
end

function me.TestCombatEventClawRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventClawRank3Success",
    testCategory,
    5201
  )
end

function me.TestCombatEventClawRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventClawRank4Success",
    testCategory,
    9849
  )
end

function me.TestCombatEventClawRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventClawRank5Success",
    testCategory,
    9850
  )
end

function me.TestCombatEventClawRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventClawRank6Success",
    testCategory,
    27000
  )
end

function me.TestCombatEventCurePoisonApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventCurePoisonApplied",
    testCategory,
    8946
  )
end

function me.TestCombatEventCurePoisonRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventCurePoisonRemoved",
    testCategory,
    8946
  )
end

function me.TestCombatEventCurePoisonRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventCurePoisonRefresh",
    testCategory,
    8946
  )
end

function me.TestCombatEventCycloneSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCycloneSuccess",
    testCategory,
    33786
  )
end

function me.TestCombatEventDashRank1Applied()
  mod.testHelper.TestCombatEventApplied(
  "TestCombatEventDashRank1Applied",
  testCategory,
  1850
)
end

function me.TestCombatEventDashRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
  "TestCombatEventDashRank1Removed",
  testCategory,
  1850
)
end

function me.TestCombatEventDashRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDashRank2Applied",
    testCategory,
    9821
  )
end

function me.TestCombatEventDashRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDashRank2Removed",
    testCategory,
    9821
  )
end

function me.TestCombatEventDashRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDashRank3Applied",
    testCategory,
    33357
  )
end

function me.TestCombatEventDashRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDashRank3Removed",
    testCategory,
    33357
  )
end

function me.TestCombatEventDemoralizingRoarRank1Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventDemoralizingRoarRank1Success",
  testCategory,
  99
)
end

function me.TestCombatEventDemoralizingRoarRank2Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventDemoralizingRoarRank2Success",
  testCategory,
  1735
)
end

function me.TestCombatEventDemoralizingRoarRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingRoarRank3Success",
    testCategory,
    9490
  )
end

function me.TestCombatEventDemoralizingRoarRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingRoarRank4Success",
    testCategory,
    9747
  )
end

function me.TestCombatEventDemoralizingRoarRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDemoralizingRoarRank5Success",
    testCategory,
    9898
  )
end

function me.TestCombatEventDemoralizingRoarRank6Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventDemoralizingRoarRank6Success",
  testCategory,
  26998
)
end

function me.TestCombatEventDireBearFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDireBearFormApplied",
    testCategory,
    9634
  )
end

function me.TestCombatEventEnrageApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEnrageApplied",
    testCategory,
    5229
  )
end

function me.TestCombatEventEnrageRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEnrageRemoved",
    testCategory,
    5229
  )
end

function me.TestCombatEventEntanglingRootsRank1Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventEntanglingRootsRank1Success",
  testCategory,
  339
)
end

function me.TestCombatEventEntanglingRootsRank2Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventEntanglingRootsRank2Success",
  testCategory,
  1062
)
end

function me.TestCombatEventEntanglingRootsRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEntanglingRootsRank3Success",
    testCategory,
    5195
  )
end

function me.TestCombatEventEntanglingRootsRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEntanglingRootsRank4Success",
    testCategory,
    5196
  )
end

function me.TestCombatEventEntanglingRootsRank5Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventEntanglingRootsRank5Success",
  testCategory,
  9852
)
end

function me.TestCombatEventEntanglingRootsRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEntanglingRootsRank6Success",
    testCategory,
    9853
  )
end

function me.TestCombatEventEntanglingRootsRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEntanglingRootsRank7Success",
    testCategory,
    26989
  )
end

function me.TestCombatEventFaerieFireRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireRank1Success",
    testCategory,
    770
  )
end

function me.TestCombatEventFaerieFireRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireRank2Success",
    testCategory,
    778
  )
end

function me.TestCombatEventFaerieFireRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireRank3Success",
    testCategory,
    9749
  )
end

function me.TestCombatEventFaerieFireRank4Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventFaerieFireRank4Success",
  testCategory,
  9907
)
end

function me.TestCombatEventFaerieFireRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireRank5Success",
    testCategory,
    26993
  )
end

function me.TestCombatEventFerociousBiteRank1Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventFerociousBiteRank1Success",
  testCategory,
  22568
)
end

function me.TestCombatEventFerociousBiteRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFerociousBiteRank2Success",
    testCategory,
    22827
  )
end

function me.TestCombatEventFerociousBiteRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFerociousBiteRank3Success",
    testCategory,
    22828
  )
end

function me.TestCombatEventFerociousBiteRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFerociousBiteRank4Success",
    testCategory,
    22829
  )
end

function me.TestCombatEventFerociousBiteRank5Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventFerociousBiteRank5Success",
  testCategory,
  31018
)
end

function me.TestCombatEventFerociousBiteRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFerociousBiteRank6Success",
    testCategory,
    24248
  )
end

function me.TestCombatEventFlightFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFlightFormApplied",
    testCategory,
    33943
  )
end

function me.TestCombatEventFrenziedRegenerationRank1Applied()
  mod.testHelper.TestCombatEventApplied(
  "TestCombatEventFrenziedRegenerationRank1Applied",
  testCategory,
  22842
)
end

function me.TestCombatEventFrenziedRegenerationRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
  "TestCombatEventFrenziedRegenerationRank1Removed",
  testCategory,
  22842
)
end

function me.TestCombatEventFrenziedRegenerationRank2Applied()
  mod.testHelper.TestCombatEventApplied(
  "TestCombatEventFrenziedRegenerationRank2Applied",
  testCategory,
  22895
)
end

function me.TestCombatEventFrenziedRegenerationRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
  "TestCombatEventFrenziedRegenerationRank2Removed",
  testCategory,
  22895
)
end

function me.TestCombatEventFrenziedRegenerationRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrenziedRegenerationRank3Applied",
    testCategory,
    22896
  )
end

function me.TestCombatEventFrenziedRegenerationRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrenziedRegenerationRank3Removed",
    testCategory,
    22896
  )
end

function me.TestCombatEventFrenziedRegenerationRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrenziedRegenerationRank4Applied",
    testCategory,
    26999
  )
end

function me.TestCombatEventFrenziedRegenerationRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrenziedRegenerationRank4Removed",
    testCategory,
    26999
  )
end

function me.TestCombatEventGiftOfTheWildRank1Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventGiftOfTheWildRank1Success",
  testCategory,
  21849
)
end

function me.TestCombatEventGiftOfTheWildRank2Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventGiftOfTheWildRank2Success",
  testCategory,
  21850
)
end

function me.TestCombatEventGiftOfTheWildRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGiftOfTheWildRank3Success",
    testCategory,
    26991
  )
end

function me.TestCombatEventHealingTouchRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank1Success",
    testCategory,
    5185
  )
end

function me.TestCombatEventHealingTouchRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank2Success",
    testCategory,
    5186
  )
end

function me.TestCombatEventHealingTouchRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank3Success",
    testCategory,
    5187
  )
end

function me.TestCombatEventHealingTouchRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank4Success",
    testCategory,
    5188
  )
end

function me.TestCombatEventHealingTouchRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank5Success",
    testCategory,
    5189
  )
end

function me.TestCombatEventHealingTouchRank6Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventHealingTouchRank6Success",
  testCategory,
  6778
)
end

function me.TestCombatEventHealingTouchRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank7Success",
    testCategory,
    8903
  )
end

function me.TestCombatEventHealingTouchRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank8Success",
    testCategory,
    9758
  )
end

function me.TestCombatEventHealingTouchRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank9Success",
    testCategory,
    9888
  )
end

function me.TestCombatEventHealingTouchRank10Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventHealingTouchRank10Success",
  testCategory,
  9889
)
end

function me.TestCombatEventHealingTouchRank11Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventHealingTouchRank11Success",
  testCategory,
  25297
)
end

function me.TestCombatEventHealingTouchRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHealingTouchRank12Success",
    testCategory,
    26978
  )
end

function me.TestCombatEventHealingTouchRank13Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventHealingTouchRank13Success",
  testCategory,
  26979
)
end

function me.TestCombatEventHibernateRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHibernateRank1Success",
    testCategory,
    2637
  )
end

function me.TestCombatEventHibernateRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHibernateRank2Success",
    testCategory,
    18657
  )
end

function me.TestCombatEventHibernateRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHibernateRank3Success",
    testCategory,
    18658
  )
end

function me.TestCombatEventHurricaneRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHurricaneRank1Success",
    testCategory,
    16914
  )
end

function me.TestCombatEventHurricaneRank2Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventHurricaneRank2Success",
  testCategory,
  17401
)
end

function me.TestCombatEventHurricaneRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventHurricaneRank3Success",
    testCategory,
    17402
  )
end

function me.TestCombatEventHurricaneRank4Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventHurricaneRank4Success",
  testCategory,
  27012
)
end

function me.TestCombatEventInnervateApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInnervateApplied",
    testCategory,
    29166
  )
end

function me.TestCombatEventInnervateRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInnervateRemoved",
    testCategory,
    29166
  )
end

function me.TestCombatEventLacerateRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLacerateRank1Success",
    testCategory,
    33745
  )
end

function me.TestCombatEventLifebloomRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventLifebloomRank1Success",
    testCategory,
    33763
  )
end

function me.TestCombatEventMaimRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMaimRank1Success",
    testCategory,
    22570
  )
end

function me.TestCombatEventMangleBearRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMangleBearRank1Success",
    testCategory,
    33878
  )
end

function me.TestCombatEventMangleBearRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMangleBearRank2Success",
    testCategory,
    33986
  )
end

function me.TestCombatEventMangleBearRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMangleBearRank3Success",
    testCategory,
    33987
  )
end

function me.TestCombatEventMangleCatRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMangleCatRank1Success",
    testCategory,
    33876
  )
end

function me.TestCombatEventMangleCatRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMangleCatRank2Success",
    testCategory,
    33982
  )
end

function me.TestCombatEventMangleCatRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMangleCatRank3Success",
    testCategory,
    33983
  )
end

function me.TestCombatEventMarkOfTheWildRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMarkOfTheWildRank1Success",
    testCategory,
    1126
  )
end

function me.TestCombatEventMarkOfTheWildRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMarkOfTheWildRank2Success",
    testCategory,
    5232
  )
end

function me.TestCombatEventMarkOfTheWildRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMarkOfTheWildRank3Success",
    testCategory,
    6756
  )
end

function me.TestCombatEventMarkOfTheWildRank4Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventMarkOfTheWildRank4Success",
  testCategory,
  5234
)
end

function me.TestCombatEventMarkOfTheWildRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMarkOfTheWildRank5Success",
    testCategory,
    8907
  )
end

function me.TestCombatEventMarkOfTheWildRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMarkOfTheWildRank6Success",
    testCategory,
    9884
  )
end

function me.TestCombatEventMarkOfTheWildRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMarkOfTheWildRank7Success",
    testCategory,
    9885
  )
end

function me.TestCombatEventMarkOfTheWildRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMarkOfTheWildRank8Success",
    testCategory,
    26990
  )
end

function me.TestCombatEventMoonfireRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank1Success",
    testCategory,
    8921
  )
end

function me.TestCombatEventMoonfireRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank2Success",
    testCategory,
    8924
  )
end

function me.TestCombatEventMoonfireRank3Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventMoonfireRank3Success",
  testCategory,
  8925
)
end

function me.TestCombatEventMoonfireRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank4Success",
    testCategory,
    8926
  )
end

function me.TestCombatEventMoonfireRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank5Success",
    testCategory,
    8927
  )
end

function me.TestCombatEventMoonfireRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank6Success",
    testCategory,
    8928
  )
end

function me.TestCombatEventMoonfireRank7Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventMoonfireRank7Success",
  testCategory,
  8929
)
end

function me.TestCombatEventMoonfireRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank8Success",
    testCategory,
    9833
  )
end

function me.TestCombatEventMoonfireRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank9Success",
    testCategory,
    9834
  )
end

function me.TestCombatEventMoonfireRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank10Success",
    testCategory,
    9835
  )
end

function me.TestCombatEventMoonfireRank11Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventMoonfireRank11Success",
  testCategory,
  26987
)
end

function me.TestCombatEventPounceRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPounceRank1Success",
    testCategory,
    9005
  )
end

function me.TestCombatEventMoonfireRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMoonfireRank12Success",
    testCategory,
    26988
  )
end

function me.TestCombatEventPounceRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPounceRank2Success",
    testCategory,
    9823
  )
end

function me.TestCombatEventPounceRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPounceRank3Success",
    testCategory,
    9827
  )
end

function me.TestCombatEventPounceRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPounceRank4Success",
    testCategory,
    27006
  )
end

function me.TestCombatEventProwlRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventProwlRank1Success",
    testCategory,
    5215
  )
end

function me.TestCombatEventProwlRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventProwlRank2Success",
    testCategory,
    6783
  )
end

function me.TestCombatEventProwlRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventProwlRank3Success",
    testCategory,
    9913
  )
end

function me.TestCombatEventRakeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRakeRank1Success",
    testCategory,
    1822
  )
end

function me.TestCombatEventRakeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRakeRank2Success",
    testCategory,
    1823
  )
end

function me.TestCombatEventRakeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRakeRank3Success",
    testCategory,
    1824
  )
end

function me.TestCombatEventRakeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRakeRank4Success",
    testCategory,
    9904
  )
end

function me.TestCombatEventRakeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventRakeRank5Success",
  testCategory,
  27003
)
end

function me.TestCombatEventRavageRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRavageRank1Success",
    testCategory,
    6785
  )
end

function me.TestCombatEventRavageRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRavageRank2Success",
    testCategory,
    6787
  )
end

function me.TestCombatEventRavageRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRavageRank3Success",
    testCategory,
    9866
  )
end

function me.TestCombatEventRavageRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRavageRank4Success",
    testCategory,
    9867
  )
end

function me.TestCombatEventRavageRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRavageRank5Success",
    testCategory,
    27005
  )
end

function me.TestCombatEventRebirthRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRebirthRank1Success",
    testCategory,
    20484
  )
end

function me.TestCombatEventRebirthRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRebirthRank2Success",
    testCategory,
    20739
  )
end


function me.TestCombatEventRebirthRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRebirthRank3Success",
    testCategory,
    20742
  )
end

function me.TestCombatEventRebirthRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRebirthRank4Success",
    testCategory,
    20747
  )
end

function me.TestCombatEventRebirthRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRebirthRank5Success",
    testCategory,
    20748
  )
end

function me.TestCombatEventRebirthRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRebirthRank6Success",
    testCategory,
    26994
  )
end

function me.TestCombatEventRegrowthRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank1Success",
    testCategory,
    8936
  )
end

function me.TestCombatEventRegrowthRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank2Success",
    testCategory,
    8938
  )
end

function me.TestCombatEventRegrowthRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank3Success",
    testCategory,
    8939
  )
end

function me.TestCombatEventRegrowthRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank4Success",
    testCategory,
    8940
  )
end

function me.TestCombatEventRegrowthRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank5Success",
    testCategory,
    8941
  )
end

function me.TestCombatEventRegrowthRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank6Success",
    testCategory,
    9750
  )
end

function me.TestCombatEventRegrowthRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank7Success",
    testCategory,
    9856
  )
end

function me.TestCombatEventRegrowthRank8Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventRegrowthRank8Success",
  testCategory,
  9857
)
end

function me.TestCombatEventRegrowthRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank9Success",
    testCategory,
    9858
  )
end

function me.TestCombatEventRegrowthRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRegrowthRank10Success",
    testCategory,
    26980
  )
end

function me.TestCombatEventRejuvenationRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank1Success",
    testCategory,
    774
  )
end

function me.TestCombatEventRejuvenationRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank2Success",
    testCategory,
    1058
  )
end

function me.TestCombatEventRejuvenationRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank3Success",
    testCategory,
    1430
  )
end

function me.TestCombatEventRejuvenationRank4Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventRejuvenationRank4Success",
  testCategory,
  2090
)
end

function me.TestCombatEventRejuvenationRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank5Success",
    testCategory,
    2091
  )
end

function me.TestCombatEventRejuvenationRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank6Success",
    testCategory,
    3627
  )
end

function me.TestCombatEventRejuvenationRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank7Success",
    testCategory,
    8910
  )
end

function me.TestCombatEventRejuvenationRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank8Success",
    testCategory,
    9839
  )
end

function me.TestCombatEventRejuvenationRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank9Success",
    testCategory,
    9840
  )
end

function me.TestCombatEventRejuvenationRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank10Success",
    testCategory,
    9841
  )
end

function me.TestCombatEventRejuvenationRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank11Success",
    testCategory,
    25299
  )
end

function me.TestCombatEventRejuvenationRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank12Success",
    testCategory,
    26981
  )
end

function me.TestCombatEventRejuvenationRank13Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRejuvenationRank13Success",
    testCategory,
    26982
  )
end

function me.TestCombatEventRemoveCurseSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRemoveCurseSuccess",
    testCategory,
    2782
  )
end

function me.TestCombatEventRipRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRipRank1Success",
    testCategory,
    1079
  )
end

function me.TestCombatEventRipRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRipRank2Success",
    testCategory,
    9492
  )
end

function me.TestCombatEventRipRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRipRank3Success",
    testCategory,
    9493
  )
end

function me.TestCombatEventRipRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRipRank4Success",
    testCategory,
    9752
  )
end

function me.TestCombatEventRipRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRipRank5Success",
    testCategory,
    9894
  )
end

function me.TestCombatEventRipRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRipRank6Success",
    testCategory,
    9896
  )
end

function me.TestCombatEventRipRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRipRank7Success",
    testCategory,
    27008
  )
end

function me.TestCombatEventShredRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShredRank1Success",
    testCategory,
    5221
  )
end

function me.TestCombatEventShredRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShredRank2Success",
    testCategory,
    6800
  )
end

function me.TestCombatEventShredRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShredRank3Success",
    testCategory,
    8992
  )
end

function me.TestCombatEventShredRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShredRank4Success",
    testCategory,
    9829
  )
end

function me.TestCombatEventShredRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShredRank5Success",
    testCategory,
    9830
  )
end

function me.TestCombatEventShredRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShredRank6Success",
    testCategory,
    27001
  )
end

function me.TestCombatEventShredRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShredRank7Success",
    testCategory,
    27002
  )
end

function me.TestCombatEventStarfireRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank1Success",
    testCategory,
    2912
  )
end

function me.TestCombatEventStarfireRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank2Success",
    testCategory,
    8949
  )
end
function me.TestCombatEventStarfireRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank3Success",
    testCategory,
    8950
  )
end

function me.TestCombatEventStarfireRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank4Success",
    testCategory,
    8951
  )
end

function me.TestCombatEventStarfireRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank5Success",
    testCategory,
    9875
  )
end

function me.TestCombatEventStarfireRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank6Success",
    testCategory,
    9876
  )
end

function me.TestCombatEventStarfireRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank7Success",
    testCategory,
    25298
  )
end

function me.TestCombatEventStarfireRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventStarfireRank8Success",
    testCategory,
    26986
  )
end

function me.TestCombatEventSwiftFlightFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSwiftFlightFormApplied",
    testCategory,
    40120
  )
end

function me.TestCombatEventSwipeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventSwipeRank1Success",
  testCategory,
  779
)
end

function me.TestCombatEventSwipeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSwipeRank2Success",
    testCategory,
    780
  )
end

function me.TestCombatEventSwipeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSwipeRank3Success",
    testCategory,
    769
  )
end

function me.TestCombatEventSwipeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSwipeRank4Success",
    testCategory,
    9754
  )
end

function me.TestCombatEventSwipeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSwipeRank5Success",
    testCategory,
    9908
  )
end

function me.TestCombatEventSwipeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSwipeRank6Success",
    testCategory,
    26997
  )
end

function me.TestCombatEventThornsRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventThornsRank1Applied",
    testCategory,
    467
  )
end
function me.TestCombatEventThornsRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventThornsRank1Removed",
    testCategory,
    467
  )
end

function me.TestCombatEventThornsRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventThornsRank1Refresh",
    testCategory,
    467
  )
end

function me.TestCombatEventThornsRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventThornsRank2Applied",
    testCategory,
    782
  )
end

function me.TestCombatEventThornsRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventThornsRank2Removed",
    testCategory,
    782
  )
end

function me.TestCombatEventThornsRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventThornsRank2Refresh",
    testCategory,
    782
  )
end

function me.TestCombatEventThornsRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventThornsRank3Applied",
    testCategory,
    1075
  )
end

function me.TestCombatEventThornsRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventThornsRank3Removed",
    testCategory,
    1075
  )
end

function me.TestCombatEventThornsRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventThornsRank3Refresh",
    testCategory,
    1075
  )
end

function me.TestCombatEventThornsRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventThornsRank4Applied",
    testCategory,
    8914
  )
end

function me.TestCombatEventThornsRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventThornsRank4Removed",
    testCategory,
    8914
  )
end

function me.TestCombatEventThornsRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventThornsRank4Refresh",
    testCategory,
    8914
  )
end

function me.TestCombatEventThornsRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventThornsRank5Applied",
    testCategory,
    9756
  )
end

function me.TestCombatEventThornsRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventThornsRank5Removed",
    testCategory,
    9756
  )
end

function me.TestCombatEventThornsRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventThornsRank5Refresh",
    testCategory,
    9756
  )
end

function me.TestCombatEventThornsRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventThornsRank6Applied",
    testCategory,
    9910
  )
end

function me.TestCombatEventThornsRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventThornsRank6Removed",
    testCategory,
    9910
  )
end

function me.TestCombatEventThornsRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventThornsRank6Refresh",
    testCategory,
    9910
  )
end

function me.TestCombatEventThornsRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventThornsRank7Applied",
    testCategory,
    26992
  )
end

function me.TestCombatEventThornsRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventThornsRank7Removed",
    testCategory,
    26992
  )
end

function me.TestCombatEventThornsRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventThornsRank7Refresh",
    testCategory,
    26992
  )
end

function me.TestCombatEventTigersFuryRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTigersFuryRank1Applied",
    testCategory,
    5217
  )
end

function me.TestCombatEventTigersFuryRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTigersFuryRank1Removed",
    testCategory,
    5217
  )
end

function me.TestCombatEventTigersFuryRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTigersFuryRank1Refresh",
    testCategory,
    5217
  )
end

function me.TestCombatEventTigersFuryRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTigersFuryRank2Applied",
    testCategory,
    6793
  )
end

function me.TestCombatEventTigersFuryRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTigersFuryRank2Removed",
    testCategory,
    6793
  )
end

function me.TestCombatEventTigersFuryRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTigersFuryRank2Refresh",
    testCategory,
    5217
  )
end

function me.TestCombatEventTigersFuryRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTigersFuryRank3Applied",
    testCategory,
    9845
  )
end

function me.TestCombatEventTigersFuryRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTigersFuryRank3Removed",
    testCategory,
    9845
  )
end

function me.TestCombatEventTigersFuryRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTigersFuryRank3Refresh",
    testCategory,
    5217
  )
end

function me.TestCombatEventTigersFuryRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTigersFuryRank4Applied",
    testCategory,
    9846
  )
end

function me.TestCombatEventTigersFuryRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTigersFuryRank4Removed",
    testCategory,
    9846
  )
end

function me.TestCombatEventTigersFuryRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventTigersFuryRank4Refresh",
    testCategory,
    5217
  )
end

function me.TestCombatEventTranquilityRank1Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventTranquilityRank1Success",
  testCategory,
  740
)
end

function me.TestCombatEventTranquilityRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTranquilityRank2Success",
    testCategory,
    8918
  )
end

function me.TestCombatEventTranquilityRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTranquilityRank3Success",
    testCategory,
    9862
  )
end

function me.TestCombatEventTranquilityRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTranquilityRank4Success",
    testCategory,
    9863
  )
end

function me.TestCombatEventTranquilityRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTranquilityRank5Success",
    testCategory,
    26983
  )
end

function me.TestCombatEventTravelFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTravelFormApplied",
    testCategory,
    783
  )
end

function me.TestCombatEventWrathRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWrathRank1Success",
    testCategory,
    5176
  )
end

function me.TestCombatEventWrathRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWrathRank2Success",
    testCategory,
    5177
  )
end

function me.TestCombatEventWrathRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWrathRank3Success",
    testCategory,
    5178
  )
end

function me.TestCombatEventWrathRank4Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventWrathRank4Success",
  testCategory,
  5179
)
end

function me.TestCombatEventWrathRank5Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventWrathRank5Success",
  testCategory,
  5180
)
end

function me.TestCombatEventWrathRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWrathRank6Success",
    testCategory,
    6780
  )
end

function me.TestCombatEventWrathRank7Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventWrathRank7Success",
  testCategory,
  8905
)
end

function me.TestCombatEventWrathRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWrathRank8Success",
    testCategory,
    9912
  )
end

function me.TestCombatEventWrathRank9Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventWrathRank9Success",
  testCategory,
  26984
)
end

function me.TestCombatEventWrathRank10Success()
  mod.testHelper.TestCombatEventSuccess(
  "TestCombatEventWrathRank10Success",
  testCategory,
  26985
)
end

function me.TestCombatEventFaerieFireFeralRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireFeralRank1Success",
    testCategory,
    16857
  )
end

function me.TestCombatEventFaerieFireFeralRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireFeralRank2Success",
    testCategory,
    17390
  )
end

function me.TestCombatEventFaerieFireFeralRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireFeralRank3Success",
    testCategory,
    17391
  )
end

function me.TestCombatEventFaerieFireFeralRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireFeralRank4Success",
    testCategory,
    17392
  )
end

function me.TestCombatEventFaerieFireFeralRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFaerieFireFeralRank5Success",
    testCategory,
    27011
  )
end

function me.TestCombatEventFeralChargeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFeralChargeSuccess",
    testCategory,
    16979
  )
end

function me.TestCombatEventForceOfNatureSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventForceOfNatureSuccess",
    testCategory,
    33831
  )
end

function me.TestCombatEventInsectSwarmRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInsectSwarmRank1Success",
    testCategory,
    5570
  )
end

function me.TestCombatEventInsectSwarmRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInsectSwarmRank2Success",
    testCategory,
    24974
  )
end

function me.TestCombatEventInsectSwarmRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInsectSwarmRank3Success",
    testCategory,
    24975
  )
end

function me.TestCombatEventInsectSwarmRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInsectSwarmRank4Success",
    testCategory,
    24976
  )
end

function me.TestCombatEventInsectSwarmRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInsectSwarmRank5Success",
    testCategory,
    24977
  )
end

function me.TestCombatEventInsectSwarmRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInsectSwarmRank6Success",
    testCategory,
    27013
  )
end

function me.TestCombatEventMoonkinFormApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMoonkinFormApplied",
    testCategory,
    24858
  )
end

function me.TestCombatEventNaturesGraspRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesGraspRank1Applied",
    testCategory,
    16689
  )
end

function me.TestCombatEventNaturesGraspRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesGraspRank1Removed",
    testCategory,
    16689
  )
end

function me.TestCombatEventNaturesGraspRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesGraspRank2Applied",
    testCategory,
    16810
  )
end

function me.TestCombatEventNaturesGraspRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesGraspRank2Removed",
    testCategory,
    16810
  )
end

function me.TestCombatEventNaturesGraspRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesGraspRank3Applied",
    testCategory,
    16811
  )
end

function me.TestCombatEventNaturesGraspRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesGraspRank3Removed",
    testCategory,
    16811
  )
end

function me.TestCombatEventNaturesGraspRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesGraspRank4Applied",
    testCategory,
    16812
  )
end

function me.TestCombatEventNaturesGraspRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesGraspRank4Removed",
    testCategory,
    16812
  )
end

function me.TestCombatEventNaturesGraspRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesGraspRank5Applied",
    testCategory,
    16813
  )
end

function me.TestCombatEventNaturesGraspRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesGraspRank5Removed",
    testCategory,
    16813
  )
end

function me.TestCombatEventNaturesGraspRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesGraspRank6Applied",
    testCategory,
    17329
  )
end

function me.TestCombatEventNaturesGraspRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesGraspRank6Removed",
    testCategory,
    17329
  )
end

function me.TestCombatEventNaturesGraspRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesGraspRank7Applied",
    testCategory,
    27009
  )
end

function me.TestCombatEventNaturesGraspRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesGraspRank7Removed",
    testCategory,
    27009
  )
end

function me.TestCombatEventNaturesSwiftnessApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNaturesSwiftnessApplied",
    testCategory,
    17116
  )
end

function me.TestCombatEventNaturesSwiftnessRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNaturesSwiftnessRemoved",
    testCategory,
    17116
  )
end

function me.TestCombatEventOmenOfClarityApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventOmenOfClarityApplied",
    testCategory,
    16864
  )
end

function me.TestCombatEventOmenOfClarityRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventOmenOfClarityRemoved",
    testCategory,
    16864
  )
end

function me.TestCombatEventSwiftmendSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSwiftmendSuccess",
    testCategory,
    18562
  )
end

function me.TestCombatEventTreeOfLifeApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTreeOfLifeApplied",
    testCategory,
    33891
  )
end
