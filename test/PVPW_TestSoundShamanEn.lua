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
mod.testSoundShamanEn = me

me.tag = "TestSoundShamanEn"

local testGroupName = "SoundShamanEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES_NEW.SHAMAN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAncestralSpirit)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBloodlust)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBloodlust)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundChainHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundChainLightning)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCureDisease)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurePoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDiseaseCleansingTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEarthElementalTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEarthShock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEarthbindTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFireElementalTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFireNovaTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFireResistanceTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlameShock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlametongueTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlametongueWeapon)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostResistanceTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostShock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostbrandWeapon)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGhostWolf)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownGhostWolf)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGraceOfAirTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGroundingTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHealingStreamTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHealingWave)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHeroism)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownHeroism)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLesserHealingWave)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLightningBolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLightningShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownLightningShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMagmaTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundManaSpringTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNatureResistanceTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPoisonCleansingTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPurge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundReincarnation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRockbiterWeapon)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSearingTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStoneclawTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStoneskinTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStrengthOfEarthTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTremorTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWaterBreathing)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownWaterBreathing)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWaterShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownWaterShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWindfuryTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWindfuryWeapon)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWindwallTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWrathOfAirTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEarthShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownEarthShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundElementalMastery)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownElementalMastery)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundManaTideTotem)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNaturesSwiftness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNaturesSwiftness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShamanisticRage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShamanisticRage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStormstrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTotemOfWrath)
end

function me.TestSoundAncestralSpirit()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAncestralSpirit",
    testCategory,
    "ancestral_spirit"
  )
end

function me.TestSoundBloodlust()
  mod.testHelper.TestSoundApplied(
    "TestSoundBloodlust",
    testCategory,
    "bloodlust"
  )
end

function me.TestSoundDownBloodlust()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBloodlust",
    testCategory,
    "bloodlust"
  )
end

function me.TestSoundChainHeal()
  mod.testHelper.TestSoundSuccess(
    "TestSoundChainHeal",
    testCategory,
    "chain_heal"
  )
end

function me.TestSoundChainLightning()
  mod.testHelper.TestSoundSuccess(
    "TestSoundChainLightning",
    testCategory,
    "chain_lightning"
  )
end

function me.TestSoundCureDisease()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCureDisease",
    testCategory,
    "cure_disease"
  )
end

function me.TestSoundCurePoison()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCurePoison",
    testCategory,
    "cure_poison"
  )
end

function me.TestSoundDiseaseCleansingTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDiseaseCleansingTotem",
    testCategory,
    "disease_cleansing_totem"
  )
end

function me.TestSoundEarthElementalTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEarthElementalTotem",
    testCategory,
    "earth_elemental_totem"
  )
end

function me.TestSoundEarthShock()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEarthShock",
    testCategory,
    "earth_shock"
  )
end

function me.TestSoundEarthbindTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEarthbindTotem",
    testCategory,
    "earthbind_totem"
  )
end

function me.TestSoundFireElementalTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFireElementalTotem",
    testCategory,
    "fire_elemental_totem"
  )
end

function me.TestSoundFireNovaTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFireNovaTotem",
    testCategory,
    "fire_nova_totem"
  )
end

function me.TestSoundFireResistanceTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFireResistanceTotem",
    testCategory,
    "fire_resistance_totem"
  )
end

function me.TestSoundFlameShock()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFlameShock",
    testCategory,
    "flame_shock"
  )
end

function me.TestSoundFlametongueTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFlametongueTotem",
    testCategory,
    "flametongue_totem"
  )
end

function me.TestSoundFlametongueWeapon()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFlametongueWeapon",
    testCategory,
    "flametongue_weapon"
  )
end

function me.TestSoundFrostResistanceTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostResistanceTotem",
    testCategory,
    "frost_resistance_totem"
  )
end

function me.TestSoundFrostShock()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostShock",
    testCategory,
    "frost_shock"
  )
end

function me.TestSoundFrostbrandWeapon()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostbrandWeapon",
    testCategory,
    "frostbrand_weapon"
  )
end

function me.TestSoundGhostWolf()
  mod.testHelper.TestSoundApplied(
    "TestSoundGhostWolf",
    testCategory,
    "ghost_wolf"
  )
end

function me.TestSoundDownGhostWolf()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownGhostWolf",
    testCategory,
    "ghost_wolf"
  )
end

function me.TestSoundGraceOfAirTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGraceOfAirTotem",
    testCategory,
    "grace_of_air_totem"
  )
end

function me.TestSoundGroundingTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGroundingTotem",
    testCategory,
    "grounding_totem"
  )
end

function me.TestSoundHealingStreamTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHealingStreamTotem",
    testCategory,
    "healing_stream_totem"
  )
end

function me.TestSoundHealingWave()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHealingWave",
    testCategory,
    "healing_wave"
  )
end

function me.TestSoundHeroism()
  mod.testHelper.TestSoundApplied(
    "TestSoundHeroism",
    testCategory,
    "heroism"
  )
end

function me.TestSoundDownHeroism()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownHeroism",
    testCategory,
    "heroism"
  )
