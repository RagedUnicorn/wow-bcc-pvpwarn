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
mod.testCombatEventsItems = me

me.tag = "TestCombatEventsItems"

local testGroupName = "CombatEventsItems"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ITEMS.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAbacusOfViolentOddsApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAbacusOfViolentOddsRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAdamantineFigurineApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAdamantineFigurineRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncientAqirArtifactApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAncientAqirArtifactRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBattlemasterTrinketApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBattlemasterTrinketRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkersCallApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkersCallRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodlustBroochApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodlustBroochRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDarkIronSmokingPipeApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDarkIronSmokingPipeRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDimensionalRipperArea52Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDimensionalRipperEverlookSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDirebrewHopsApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDirebrewHopsRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDragonspineTrophyApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDragonspineTrophyRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEmptyMugOfDirebrewApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEmptyMugOfDirebrewRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEssenceOfTheMartyrApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEssenceOfTheMartyrRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineCrimsonSerpentApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineCrimsonSerpentRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineEmpyreanTortoiseApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineEmpyreanTortoiseRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineFelsteelBoarSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineKhoriumBoarSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineLivingRubySerpentApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineLivingRubySerpentRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineNightseyePantherApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineNightseyePantherRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineShadowsongPantherApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFigurineShadowsongPantherRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGnomishPoultryizerSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGoblinRocketLauncherSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexShrunkenHeadApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHexShrunkenHeadRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIconOfTheSilverCrescentApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIconOfTheSilverCrescentRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMedallionOfTheAllianceSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMedallionOfTheHordeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindQuickeningGemApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMindQuickeningGemRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoroesLuckyPocketWatchApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoroesLuckyPocketWatchRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRibbonOfSacrificeApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRibbonOfSacrificeRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowmoonInsigniaApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowmoonInsigniaRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShardOfContemptApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShardOfContemptRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpyglassOfTheHiddenFleetApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpyglassOfTheHiddenFleetRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSteelyNaaruSliverApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSteelyNaaruSliverRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTalismanOfTheAllianceSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTalismanOfTheHordeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTheSkullOfGuldanApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTheSkullOfGuldanRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTinyVoodooMaskSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTomeOfDiabolicRemedyApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTomeOfDiabolicRemedyRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTsunamiTalismanApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventTsunamiTalismanRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUltrasafeTransporterGadgetzanSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventUltrasafeTransporterToshleysStationSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventVialOfTheSunwellSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHyperVisionGogglesApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHyperVisionGogglesRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNighInvulnerabilityBeltApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNighInvulnerabilityBeltRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNighInvulnerabilityBeltBackfireApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNighInvulnerabilityBeltBackfireRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRocketBootsXtremeApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRocketBootsXtremeRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSkullOfImpendingDoomApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSkullOfImpendingDoomRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFreedomSpiderBeltOrnateMithrilBootsApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFreedomSpiderBeltOrnateMithrilBootsRemoved)
end

function me.TestCombatEventAbacusOfViolentOddsApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAbacusOfViolentOddsApplied",
    testCategory,
    33807
  )
end

function me.TestCombatEventAbacusOfViolentOddsRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAbacusOfViolentOddsRemoved",
    testCategory,
    33807
  )
end

function me.TestCombatEventAdamantineFigurineApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAdamantineFigurineApplied",
    testCategory,
    33479
  )
end

function me.TestCombatEventAdamantineFigurineRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAdamantineFigurineRemoved",
    testCategory,
    33479
  )
end

function me.TestCombatEventAncientAqirArtifactApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAncientAqirArtifactApplied",
    testCategory,
    43713
  )
end

function me.TestCombatEventAncientAqirArtifactRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAncientAqirArtifactRemoved",
    testCategory,
    43713
  )
end

function me.TestCombatEventBattlemasterTrinketApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBattlemasterTrinketApplied",
    testCategory,
    44055
  )
end

function me.TestCombatEventBattlemasterTrinketRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBattlemasterTrinketRemoved",
    testCategory,
    44055
  )
end

function me.TestCombatEventBerserkersCallApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBerserkersCallApplied",
    testCategory,
    43716
  )
end

function me.TestCombatEventBerserkersCallRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBerserkersCallRemoved",
    testCategory,
    43716
  )
end

function me.TestCombatEventBloodlustBroochApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBloodlustBroochApplied",
    testCategory,
    35166
  )
end

function me.TestCombatEventBloodlustBroochRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBloodlustBroochRemoved",
    testCategory,
    35166
  )
end

function me.TestCombatEventDarkIronSmokingPipeApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDarkIronSmokingPipeApplied",
    testCategory,
    51953
  )
end

function me.TestCombatEventDarkIronSmokingPipeRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDarkIronSmokingPipeRemoved",
    testCategory,
    51953
  )
end

