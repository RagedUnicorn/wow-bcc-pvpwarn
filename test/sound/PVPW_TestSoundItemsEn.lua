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
mod.testSoundItemsEn = me

me.tag = "TestSoundItemsEn"

local testGroupName = "SoundItemsEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ITEMS.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAbacusOfViolentOdds)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAbacusOfViolentOdds)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAdamantineFigurine)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAdamantineFigurine)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAncientAqirArtifact)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAncientAqirArtifact)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBattlemasterTrinket)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBattlemasterTrinket)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBerserkersCall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBerserkersCall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBloodlustBrooch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBloodlustBrooch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDarkIronSmokingPipe)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDarkIronSmokingPipe)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDimensionalRipperArea52)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDimensionalRipperEverlook)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDirebrewHops)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDirebrewHops)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDragonspineTrophy)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDragonspineTrophy)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEmptyMugOfDirebrew)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownEmptyMugOfDirebrew)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEssenceOfTheMartyr)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownEssenceOfTheMartyr)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFigurineCrimsonSerpent)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFigurineCrimsonSerpent)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFigurineEmpyreanTortoise)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFigurineEmpyreanTortoise)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFigurineFelsteelBoar)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFigurineKhoriumBoar)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFigurineLivingRubySerpent)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFigurineLivingRubySerpent)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFigurineNightseyePanther)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFigurineNightseyePanther)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFigurineShadowsongPanther)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFigurineShadowsongPanther)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGnomishPoultryizer)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGoblinRocketLauncher)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHexShrunkenHead)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownHexShrunkenHead)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIconOfTheSilverCrescent)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownIconOfTheSilverCrescent)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMedallionOfTheAlliance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMedallionOfTheHorde)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMindQuickeningGem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMindQuickeningGem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMoroesLuckyPocketWatch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMoroesLuckyPocketWatch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRibbonOfSacrifice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownRibbonOfSacrifice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowmoonInsignia)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShadowmoonInsignia)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShardOfContempt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShardOfContempt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSpyglassOfTheHiddenFleet)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSpyglassOfTheHiddenFleet)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSteelyNaaruSliver)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSteelyNaaruSliver)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTalismanOfTheAlliance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTalismanOfTheHorde)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTheSkullOfGuldan)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownTheSkullOfGuldan)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTinyVoodooMask)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTomeOfDiabolicRemedy)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownTomeOfDiabolicRemedy)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTsunamiTalisman)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownTsunamiTalisman)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundUltrasafeTransporterGadgetzan)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundUltrasafeTransporterToshleysStation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundVialOfTheSunwell)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHyperVisionGoggles)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownHyperVisionGoggles)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNighInvulnerabilityBelt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNighInvulnerabilityBelt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNighInvulnerabilityBeltBackfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNighInvulnerabilityBeltBackfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRocketBootsXtreme)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownRocketBootsXtreme)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSkullOfImpendingDoom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSkullOfImpendingDoom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFreedomSpiderBeltOrnateMithrilBoots)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFreedomSpiderBeltOrnateMithrilBoots)

end

function me.TestSoundAbacusOfViolentOdds()
  mod.testHelper.TestSoundApplied(
    "TestSoundAbacusOfViolentOdds",
    testCategory,
    "abacus_of_violent_odds"
  )
end

function me.TestSoundDownAbacusOfViolentOdds()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAbacusOfViolentOdds",
    testCategory,
    "abacus_of_violent_odds"
  )
end

function me.TestSoundAdamantineFigurine()
  mod.testHelper.TestSoundApplied(
    "TestSoundAdamantineFigurine",
    testCategory,
    "adamantine_figurine"
  )
end

function me.TestSoundDownAdamantineFigurine()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAdamantineFigurine",
    testCategory,
    "adamantine_figurine"
  )
end

function me.TestSoundAncientAqirArtifact()
  mod.testHelper.TestSoundApplied(
    "TestSoundAncientAqirArtifact",
    testCategory,
    "ancient_aqir_artifact"
  )
end

function me.TestSoundDownAncientAqirArtifact()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAncientAqirArtifact",
    testCategory,
    "ancient_aqir_artifact"
  )
end

function me.TestSoundBattlemasterTrinket()
  mod.testHelper.TestSoundApplied(
    "TestSoundBattlemasterTrinket",
    testCategory,
    "battlemaster"
  )
end

function me.TestSoundDownBattlemasterTrinket()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBattlemasterTrinket",
    testCategory,
    "battlemaster"
  )
end

function me.TestSoundBerserkersCall()
  mod.testHelper.TestSoundApplied(
    "TestSoundBerserkersCall",
    testCategory,
    "berserkers_call"
  )
