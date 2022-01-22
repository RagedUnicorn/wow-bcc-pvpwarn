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
mod.testSoundSelfAvoidRogueEn = me

me.tag = "TestSoundSelfAvoidRogueEn"

local testGroupName = "SoundSelfAvoidRogueEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidAmbush)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidAnestheticPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidBackstab)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidBlind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCheapShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCripplingPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDeadlyPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDeadlyThrow)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDistract)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidEnvenom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidEviscerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidExposeArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidGarrote)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidGouge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidInstantPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidKick)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidKidneyShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMindNumbingPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidRupture)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShiv)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSinisterStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidWoundPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidGhostlyStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHemorrhage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMutilate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidRiposte)
end

function me.TestSoundSelfAvoidAmbush()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidAmbush",
    testCategory,
    "ambush"
  )
end

function me.TestSoundSelfAvoidAnestheticPoisonEffect()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidAnestheticPoisonEffect",
    testCategory,
    "anesthetic_poison_effect"
  )
end

function me.TestSoundSelfAvoidBackstab()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidBackstab",
    testCategory,
    "backstab"
  )
end

function me.TestSoundSelfAvoidBlind()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidBlind",
    testCategory,
    "blind"
  )
end

function me.TestSoundSelfAvoidCheapShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCheapShot",
    testCategory,
    "cheap_shot"
  )
end

function me.TestSoundSelfAvoidCripplingPoisonEffect()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCripplingPoisonEffect",
    testCategory,
    "crippling_poison_effect"
  )
end

function me.TestSoundSelfAvoidDeadlyPoisonEffect()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDeadlyPoisonEffect",
    testCategory,
    "deadly_poison_effect"
  )
end

function me.TestSoundSelfAvoidDeadlyThrow()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDeadlyThrow",
    testCategory,
    "deadly_throw"
  )
end

function me.TestSoundSelfAvoidDistract()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDistract",
    testCategory,
    "distract"
  )
end

function me.TestSoundSelfAvoidEnvenom()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidEnvenom",
    testCategory,
    "envenom"
  )
end

function me.TestSoundSelfAvoidEviscerate()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidEviscerate",
    testCategory,
    "eviscerate"
  )
end

function me.TestSoundSelfAvoidExposeArmor()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidExposeArmor",
    testCategory,
    "expose_armor"
  )
end

function me.TestSoundSelfAvoidGarrote()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidGarrote",
    testCategory,
    "garrote"
  )
end

function me.TestSoundSelfAvoidGouge()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidGouge",
    testCategory,
    "gouge"
  )
end

function me.TestSoundSelfAvoidInstantPoisonEffect()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidInstantPoisonEffect",
    testCategory,
    "instant_poison_effect"
  )
end

function me.TestSoundSelfAvoidKick()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidKick",
    testCategory,
    "kick"
  )
end

function me.TestSoundSelfAvoidKidneyShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidKidneyShot",
    testCategory,
    "kidney_shot"
  )
end

function me.TestSoundSelfAvoidMindNumbingPoisonEffect()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMindNumbingPoisonEffect",
    testCategory,
    "mind_numbing_poison_effect"
  )
end

function me.TestSoundSelfAvoidRupture()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidRupture",
    testCategory,
    "rupture"
  )
end

function me.TestSoundSelfAvoidSap()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSap",
    testCategory,
    "sap"
  )
end

function me.TestSoundSelfAvoidShiv()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShiv",
    testCategory,
    "shiv"
  )
end

function me.TestSoundSelfAvoidSinisterStrike()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSinisterStrike",
    testCategory,
    "sinister_strike"
  )
end

function me.TestSoundSelfAvoidWoundPoisonEffect()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidWoundPoisonEffect",
    testCategory,
    "wound_poison_effect"
  )
end

function me.TestSoundSelfAvoidGhostlyStrike()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidGhostlyStrike",
    testCategory,
    "ghostly_strike"
  )
end

function me.TestSoundSelfAvoidHemorrhage()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHemorrhage",
    testCategory,
    "hemorrhage"
  )
end

function me.TestSoundSelfAvoidMutilate()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMutilate",
    testCategory,
    "mutilate"
  )
end

function me.TestSoundSelfAvoidRiposte()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidRiposte",
    testCategory,
    "riposte"
  )
end
