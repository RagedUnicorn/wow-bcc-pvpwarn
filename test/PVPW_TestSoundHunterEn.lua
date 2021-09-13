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
mod.testSoundHunterEn = me

me.tag = "TestSoundHunterEn"

local testGroupName = "SoundHunterEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcaneShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAspectOfTheBeast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAspectOfTheCheetah)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAspectOfTheHawk)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAspectOfTheMonkey)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAspectOfThePack)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAspectOfTheViper)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAspectOfTheWild)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConcussiveShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDisengage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundExplosiveTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlare)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFreezingTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHuntersMark)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundImmolationTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMendPet)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMongooseBite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMultiShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRapidFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownRapidFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRaptorStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRevivePet)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundScareBeast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundScorpidSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSerpentSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSnakeTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackBeasts)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackDemons)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackDragonkin)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackElementals)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackGiants)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackHidden)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackHumanoids)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrackUndead)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundViperSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundVolley)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWingClip)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAimedShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBestialWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBestialWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCounterattack)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDeterrence)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDeterrence)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIntimidation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownIntimidation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundReadiness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundScatterShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSilencingShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTheBeastWithin)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownTheBeastWithin)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTrueshotAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownTrueshotAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWyvernSting)
end

function me.TestSoundArcaneShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundArcaneShot",
    testCategory,
    "arcane_shot"
  )
end

function me.TestSoundAspectOfTheBeast()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAspectOfTheBeast",
    testCategory,
    "aspect_of_the_beast"
  )
end

function me.TestSoundAspectOfTheCheetah()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAspectOfTheCheetah",
    testCategory,
    "aspect_of_the_cheetah"
  )
end

function me.TestSoundAspectOfTheHawk()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAspectOfTheHawk",
    testCategory,
    "aspect_of_the_hawk"
  )
end

function me.TestSoundAspectOfTheMonkey()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAspectOfTheMonkey",
    testCategory,
    "aspect_of_the_monkey"
  )
end

function me.TestSoundAspectOfThePack()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAspectOfThePack",
    testCategory,
    "aspect_of_the_pack"
  )
end

function me.TestSoundAspectOfTheViper()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAspectOfTheViper",
    testCategory,
    "aspect_of_the_viper"
  )
end

function me.TestSoundAspectOfTheWild()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAspectOfTheWild",
    testCategory,
    "aspect_of_the_wild"
  )
end

function me.TestSoundConcussiveShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConcussiveShot",
    testCategory,
    "concussive_shot"
  )
end

function me.TestSoundDisengage()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDisengage",
    testCategory,
    "disengage"
  )
end

function me.TestSoundExplosiveTrap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundExplosiveTrap",
    testCategory,
    "explosive_trap"
  )
end

function me.TestSoundFlare()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFlare",
    testCategory,
    "flare"
  )
end

function me.TestSoundFreezingTrap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFreezingTrap",
    testCategory,
    "freezing_trap"
  )
end

function me.TestSoundFrostTrap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostTrap",
    testCategory,
    "frost_trap"
  )
end

function me.TestSoundHuntersMark()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHuntersMark",
    testCategory,
    "hunters_mark"
  )
end

function me.TestSoundImmolationTrap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundImmolationTrap",
    testCategory,
    "immolation_trap"
  )
end

function me.TestSoundMendPet()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMendPet",
    testCategory,
    "mend_pet"
  )
end

function me.TestSoundMongooseBite()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMongooseBite",
    testCategory,
    "mongoose_bite"
  )
end

function me.TestSoundMultiShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMultiShot",
    testCategory,
    "multi_shot"
  )
end

function me.TestSoundRapidFire()
  mod.testHelper.TestSoundApplied(
    "TestSoundRapidFire",
    testCategory,
    "rapid_fire"
  )
end

function me.TestSoundDownRapidFire()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownRapidFire",
    testCategory,
    "rapid_fire"
  )
end

function me.TestSoundRaptorStrike()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRaptorStrike",
    testCategory,
    "raptor_strike"
  )
end

function me.TestSoundRevivePet()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRevivePet",
    testCategory,
    "revive_pet"
  )
end