end

function me.TestSoundDownBerserkersCall()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBerserkersCall",
    testCategory,
    "berserkers_call"
  )
end

function me.TestSoundBloodlustBrooch()
  mod.testHelper.TestSoundApplied(
    "TestSoundBloodlustBrooch",
    testCategory,
    "bloodlust_brooch"
  )
end

function me.TestSoundDownBloodlustBrooch()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBloodlustBrooch",
    testCategory,
    "bloodlust_brooch"
  )
end

function me.TestSoundDarkIronSmokingPipe()
  mod.testHelper.TestSoundApplied(
    "TestSoundDarkIronSmokingPipe",
    testCategory,
    "dark_iron_smoking_pipe"
  )
end

function me.TestSoundDownDarkIronSmokingPipe()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDarkIronSmokingPipe",
    testCategory,
    "dark_iron_smoking_pipe"
  )
end

function me.TestSoundDimensionalRipperArea52()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDimensionalRipperArea52",
    testCategory,
    "dimensional_ripper_area_52"
  )
end

function me.TestSoundDimensionalRipperEverlook()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDimensionalRipperEverlook",
    testCategory,
    "dimensional_ripper_everlook"
  )
end

function me.TestSoundDirebrewHops()
  mod.testHelper.TestSoundApplied(
    "TestSoundDirebrewHops",
    testCategory,
    "direbrew_hops"
  )
end

function me.TestSoundDownDirebrewHops()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDirebrewHops",
    testCategory,
    "direbrew_hops"
  )
end

function me.TestSoundDragonspineTrophy()
  mod.testHelper.TestSoundApplied(
    "TestSoundDragonspineTrophy",
    testCategory,
    "dragonspine_trophy"
  )
end

function me.TestSoundDownDragonspineTrophy()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDragonspineTrophy",
    testCategory,
    "dragonspine_trophy"
  )
end

function me.TestSoundEmptyMugOfDirebrew()
  mod.testHelper.TestSoundApplied(
    "TestSoundEmptyMugOfDirebrew",
    testCategory,
    "empty_mug_of_direbrew"
  )
end

function me.TestSoundDownEmptyMugOfDirebrew()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownEmptyMugOfDirebrew",
    testCategory,
    "empty_mug_of_direbrew"
  )
end

function me.TestSoundEssenceOfTheMartyr()
  mod.testHelper.TestSoundApplied(
    "TestSoundEssenceOfTheMartyr",
    testCategory,
    "essence_of_the_martyr"
  )
end

function me.TestSoundDownEssenceOfTheMartyr()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownEssenceOfTheMartyr",
    testCategory,
    "essence_of_the_martyr"
  )
end

function me.TestSoundFigurineCrimsonSerpent()
  mod.testHelper.TestSoundApplied(
    "TestSoundFigurineCrimsonSerpent",
    testCategory,
    "figurine_crimson_serpent"
  )
end

function me.TestSoundDownFigurineCrimsonSerpent()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFigurineCrimsonSerpent",
    testCategory,
    "figurine_crimson_serpent"
  )
end

function me.TestSoundFigurineEmpyreanTortoise()
  mod.testHelper.TestSoundApplied(
    "TestSoundFigurineEmpyreanTortoise",
    testCategory,
    "figurine_empyrean_tortoise"
  )
end

function me.TestSoundDownFigurineEmpyreanTortoise()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFigurineEmpyreanTortoise",
    testCategory,
    "figurine_empyrean_tortoise"
  )
end

function me.TestSoundFigurineFelsteelBoar()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFigurineFelsteelBoar",
    testCategory,
    "figurine_felsteel_boar"
  )
end

function me.TestSoundFigurineKhoriumBoar()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFigurineKhoriumBoar",
    testCategory,
    "figurine_khorium_boar"
  )
end

function me.TestSoundFigurineLivingRubySerpent()
  mod.testHelper.TestSoundApplied(
    "TestSoundFigurineLivingRubySerpent",
    testCategory,
    "figurine_living_ruby_serpent"
  )
end

function me.TestSoundDownFigurineLivingRubySerpent()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFigurineLivingRubySerpent",
    testCategory,
    "figurine_living_ruby_serpent"
  )
end

function me.TestSoundFigurineNightseyePanther()
  mod.testHelper.TestSoundApplied(
    "TestSoundFigurineNightseyePanther",
    testCategory,
    "figurine_nightseye_panther"
  )
end

function me.TestSoundDownFigurineNightseyePanther()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFigurineNightseyePanther",
    testCategory,
    "figurine_nightseye_panther"
  )
