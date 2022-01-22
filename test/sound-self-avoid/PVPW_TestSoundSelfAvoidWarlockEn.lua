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
mod.testSoundSelfAvoidWarlockEn = me

me.tag = "TestSoundSelfAvoidWarlockEn"

local testGroupName = "SoundSelfAvoidWarlockEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidBanish)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCurseOfAgony)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCurseOfRecklessness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCurseOfTheElements)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCurseOfTongues)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCurseOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDeathCoil)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDrainLife)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDrainMana)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDrainSoul)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFear)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHowlOfTerror)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidImmolate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidIncinerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSearingPain)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSeedOfCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShadowBolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSoulFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidConflagrate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCurseOfExhaustion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShadowburn)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShadowfury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSiphonLife)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidUnstableAffliction)
end

function me.TestSoundSelfAvoidBanish()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidBanish",
    testCategory,
    "banish"
  )
end

function me.TestSoundSelfAvoidCorruption()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCorruption",
    testCategory,
    "corruption"
  )
end

function me.TestSoundSelfAvoidCurseOfAgony()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCurseOfAgony",
    testCategory,
    "curse_of_agony"
  )
end

function me.TestSoundSelfAvoidCurseOfRecklessness()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCurseOfRecklessness",
    testCategory,
    "curse_of_recklessness"
  )
end

function me.TestSoundSelfAvoidCurseOfTheElements()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCurseOfTheElements",
    testCategory,
    "curse_of_the_elements"
  )
end

function me.TestSoundSelfAvoidCurseOfTongues()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCurseOfTongues",
    testCategory,
    "curse_of_tongues"
  )
end

function me.TestSoundSelfAvoidCurseOfWeakness()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCurseOfWeakness",
    testCategory,
    "curse_of_weakness"
  )
end

function me.TestSoundSelfAvoidDeathCoil()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDeathCoil",
    testCategory,
    "death_coil"
  )
end

function me.TestSoundSelfAvoidDrainLife()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDrainLife",
    testCategory,
    "drain_life"
  )
end

function me.TestSoundSelfAvoidDrainMana()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDrainMana",
    testCategory,
    "drain_mana"
  )
end

function me.TestSoundSelfAvoidDrainSoul()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDrainSoul",
    testCategory,
    "drain_soul"
  )
end

function me.TestSoundSelfAvoidFear()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFear",
    testCategory,
    "fear"
  )
end

function me.TestSoundSelfAvoidHowlOfTerror()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHowlOfTerror",
    testCategory,
    "howl_of_terror"
  )
end

function me.TestSoundSelfAvoidImmolate()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidImmolate",
    testCategory,
    "immolate"
  )
end

function me.TestSoundSelfAvoidIncinerate()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidIncinerate",
    testCategory,
    "incinerate"
  )
end

function me.TestSoundSelfAvoidSearingPain()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSearingPain",
    testCategory,
    "searing_pain"
  )
end

function me.TestSoundSelfAvoidSeedOfCorruption()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSeedOfCorruption",
    testCategory,
    "seed_of_corruption"
  )
end

function me.TestSoundSelfAvoidShadowBolt()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShadowBolt",
    testCategory,
    "shadow_bolt"
  )
end

function me.TestSoundSelfAvoidSoulFire()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSoulFire",
    testCategory,
    "soul_fire"
  )
end

function me.TestSoundSelfAvoidConflagrate()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidConflagrate",
    testCategory,
    "conflagrate"
  )
end

function me.TestSoundSelfAvoidCurseOfExhaustion()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCurseOfExhaustion",
    testCategory,
    "curse_of_exhaustion"
  )
end

function me.TestSoundSelfAvoidShadowburn()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShadowburn",
    testCategory,
    "shadowburn"
  )
end

function me.TestSoundSelfAvoidShadowfury()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShadowfury",
    testCategory,
    "shadowfury"
  )
end

function me.TestSoundSelfAvoidSiphonLife()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSiphonLife",
    testCategory,
    "siphon_life"
  )
end

function me.TestSoundSelfAvoidUnstableAffliction()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidUnstableAffliction",
    testCategory,
    "unstable_affliction"
  )
end