function me.TestCombatEventDimensionalRipperArea52Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDimensionalRipperArea52Success",
    testCategory,
    36890
  )
end

function me.TestCombatEventDimensionalRipperEverlookSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDimensionalRipperEverlookSuccess",
    testCategory,
    23442
  )
end

function me.TestCombatEventDirebrewHopsApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDirebrewHopsApplied",
    testCategory,
    51954
  )
end

function me.TestCombatEventDirebrewHopsRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDirebrewHopsRemoved",
    testCategory,
    51954
  )
end

function me.TestCombatEventDragonspineTrophyApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDragonspineTrophyApplied",
    testCategory,
    34775
  )
end

function me.TestCombatEventDragonspineTrophyRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDragonspineTrophyRemoved",
    testCategory,
    34775
  )
end

function me.TestCombatEventEmptyMugOfDirebrewApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEmptyMugOfDirebrewApplied",
    testCategory,
    51955
  )
end

function me.TestCombatEventEmptyMugOfDirebrewRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEmptyMugOfDirebrewRemoved",
    testCategory,
    51955
  )
end

function me.TestCombatEventEssenceOfTheMartyrApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEssenceOfTheMartyrApplied",
    testCategory,
    35165
  )
end

function me.TestCombatEventEssenceOfTheMartyrRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEssenceOfTheMartyrRemoved",
    testCategory,
    35165
  )
end

function me.TestCombatEventFigurineCrimsonSerpentApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFigurineCrimsonSerpentApplied",
    testCategory,
    46783
  )
end

function me.TestCombatEventFigurineCrimsonSerpentRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFigurineCrimsonSerpentRemoved",
    testCategory,
    46783
  )
end

function me.TestCombatEventFigurineEmpyreanTortoiseApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFigurineEmpyreanTortoiseApplied",
    testCategory,
    46780
  )
end

function me.TestCombatEventFigurineEmpyreanTortoiseRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFigurineEmpyreanTortoiseRemoved",
    testCategory,
    46780
  )
end

function me.TestCombatEventFigurineFelsteelBoarSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFigurineFelsteelBoarSuccess",
    testCategory,
    31038
  )
end

function me.TestCombatEventFigurineKhoriumBoarSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFigurineKhoriumBoarSuccess",
    testCategory,
    46782
  )
end

function me.TestCombatEventFigurineLivingRubySerpentApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFigurineLivingRubySerpentApplied",
    testCategory,
    31040
  )
end

function me.TestCombatEventFigurineLivingRubySerpentRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFigurineLivingRubySerpentRemoved",
    testCategory,
    31040
  )
end

function me.TestCombatEventFigurineNightseyePantherApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFigurineNightseyePantherApplied",
    testCategory,
    31047
  )
end

function me.TestCombatEventFigurineNightseyePantherRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFigurineNightseyePantherRemoved",
    testCategory,
    31047
  )
end

function me.TestCombatEventFigurineShadowsongPantherApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFigurineShadowsongPantherApplied",
    testCategory,
    46784
  )
end

function me.TestCombatEventFigurineShadowsongPantherRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFigurineShadowsongPantherRemoved",
    testCategory,
    46784
  )
end

function me.TestCombatEventGnomishPoultryizerSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGnomishPoultryizerSuccess",
    testCategory,
    30507
  )
end

function me.TestCombatEventGoblinRocketLauncherSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventGoblinRocketLauncherSuccess",
    testCategory,
    46567
  )
end

function me.TestCombatEventHexShrunkenHeadApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventHexShrunkenHeadApplied",
    testCategory,
    43712
  )
end

function me.TestCombatEventHexShrunkenHeadRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventHexShrunkenHeadRemoved",
    testCategory,
    43712
  )
end

function me.TestCombatEventIconOfTheSilverCrescentApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIconOfTheSilverCrescentApplied",
    testCategory,
    35163
  )
end

function me.TestCombatEventIconOfTheSilverCrescentRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIconOfTheSilverCrescentRemoved",
    testCategory,
    35163
  )
end

function me.TestCombatEventMedallionOfTheAllianceSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMedallionOfTheAllianceSuccess",
    testCategory,
    42292
  )
end

function me.TestCombatEventMedallionOfTheHordeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventMedallionOfTheHordeSuccess",
    testCategory,
    42292
  )
end

function me.TestCombatEventMindQuickeningGemApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMindQuickeningGemApplied",
    testCategory,
    23723
  )
end

function me.TestCombatEventMindQuickeningGemRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMindQuickeningGemRemoved",
    testCategory,
    23723
  )
end

function me.TestCombatEventMoroesLuckyPocketWatchApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMoroesLuckyPocketWatchApplied",
    testCategory,
    28528
  )
end

function me.TestCombatEventMoroesLuckyPocketWatchRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMoroesLuckyPocketWatchRemoved",
    testCategory,
    28528
  )
end

function me.TestCombatEventRibbonOfSacrificeApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRibbonOfSacrificeApplied",
    testCategory,
    38332
  )