end

function me.TestSoundFigurineShadowsongPanther()
  mod.testHelper.TestSoundApplied(
    "TestSoundFigurineShadowsongPanther",
    testCategory,
    "figurine_shadowsong_panther"
  )
end

function me.TestSoundDownFigurineShadowsongPanther()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFigurineShadowsongPanther",
    testCategory,
    "figurine_shadowsong_panther"
  )
end

function me.TestSoundGnomishPoultryizer()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGnomishPoultryizer",
    testCategory,
    "gnomish_poultryizer"
  )
end

function me.TestSoundGoblinRocketLauncher()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGoblinRocketLauncher",
    testCategory,
    "goblin_rocket_launcher"
  )
end

function me.TestSoundHexShrunkenHead()
  mod.testHelper.TestSoundApplied(
    "TestSoundHexShrunkenHead",
    testCategory,
    "hex_shrunken_head"
  )
end

function me.TestSoundDownHexShrunkenHead()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownHexShrunkenHead",
    testCategory,
    "hex_shrunken_head"
  )
end

function me.TestSoundIconOfTheSilverCrescent()
  mod.testHelper.TestSoundApplied(
    "TestSoundIconOfTheSilverCrescent",
    testCategory,
    "icon_of_the_silver_crescent"
  )
end

function me.TestSoundDownIconOfTheSilverCrescent()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownIconOfTheSilverCrescent",
    testCategory,
    "icon_of_the_silver_crescent"
  )
end

function me.TestSoundMedallionOfTheAlliance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMedallionOfTheAlliance",
    testCategory,
    "insignia_pvp_trinket"
  )
end

function me.TestSoundMedallionOfTheHorde()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMedallionOfTheHorde",
    testCategory,
    "insignia_pvp_trinket"
  )
end

function me.TestSoundMindQuickeningGem()
  mod.testHelper.TestSoundApplied(
    "TestSoundMindQuickeningGem",
    testCategory,
    "mind_quickening_gem"
  )
end

function me.TestSoundDownMindQuickeningGem()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMindQuickeningGem",
    testCategory,
    "mind_quickening_gem"
  )
end

function me.TestSoundMoroesLuckyPocketWatch()
  mod.testHelper.TestSoundApplied(
    "TestSoundMoroesLuckyPocketWatch",
    testCategory,
    "moroes_lucky_pocket_watch"
  )
end

function me.TestSoundDownMoroesLuckyPocketWatch()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMoroesLuckyPocketWatch",
    testCategory,
    "moroes_lucky_pocket_watch"
  )
end

function me.TestSoundRibbonOfSacrifice()
  mod.testHelper.TestSoundApplied(
    "TestSoundRibbonOfSacrifice",
    testCategory,
    "ribbon_of_sacrifice"
  )
end

function me.TestSoundDownRibbonOfSacrifice()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownRibbonOfSacrifice",
    testCategory,
    "ribbon_of_sacrifice"
  )
end

function me.TestSoundShadowmoonInsignia()
  mod.testHelper.TestSoundApplied(
    "TestSoundShadowmoonInsignia",
    testCategory,
    "shadowmoon_insignia"
  )
end

function me.TestSoundDownShadowmoonInsignia()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShadowmoonInsignia",
    testCategory,
    "shadowmoon_insignia"
  )
end

function me.TestSoundShardOfContempt()
  mod.testHelper.TestSoundApplied(
    "TestSoundShardOfContempt",
    testCategory,
    "shard_of_contempt"
  )
end

function me.TestSoundDownShardOfContempt()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShardOfContempt",
    testCategory,
    "shard_of_contempt"
  )
end

function me.TestSoundSpyglassOfTheHiddenFleet()
  mod.testHelper.TestSoundApplied(
    "TestSoundSpyglassOfTheHiddenFleet",
    testCategory,
    "spyglass_of_the_hidden_fleet"
  )
end

function me.TestSoundDownSpyglassOfTheHiddenFleet()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSpyglassOfTheHiddenFleet",
    testCategory,
    "spyglass_of_the_hidden_fleet"
  )
end

function me.TestSoundSteelyNaaruSliver()
  mod.testHelper.TestSoundApplied(
    "TestSoundSteelyNaaruSliver",
    testCategory,
    "steely_naaru_sliver"
  )
end

function me.TestSoundDownSteelyNaaruSliver()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSteelyNaaruSliver",
    testCategory,
    "steely_naaru_sliver"
  )
end

function me.TestSoundTalismanOfTheAlliance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTalismanOfTheAlliance",
    testCategory,
    "talisman_trinket"
  )
end

