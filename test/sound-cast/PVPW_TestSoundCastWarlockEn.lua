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
mod.testSoundCastWarlockEn = me

me.tag = "TestSoundCastWarlockEn"

local testGroupName = "SoundCastWarlockEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastBanish)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastCreateFirestone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastCreateSoulstone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastCreateSpellstone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastEyeOfKilrogg)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastFear)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastHowlOfTerror)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastImmolate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastIncinerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSearingPain)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSeedOfCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastShadowBolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSoulFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSummonFelhunter)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSummonImp)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSummonSuccubus)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSummonVoidwalker)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastShadowfury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastSummonFelguard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastUnstableAffliction)
end

function me.TestSoundCastBanish()
  mod.testHelper.TestSoundStart(
    "TestSoundCastBanish",
    testCategory,
    "banish"
  )
end

function me.TestSoundCastCreateFirestone()
  mod.testHelper.TestSoundStart(
    "TestSoundCastCreateFirestone",
    testCategory,
    "create_firestone"
  )
end

function me.TestSoundCastCreateSoulstone()
  mod.testHelper.TestSoundStart(
    "TestSoundCastCreateSoulstone",
    testCategory,
    "create_soulstone"
  )
end

function me.TestSoundCastCreateSpellstone()
  mod.testHelper.TestSoundStart(
    "TestSoundCastCreateSpellstone",
    testCategory,
    "create_spellstone"
  )
end

function me.TestSoundCastEyeOfKilrogg()
  mod.testHelper.TestSoundStart(
    "TestSoundCastEyeOfKilrogg",
    testCategory,
    "eye_of_kilrogg"
  )
end

function me.TestSoundCastFear()
  mod.testHelper.TestSoundStart(
    "TestSoundCastFear",
    testCategory,
    "fear"
  )
end

function me.TestSoundCastHowlOfTerror()
  mod.testHelper.TestSoundStart(
    "TestSoundCastHowlOfTerror",
    testCategory,
    "howl_of_terror"
  )
end

function me.TestSoundCastImmolate()
  mod.testHelper.TestSoundStart(
    "TestSoundCastImmolate",
    testCategory,
    "immolate"
  )
end

function me.TestSoundCastIncinerate()
  mod.testHelper.TestSoundStart(
    "TestSoundCastIncinerate",
    testCategory,
    "incinerate"
  )
end

function me.TestSoundCastSearingPain()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSearingPain",
    testCategory,
    "searing_pain"
  )
end

function me.TestSoundCastSeedOfCorruption()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSeedOfCorruption",
    testCategory,
    "seed_of_corruption"
  )
end

function me.TestSoundCastShadowBolt()
  mod.testHelper.TestSoundStart(
    "TestSoundCastShadowBolt",
    testCategory,
    "shadow_bolt"
  )
end

function me.TestSoundCastSoulFire()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSoulFire",
    testCategory,
    "soul_fire"
  )
end

function me.TestSoundCastSummonFelhunter()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSummonFelhunter",
    testCategory,
    "summon_felhunter"
  )
end

function me.TestSoundCastSummonImp()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSummonImp",
    testCategory,
    "summon_imp"
  )
end

function me.TestSoundCastSummonSuccubus()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSummonSuccubus",
    testCategory,
    "summon_succubus"
  )
end

function me.TestSoundCastSummonVoidwalker()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSummonVoidwalker",
    testCategory,
    "summon_voidwalker"
  )
end

function me.TestSoundCastShadowfury()
  mod.testHelper.TestSoundStart(
    "TestSoundCastShadowfury",
    testCategory,
    "shadowfury"
  )
end

function me.TestSoundCastSummonFelguard()
  mod.testHelper.TestSoundStart(
    "TestSoundCastSummonFelguard",
    testCategory,
    "summon_felguard"
  )
end

function me.TestSoundCastUnstableAffliction()
  mod.testHelper.TestSoundStart(
    "TestSoundCastUnstableAffliction",
    testCategory,
    "unstable_affliction"
  )
end