end

function me.TestCombatEventRibbonOfSacrificeRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRibbonOfSacrificeRemoved",
    testCategory,
    38332
  )
end

function me.TestCombatEventShadowmoonInsigniaApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShadowmoonInsigniaApplied",
    testCategory,
    40464
  )
end

function me.TestCombatEventShadowmoonInsigniaRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShadowmoonInsigniaRemoved",
    testCategory,
    40464
  )
end

function me.TestCombatEventShardOfContemptApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventShardOfContemptApplied",
    testCategory,
    45053
  )
end

function me.TestCombatEventShardOfContemptRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventShardOfContemptRemoved",
    testCategory,
    45053
  )
end

function me.TestCombatEventSpyglassOfTheHiddenFleetApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSpyglassOfTheHiddenFleetApplied",
    testCategory,
    38325
  )
end

function me.TestCombatEventSpyglassOfTheHiddenFleetRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSpyglassOfTheHiddenFleetRemoved",
    testCategory,
    38325
  )
end

function me.TestCombatEventSteelyNaaruSliverApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSteelyNaaruSliverApplied",
    testCategory,
    34428
  )
end

function me.TestCombatEventSteelyNaaruSliverRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSteelyNaaruSliverRemoved",
    testCategory,
    34428
  )
end

function me.TestCombatEventTalismanOfTheAllianceSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTalismanOfTheAllianceSuccess",
    testCategory,
    33828
  )
end

function me.TestCombatEventTalismanOfTheHordeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTalismanOfTheHordeSuccess",
    testCategory,
    32140
  )
end

function me.TestCombatEventTheSkullOfGuldanApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTheSkullOfGuldanApplied",
    testCategory,
    40396
  )
end

function me.TestCombatEventTheSkullOfGuldanRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTheSkullOfGuldanRemoved",
    testCategory,
    40396
  )
end

function me.TestCombatEventTinyVoodooMaskSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventTinyVoodooMaskSuccess",
    testCategory,
    43995
  )
end

function me.TestCombatEventTomeOfDiabolicRemedyApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTomeOfDiabolicRemedyApplied",
    testCategory,
    43710
  )
end

function me.TestCombatEventTomeOfDiabolicRemedyRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTomeOfDiabolicRemedyRemoved",
    testCategory,
    43710
  )
end

function me.TestCombatEventTsunamiTalismanApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventTsunamiTalismanApplied",
    testCategory,
    42084
  )
end

function me.TestCombatEventTsunamiTalismanRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventTsunamiTalismanRemoved",
    testCategory,
    42084
  )
end

function me.TestCombatEventUltrasafeTransporterGadgetzanSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventUltrasafeTransporterGadgetzanSuccess",
    testCategory,
    23453
  )
end

function me.TestCombatEventUltrasafeTransporterToshleysStationSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventUltrasafeTransporterToshleysStationSuccess",
    testCategory,
    36941
  )
end

function me.TestCombatEventVialOfTheSunwellSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventVialOfTheSunwellSuccess",
    testCategory,
    45064
  )
end

function me.TestCombatEventHyperVisionGogglesApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventHyperVisionGogglesApplied",
    testCategory,
    30249
  )
end

function me.TestCombatEventHyperVisionGogglesRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventHyperVisionGogglesRemoved",
    testCategory,
    30249
  )
end

function me.TestCombatEventNighInvulnerabilityBeltApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNighInvulnerabilityBeltApplied",
    testCategory,
    30458
  )
end

function me.TestCombatEventNighInvulnerabilityBeltRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNighInvulnerabilityBeltRemoved",
    testCategory,
    30458
  )
end

function me.TestCombatEventNighInvulnerabilityBeltBackfireApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNighInvulnerabilityBeltBackfireApplied",
    testCategory,
    30457
  )
end

function me.TestCombatEventNighInvulnerabilityBeltBackfireRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNighInvulnerabilityBeltBackfireRemoved",
    testCategory,
    30457
  )
end

function me.TestCombatEventRocketBootsXtremeApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRocketBootsXtremeApplied",
    testCategory,
    51582
  )
end

function me.TestCombatEventRocketBootsXtremeRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRocketBootsXtremeRemoved",
    testCategory,
    51582
  )
end

function me.TestCombatEventSkullOfImpendingDoomApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSkullOfImpendingDoomApplied",
    testCategory,
    5024
  )
end

function me.TestCombatEventSkullOfImpendingDoomRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSkullOfImpendingDoomRemoved",
    testCategory,
    5024
  )
end

function me.TestCombatEventFreedomSpiderBeltOrnateMithrilBootsApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFreedomSpiderBeltOrnateMithrilBootsApplied",
    testCategory,
    5024
  )
end

function me.TestCombatEventFreedomSpiderBeltOrnateMithrilBootsRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFreedomSpiderBeltOrnateMithrilBootsRemoved",
    testCategory,
    5024
  )
end
