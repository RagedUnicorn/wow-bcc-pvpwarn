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
mod.testSoundWarlockEn = me

me.tag = "TestSoundWarlockEn"

local testGroupName = "SoundWarlockEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBanish)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCreateFirestone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCreateSoulstone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSoulstoneResurrection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCreateSpellstone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSpellstone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurseOfAgony)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurseOfRecklessness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurseOfTheElements)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurseOfTongues)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurseOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDeathCoil)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDemonArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDemonArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDemonSkin)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDemonSkin)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDetectInvisibility)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDetectInvisibility)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDrainLife)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDrainMana)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDrainSoul)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEyeOfKilrogg)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFear)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFelArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFelArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHealthFunnel)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHellfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHowlOfTerror)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundImmolate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIncinerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLifeTap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRainOfFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRitualOfSouls)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRitualOfSummoning)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSearingPain)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSeedOfCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowBolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShadowWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSoulFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSummonFelhunter)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSummonImp)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSummonSuccubus)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSummonVoidwalker)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundUnendingBreath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownUnendingBreath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAmplifyCurse)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAmplifyCurse)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConflagrate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurseOfExhaustion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDarkPact)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDemonicSacrifice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFelDomination)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFelDomination)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNetherProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNetherProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNightfall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNightfall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowburn)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowfury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSiphonLife)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSoulLink)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSoulLink)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSummonFelguard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundUnstableAffliction)
end

function me.TestSoundBanish()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBanish",
    testCategory,
    "banish"
  )
end

function me.TestSoundCorruption()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCorruption",
    testCategory,
    "corruption"
  )
end

function me.TestSoundCreateFirestone()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCreateFirestone",
    testCategory,
    "create_firestone"
  )
end

function me.TestSoundCreateSoulstone()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCreateSoulstone",
    testCategory,
    "create_soulstone"
  )
end

function me.TestSoundSoulstoneResurrection()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSoulstoneResurrection",
    testCategory,
    "soulstone_resurrection"
  )
end

function me.TestSoundCreateSpellstone()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCreateSpellstone",
    testCategory,
    "create_spellstone"
  )
end

function me.TestSoundSpellstone()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSpellstone",
    testCategory,
    "spellstone"
  )
end

function me.TestSoundCurseOfAgony()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCurseOfAgony",
    testCategory,
    "curse_of_agony"
  )
end

function me.TestSoundCurseOfRecklessness()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCurseOfRecklessness",
    testCategory,
    "curse_of_recklessness"
  )
end

function me.TestSoundCurseOfTheElements()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCurseOfTheElements",
    testCategory,
    "curse_of_the_elements"
  )
end

function me.TestSoundCurseOfTongues()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCurseOfTongues",
    testCategory,
    "curse_of_tongues"
  )
end

function me.TestSoundCurseOfWeakness()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCurseOfWeakness",
    testCategory,
    "curse_of_weakness"
  )
end

function me.TestSoundDeathCoil()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDeathCoil",
    testCategory,
    "death_coil"
  )
end

function me.TestSoundDemonArmor()
  mod.testHelper.TestSoundApplied(
    "TestSoundDemonArmor",
    testCategory,
    "demon_armor"
  )
end

function me.TestSoundDownDemonArmor()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDemonArmor",
    testCategory,
    "demon_armor"
  )
end

function me.TestSoundDemonSkin()
  mod.testHelper.TestSoundApplied(
    "TestSoundDemonSkin",
    testCategory,
    "demon_skin"
  )
end

function me.TestSoundDownDemonSkin()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDemonSkin",
    testCategory,
    "demon_skin"
  )
end

function me.TestSoundDetectInvisibility()
  mod.testHelper.TestSoundApplied(
    "TestSoundDetectInvisibility",
    testCategory,
    "detect_invisibility"
  )
end

function me.TestSoundDownDetectInvisibility()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDetectInvisibility",
    testCategory,
    "detect_invisibility"
  )
end

function me.TestSoundDrainLife()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDrainLife",
    testCategory,
    "drain_life"
  )
end

function me.TestSoundDrainMana()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDrainMana",
    testCategory,
    "drain_mana"
  )
end

function me.TestSoundDrainSoul()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDrainSoul",
    testCategory,
    "drain_soul"
  )
end

function me.TestSoundEyeOfKilrogg()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEyeOfKilrogg",
    testCategory,
    "eye_of_kilrogg"
  )
end

function me.TestSoundFear()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFear",
    testCategory,
    "fear"
  )
end

function me.TestSoundFelArmor()
  mod.testHelper.TestSoundApplied(
    "TestSoundFelArmor",
    testCategory,
    "fel_armor"
  )
end

function me.TestSoundDownFelArmor()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFelArmor",
    testCategory,
    "fel_armor"
  )
end

function me.TestSoundHealthFunnel()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHealthFunnel",
    testCategory,
    "health_funnel"
  )
end

function me.TestSoundHellfire()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHellfire",
    testCategory,
    "hellfire"
  )