function me.TestSoundTalismanOfTheHorde()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTalismanOfTheHorde",
    testCategory,
    "talisman_trinket"
  )
end

function me.TestSoundTheSkullOfGuldan()
  mod.testHelper.TestSoundApplied(
    "TestSoundTheSkullOfGuldan",
    testCategory,
    "the_skull_of_guldan"
  )
end

function me.TestSoundDownTheSkullOfGuldan()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownTheSkullOfGuldan",
    testCategory,
    "the_skull_of_guldan"
  )
end

function me.TestSoundTinyVoodooMask()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTinyVoodooMask",
    testCategory,
    "tiny_voodoo_mask"
  )
end

function me.TestSoundTomeOfDiabolicRemedy()
  mod.testHelper.TestSoundApplied(
    "TestSoundTomeOfDiabolicRemedy",
    testCategory,
    "tome_of_diabolic_remedy"
  )
end

function me.TestSoundDownTomeOfDiabolicRemedy()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownTomeOfDiabolicRemedy",
    testCategory,
    "tome_of_diabolic_remedy"
  )
end

function me.TestSoundTsunamiTalisman()
  mod.testHelper.TestSoundApplied(
    "TestSoundTsunamiTalisman",
    testCategory,
    "tsunami_talisman"
  )
end

function me.TestSoundDownTsunamiTalisman()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownTsunamiTalisman",
    testCategory,
    "tsunami_talisman"
  )
end

function me.TestSoundUltrasafeTransporterGadgetzan()
  mod.testHelper.TestSoundSuccess(
    "TestSoundUltrasafeTransporterGadgetzan",
    testCategory,
    "ultrasafe_transporter_gadgetzan"
  )
end

function me.TestSoundUltrasafeTransporterToshleysStation()
  mod.testHelper.TestSoundSuccess(
    "TestSoundUltrasafeTransporterToshleysStation",
    testCategory,
    "ultrasafe_transporter_toshleys_station"
  )
end

function me.TestSoundVialOfTheSunwell()
  mod.testHelper.TestSoundSuccess(
    "vial_of_the_sunwell",
    testCategory,
    "ultrasafe_transporter_toshleys_station"
  )
end

function me.TestSoundHyperVisionGoggles()
  mod.testHelper.TestSoundApplied(
    "TestSoundHyperVisionGoggles",
    testCategory,
    "hyper_vision_goggles"
  )
end

function me.TestSoundDownHyperVisionGoggles()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownHyperVisionGoggles",
    testCategory,
    "hyper_vision_goggles"
  )
end

function me.TestSoundNighInvulnerabilityBelt()
  mod.testHelper.TestSoundApplied(
    "TestSoundNighInvulnerabilityBelt",
    testCategory,
    "nigh_invulnerability_belt"
  )
end

function me.TestSoundDownNighInvulnerabilityBelt()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNighInvulnerabilityBelt",
    testCategory,
    "nigh_invulnerability_belt"
  )
end

function me.TestSoundNighInvulnerabilityBeltBackfire()
  mod.testHelper.TestSoundApplied(
    "TestSoundNighInvulnerabilityBeltBackfire",
    testCategory,
    "nigh_invulnerability_belt_backfire"
  )
end

function me.TestSoundDownNighInvulnerabilityBeltBackfire()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNighInvulnerabilityBeltBackfire",
    testCategory,
    "nigh_invulnerability_belt_backfire"
  )
end

function me.TestSoundRocketBootsXtreme()
  mod.testHelper.TestSoundApplied(
    "TestSoundRocketBootsXtreme",
    testCategory,
    "rocket_boots_xtreme"
  )
end

function me.TestSoundDownRocketBootsXtreme()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownRocketBootsXtreme",
    testCategory,
    "rocket_boots_xtreme"
  )
end

function me.TestSoundSkullOfImpendingDoom()
  mod.testHelper.TestSoundApplied(
    "TestSoundSkullOfImpendingDoom",
    testCategory,
    "skull_of_impending_doom"
  )
end

function me.TestSoundDownSkullOfImpendingDoom()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSkullOfImpendingDoom",
    testCategory,
    "skull_of_impending_doom"
  )
end

function me.TestSoundFreedomSpiderBeltOrnateMithrilBoots()
  mod.testHelper.TestSoundApplied(
    "TestSoundFreedomSpiderBeltOrnateMithrilBoots",
    testCategory,
    "immune_root"
  )
end

function me.TestSoundDownFreedomSpiderBeltOrnateMithrilBoots()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFreedomSpiderBeltOrnateMithrilBoots",
    testCategory,
    "immune_root"
  )
end
