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
mod.testSoundEnemyAvoidRogueEn = me

me.tag = "TestSoundEnemyAvoidRogueEn"

local testGroupName = "SoundEnemyAvoidRogueEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidAmbush)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidAnestheticPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidBackstab)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidBlind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCheapShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCripplingPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDeadlyPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDeadlyThrow)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDistract)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidEnvenom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidEviscerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidExposeArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidGarrote)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidGouge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidInstantPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidKick)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidKidneyShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMindNumbingPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidRupture)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShiv)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSinisterStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidWoundPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidHemorrhage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMutilate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidRiposte)
end

function me.TestSoundEnemyAvoidAmbush()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidAmbush",
    testCategory,
    "ambush"
  )
end

function me.TestSoundEnemyAvoidAnestheticPoison()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidAnestheticPoison",
    testCategory,
    "anesthetic_poison"
  )
end

function me.TestSoundEnemyAvoidBackstab()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidBackstab",
    testCategory,
    "backstab"
  )
end

function me.TestSoundEnemyAvoidBlind()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidBlind",
    testCategory,
    "blind"
  )
end

function me.TestSoundEnemyAvoidCheapShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCheapShot",
    testCategory,
    "cheap_shot"
  )
end

function me.TestSoundEnemyAvoidCripplingPoison()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCripplingPoison",
    testCategory,
    "crippling_poison"
  )
end

function me.TestSoundEnemyAvoidDeadlyPoison()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDeadlyPoison",
    testCategory,
    "deadly_poison"
  )
end

function me.TestSoundEnemyAvoidDeadlyThrow()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDeadlyThrow",
    testCategory,
    "deadly_throw"
  )
end

function me.TestSoundEnemyAvoidDistract()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDistract",
    testCategory,
    "distract"
  )
end

function me.TestSoundEnemyAvoidEnvenom()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidEnvenom",
    testCategory,
    "envenom"
  )
end

function me.TestSoundEnemyAvoidEviscerate()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidEviscerate",
    testCategory,
    "eviscerate"
  )
end

function me.TestSoundEnemyAvoidExposeArmor()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidExposeArmor",
    testCategory,
    "expose_armor"
  )
end

function me.TestSoundEnemyAvoidGarrote()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidGarrote",
    testCategory,
    "garrote"
  )
end

function me.TestSoundEnemyAvoidGouge()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidGouge",
    testCategory,
    "gouge"
  )
end

function me.TestSoundEnemyAvoidInstantPoison()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidInstantPoison",
    testCategory,
    "instant_poison"
  )
end

function me.TestSoundEnemyAvoidKick()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidKick",
    testCategory,
    "kick"
  )
end

function me.TestSoundEnemyAvoidKidneyShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidKidneyShot",
    testCategory,
    "kidney_shot"
  )
end

function me.TestSoundEnemyAvoidMindNumbingPoison()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMindNumbingPoison",
    testCategory,
    "mind_numbing_poison"
  )
end

function me.TestSoundEnemyAvoidRupture()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidRupture",
    testCategory,
    "rupture"
  )
end

function me.TestSoundEnemyAvoidSap()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSap",
    testCategory,
    "sap"
  )
end

function me.TestSoundEnemyAvoidShiv()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShiv",
    testCategory,
    "shiv"
  )
end

function me.TestSoundEnemyAvoidSinisterStrike()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSinisterStrike",
    testCategory,
    "sinister_strike"
  )
end

function me.TestSoundEnemyAvoidWoundPoison()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidWoundPoison",
    testCategory,
    "wound_poison"
  )
end

function me.TestSoundEnemyAvoidHemorrhage()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidHemorrhage",
    testCategory,
    "hemorrhage"
  )
end

function me.TestSoundEnemyAvoidMutilate()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMutilate",
    testCategory,
    "mutilate"
  )
end

function me.TestSoundEnemyAvoidRiposte()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidRiposte",
    testCategory,
    "riposte"
  )
end