function me.TestSoundScareBeast()
  mod.testHelper.TestSoundSuccess(
    "TestSoundScareBeast",
    testCategory,
    "scare_beast"
  )
end

function me.TestSoundScorpidSting()
  mod.testHelper.TestSoundSuccess(
    "TestSoundScorpidSting",
    testCategory,
    "scorpid_sting"
  )
end

function me.TestSoundSerpentSting()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSerpentSting",
    testCategory,
    "serpent_sting"
  )
end

function me.TestSoundSnakeTrap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSnakeTrap",
    testCategory,
    "snake_trap"
  )
end

function me.TestSoundTrackBeasts()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackBeasts",
    testCategory,
    "track_beasts"
  )
end

function me.TestSoundTrackDemons()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackDemons",
    testCategory,
    "track_demons"
  )
end

function me.TestSoundTrackDragonkin()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackDragonkin",
    testCategory,
    "track_dragonkin"
  )
end

function me.TestSoundTrackElementals()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackElementals",
    testCategory,
    "track_elementals"
  )
end

function me.TestSoundTrackGiants()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackGiants",
    testCategory,
    "track_giants"
  )
end

function me.TestSoundTrackHidden()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackHidden",
    testCategory,
    "track_hidden"
  )
end

function me.TestSoundTrackHumanoids()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackHumanoids",
    testCategory,
    "track_humanoids"
  )
end

function me.TestSoundTrackUndead()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTrackUndead",
    testCategory,
    "track_undead"
  )
end

function me.TestSoundViperSting()
  mod.testHelper.TestSoundSuccess(
    "TestSoundViperSting",
    testCategory,
    "viper_sting"
  )
end

function me.TestSoundVolley()
  mod.testHelper.TestSoundSuccess(
    "TestSoundVolley",
    testCategory,
    "volley"
  )
end

function me.TestSoundWingClip()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWingClip",
    testCategory,
    "wing_clip"
  )
end

function me.TestSoundAimedShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAimedShot",
    testCategory,
    "aimed_shot"
  )
end

function me.TestSoundBestialWrath()
  mod.testHelper.TestSoundApplied(
    "TestSoundBestialWrath",
    testCategory,
    "bestial_wrath"
  )
end

function me.TestSoundDownBestialWrath()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBestialWrath",
    testCategory,
    "bestial_wrath"
  )
end

function me.TestSoundCounterattack()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCounterattack",
    testCategory,
    "counterattack"
  )
end

function me.TestSoundDeterrence()
  mod.testHelper.TestSoundApplied(
    "TestSoundDeterrence",
    testCategory,
    "deterrence"
  )
end

function me.TestSoundDownDeterrence()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDeterrence",
    testCategory,
    "deterrence"
  )
end

function me.TestSoundIntimidation()
  mod.testHelper.TestSoundApplied(
    "TestSoundIntimidation",
    testCategory,
    "intimidation"
  )
end

function me.TestSoundDownIntimidation()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownIntimidation",
    testCategory,
    "intimidation"
  )
end

function me.TestSoundReadiness()
  mod.testHelper.TestSoundSuccess(
    "TestSoundReadiness",
    testCategory,
    "readiness"
  )
end

function me.TestSoundScatterShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundScatterShot",
    testCategory,
    "scatter_shot"
  )
end

function me.TestSoundSilencingShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSilencingShot",
    testCategory,
    "silencing_shot"
  )
end

function me.TestSoundTheBeastWithin()
  mod.testHelper.TestSoundApplied(
    "TestSoundTheBeastWithin",
    testCategory,
    "the_beast_within"
  )
end

function me.TestSoundDownTheBeastWithin()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownTheBeastWithin",
    testCategory,
    "the_beast_within"
  )
end

function me.TestSoundTrueshotAura()
  mod.testHelper.TestSoundApplied(
    "TestSoundTrueshotAura",
    testCategory,
    "trueshot_aura"
  )
end

function me.TestSoundDownTrueshotAura()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownTrueshotAura",
    testCategory,
    "trueshot_aura"
  )
end

function me.TestSoundWyvernSting()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWyvernSting",
    testCategory,
    "wyvern_sting"
  )
end