end

function me.TestSoundHowlOfTerror()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHowlOfTerror",
    testCategory,
    "howl_of_terror"
  )
end

function me.TestSoundImmolate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundImmolate",
    testCategory,
    "immolate"
  )
end

function me.TestSoundIncinerate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundIncinerate",
    testCategory,
    "incinerate"
  )
end

function me.TestSoundLifeTap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundLifeTap",
    testCategory,
    "life_tap"
  )
end

function me.TestSoundRainOfFire()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRainOfFire",
    testCategory,
    "rain_of_fire"
  )
end

function me.TestSoundRitualOfSouls()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRitualOfSouls",
    testCategory,
    "ritual_of_souls"
  )
end

function me.TestSoundRitualOfSummoning()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRitualOfSummoning",
    testCategory,
    "ritual_of_summoning"
  )
end

function me.TestSoundSearingPain()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSearingPain",
    testCategory,
    "searing_pain"
  )
end

function me.TestSoundSeedOfCorruption()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSeedOfCorruption",
    testCategory,
    "seed_of_corruption"
  )
end

function me.TestSoundShadowBolt()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowBolt",
    testCategory,
    "shadow_bolt"
  )
end

function me.TestSoundShadowWard()
  mod.testHelper.TestSoundApplied(
    "TestSoundShadowWard",
    testCategory,
    "shadow_ward"
  )
end

function me.TestSoundDownShadowWard()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShadowWard",
    testCategory,
    "shadow_ward"
  )
end

function me.TestSoundSoulFire()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSoulFire",
    testCategory,
    "soul_fire"
  )
end

function me.TestSoundSummonFelhunter()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSummonFelhunter",
    testCategory,
    "summon_felhunter"
  )
end

function me.TestSoundSummonImp()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSummonImp",
    testCategory,
    "summon_imp"
  )
end

function me.TestSoundSummonSuccubus()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSummonSuccubus",
    testCategory,
    "summon_succubus"
  )
end

function me.TestSoundSummonVoidwalker()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSummonVoidwalker",
    testCategory,
    "summon_voidwalker"
  )
end

function me.TestSoundUnendingBreath()
  mod.testHelper.TestSoundApplied(
    "TestSoundUnendingBreath",
    testCategory,
    "unending_breath"
  )
end

function me.TestSoundDownUnendingBreath()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownUnendingBreath",
    testCategory,
    "unending_breath"
  )
end

function me.TestSoundAmplifyCurse()
  mod.testHelper.TestSoundApplied(
    "TestSoundAmplifyCurse",
    testCategory,
    "amplify_curse"
  )
end

function me.TestSoundDownAmplifyCurse()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAmplifyCurse",
    testCategory,
    "amplify_curse"
  )
end

function me.TestSoundConflagrate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConflagrate",
    testCategory,
    "conflagrate"
  )
end

function me.TestSoundCurseOfExhaustion()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCurseOfExhaustion",
    testCategory,
    "curse_of_exhaustion"
  )
end

function me.TestSoundDarkPact()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDarkPact",
    testCategory,
    "dark_pact"
  )
end

function me.TestSoundDemonicSacrifice()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDemonicSacrifice",
    testCategory,
    "demonic_sacrifice"
  )
end

function me.TestSoundFelDomination()
  mod.testHelper.TestSoundApplied(
    "TestSoundFelDomination",
    testCategory,
    "fel_domination"
  )
end

function me.TestSoundDownFelDomination()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFelDomination",
    testCategory,
    "fel_domination"
  )
end

function me.TestSoundNetherProtection()
  mod.testHelper.TestSoundApplied(
    "TestSoundNetherProtection",
    testCategory,
    "nether_protection"
  )
end

function me.TestSoundDownNetherProtection()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNetherProtection",
    testCategory,
    "nether_protection"
  )
end

function me.TestSoundNightfall()
  mod.testHelper.TestSoundApplied(
    "TestSoundNightfall",
    testCategory,
    "nightfall"
  )
end

function me.TestSoundDownNightfall()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNightfall",
    testCategory,
    "nightfall"
  )
end

function me.TestSoundShadowburn()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowburn",
    testCategory,
    "shadowburn"
  )
end

function me.TestSoundShadowfury()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowfury",
    testCategory,
    "shadowfury"
  )
end

function me.TestSoundSiphonLife()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSiphonLife",
    testCategory,
    "siphon_life"
  )
end

function me.TestSoundSoulLink()
  mod.testHelper.TestSoundApplied(
    "TestSoundSoulLink",
    testCategory,
    "soul_link"
  )
end

function me.TestSoundDownSoulLink()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSoulLink",
    testCategory,
    "soul_link"
  )
end

function me.TestSoundSummonFelguard()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSummonFelguard",
    testCategory,
    "summon_felguard"
  )
end

function me.TestSoundUnstableAffliction()
  mod.testHelper.TestSoundSuccess(
    "TestSoundUnstableAffliction",
    testCategory,
    "unstable_affliction"
  )
end
