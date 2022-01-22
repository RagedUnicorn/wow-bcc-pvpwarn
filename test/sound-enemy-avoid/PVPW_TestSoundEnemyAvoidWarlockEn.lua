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
mod.testSoundEnemyAvoidWarlockEn = me

me.tag = "TestSoundEnemyAvoidWarlockEn"

local testGroupName = "SoundEnemyAvoidWarlockEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidBanish)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCurseOfAgony)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCurseOfRecklessness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCurseOfTheElements)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCurseOfTongues)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCurseOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDeathCoil)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDrainLife)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDrainMana)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDrainSoul)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFear)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidHowlOfTerror)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidImmolate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidIncinerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSearingPain)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSeedOfCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShadowBolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSoulFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidConflagrate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCurseOfExhaustion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShadowburn)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShadowfury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSiphonLife)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidUnstableAffliction)
end

function me.TestSoundEnemyAvoidBanish()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidBanish",
    testCategory,
    "banish"
  )
end

function me.TestSoundEnemyAvoidCorruption()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCorruption",
    testCategory,
    "corruption"
  )
end

function me.TestSoundEnemyAvoidCurseOfAgony()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCurseOfAgony",
    testCategory,
    "curse_of_agony"
  )
end

function me.TestSoundEnemyAvoidCurseOfRecklessness()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCurseOfRecklessness",
    testCategory,
    "curse_of_recklessness"
  )
end

function me.TestSoundEnemyAvoidCurseOfTheElements()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCurseOfTheElements",
    testCategory,
    "curse_of_the_elements"
  )
end

function me.TestSoundEnemyAvoidCurseOfTongues()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCurseOfTongues",
    testCategory,
    "curse_of_tongues"
  )
end

function me.TestSoundEnemyAvoidCurseOfWeakness()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCurseOfWeakness",
    testCategory,
    "curse_of_weakness"
  )
end

function me.TestSoundEnemyAvoidDeathCoil()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDeathCoil",
    testCategory,
    "death_coil"
  )
end

function me.TestSoundEnemyAvoidDrainLife()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDrainLife",
    testCategory,
    "drain_life"
  )
end

function me.TestSoundEnemyAvoidDrainMana()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDrainMana",
    testCategory,
    "drain_mana"
  )
end

function me.TestSoundEnemyAvoidDrainSoul()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDrainSoul",
    testCategory,
    "drain_soul"
  )
end

function me.TestSoundEnemyAvoidFear()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFear",
    testCategory,
    "fear"
  )
end

function me.TestSoundEnemyAvoidHowlOfTerror()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidHowlOfTerror",
    testCategory,
    "howl_of_terror"
  )
end

function me.TestSoundEnemyAvoidImmolate()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidImmolate",
    testCategory,
    "immolate"
  )
end

function me.TestSoundEnemyAvoidIncinerate()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidIncinerate",
    testCategory,
    "incinerate"
  )
end

function me.TestSoundEnemyAvoidSearingPain()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSearingPain",
    testCategory,
    "searing_pain"
  )
end

function me.TestSoundEnemyAvoidSeedOfCorruption()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSeedOfCorruption",
    testCategory,
    "seed_of_corruption"
  )
end

function me.TestSoundEnemyAvoidShadowBolt()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShadowBolt",
    testCategory,
    "shadow_bolt"
  )
end

function me.TestSoundEnemyAvoidSoulFire()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSoulFire",
    testCategory,
    "soul_fire"
  )
end

function me.TestSoundEnemyAvoidConflagrate()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidConflagrate",
    testCategory,
    "conflagrate"
  )
end

function me.TestSoundEnemyAvoidCurseOfExhaustion()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCurseOfExhaustion",
    testCategory,
    "curse_of_exhaustion"
  )
end

function me.TestSoundEnemyAvoidShadowburn()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShadowburn",
    testCategory,
    "shadowburn"
  )
end

function me.TestSoundEnemyAvoidShadowfury()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShadowfury",
    testCategory,
    "shadowfury"
  )
end

function me.TestSoundEnemyAvoidSiphonLife()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSiphonLife",
    testCategory,
    "siphon_life"
  )
end

function me.TestSoundEnemyAvoidUnstableAffliction()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidUnstableAffliction",
    testCategory,
    "unstable_affliction"
  )
end