end

function me.TestSoundLesserHealingWave()
  mod.testHelper.TestSoundSuccess(
    "TestSoundLesserHealingWave",
    testCategory,
    "lesser_healing_wave"
  )
end

function me.TestSoundLightningBolt()
  mod.testHelper.TestSoundSuccess(
    "TestSoundLightningBolt",
    testCategory,
    "lightning_bolt"
  )
end

function me.TestSoundLightningShield()
  mod.testHelper.TestSoundApplied(
    "TestSoundLightningShield",
    testCategory,
    "lightning_shield"
  )
end

function me.TestSoundDownLightningShield()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownLightningShield",
    testCategory,
    "lightning_shield"
  )
end

function me.TestSoundMagmaTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMagmaTotem",
    testCategory,
    "magma_totem"
  )
end

function me.TestSoundManaSpringTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundManaSpringTotem",
    testCategory,
    "mana_spring_totem"
  )
end

function me.TestSoundNatureResistanceTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundNatureResistanceTotem",
    testCategory,
    "nature_resistance_totem"
  )
end

function me.TestSoundPoisonCleansingTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPoisonCleansingTotem",
    testCategory,
    "poison_cleansing_totem"
  )
end

function me.TestSoundPurge()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPurge",
    testCategory,
    "purge"
  )
end

function me.TestSoundReincarnation()
  mod.testHelper.TestSoundSuccess(
    "TestSoundReincarnation",
    testCategory,
    "reincarnation"
  )
end

function me.TestSoundRockbiterWeapon()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRockbiterWeapon",
    testCategory,
    "rockbiter_weapon"
  )
end

function me.TestSoundSearingTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSearingTotem",
    testCategory,
    "searing_totem"
  )
end

function me.TestSoundStoneclawTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundStoneclawTotem",
    testCategory,
    "stoneclaw_totem"
  )
end

function me.TestSoundStoneskinTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundStoneskinTotem",
    testCategory,
    "stoneskin_totem"
  )
end

function me.TestSoundStrengthOfEarthTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundStrengthOfEarthTotem",
    testCategory,
    "strength_of_earth_totem"
  )
end

function me.TestSoundTremorTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTremorTotem",
    testCategory,
    "tremor_totem"
  )
end

function me.TestSoundWaterBreathing()
  mod.testHelper.TestSoundApplied(
    "TestSoundWaterBreathing",
    testCategory,
    "water_breathing"
  )
end

function me.TestSoundDownWaterBreathing()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownWaterBreathing",
    testCategory,
    "water_breathing"
  )
end

function me.TestSoundWaterShield()
  mod.testHelper.TestSoundApplied(
    "TestSoundWaterShield",
    testCategory,
    "water_shield"
  )
end

function me.TestSoundDownWaterShield()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownWaterShield",
    testCategory,
    "water_shield"
  )
end

function me.TestSoundWindfuryTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWindfuryTotem",
    testCategory,
    "windfury_totem"
  )
end

function me.TestSoundWindfuryWeapon()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWindfuryWeapon",
    testCategory,
    "windfury_weapon"
  )
end

function me.TestSoundWindwallTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWindwallTotem",
    testCategory,
    "windwall_totem"
  )
end

function me.TestSoundWrathOfAirTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWrathOfAirTotem",
    testCategory,
    "wrath_of_air_totem"
  )
end

function me.TestSoundEarthShield()
  mod.testHelper.TestSoundApplied(
    "TestSoundEarthShield",
    testCategory,
    "earth_shield"
  )
end

function me.TestSoundDownEarthShield()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownEarthShield",
    testCategory,
    "earth_shield"
  )
end

function me.TestSoundElementalMastery()
  mod.testHelper.TestSoundApplied(
    "TestSoundElementalMastery",
    testCategory,
    "elemental_mastery"
  )
end

function me.TestSoundDownElementalMastery()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownElementalMastery",
    testCategory,
    "elemental_mastery"
  )
end

function me.TestSoundManaTideTotem()
  mod.testHelper.TestSoundSuccess(
    "TestSoundManaTideTotem",
    testCategory,
    "mana_tide_totem"
  )
end

function me.TestSoundNaturesSwiftness()
  mod.testHelper.TestSoundApplied(
    "TestSoundNaturesSwiftness",
    testCategory,
    "natures_swiftness"
  )
end

function me.TestSoundDownNaturesSwiftness()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNaturesSwiftness",
    testCategory,
    "natures_swiftness"
  )
end

function me.TestSoundShamanisticRage()
  mod.testHelper.TestSoundApplied(
    "TestSoundShamanisticRage",
    testCategory,
    "shamanistic_rage"
  )
end

function me.TestSoundDownShamanisticRage()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShamanisticRage",
    testCategory,
    "shamanistic_rage"
  )
end

function me.TestSoundStormstrike()
  mod.testHelper.TestSoundSuccess(
    "TestSoundStormstrike",
    testCategory,
    "stormstrike"
  )
end

function me.TestSoundTotemOfWrath()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTotemOfWrath",
    testCategory,
    "totem_of_wrath"
  )
end
