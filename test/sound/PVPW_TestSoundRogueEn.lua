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
mod.testSoundRogueEn = me

me.tag = "TestSoundRogueEn"

local testGroupName = "SoundRogueEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAmbush)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAnestheticPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAnestheticPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBackstab)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCheapShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCloakOfShadows)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownCloakOfShadows)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCripplingPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCripplingPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDeadlyPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDeadlyPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDeadlyThrow)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDistract)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnvenom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEvasion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownEvasion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEviscerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundExposeArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGarrote)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGouge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInstantPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInstantPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundKick)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundKidneyShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMindNumbingPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMindNumbingPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRupture)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShiv)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSinisterStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSliceAndDice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSliceAndDice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSprint)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSprint)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStealth)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundVanish)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWoundPoisonEffect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWoundPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAdrenalineRush)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAdrenalineRush)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBladeFlurry)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBladeFlurry)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCheatDeath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundColdBlood)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownColdBlood)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGhostlyStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownGhostlyStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHemorrhage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMutilate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPremeditation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPreparation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRiposte)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowstep)
end

function me.TestSoundAmbush()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAmbush",
    testCategory,
    "ambush"
  )
end

function me.TestSoundAnestheticPoisonEffect()
  mod.testHelper.TestSoundApplied(
    "TestSoundAnestheticPoisonEffect",
    testCategory,
    "anesthetic_poison_effect"
  )
end

function me.TestSoundAnestheticPoisonApplied()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAnestheticPoisonApplied",
    testCategory,
    "anesthetic_poison"
  )
end

function me.TestSoundBackstab()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBackstab",
    testCategory,
    "backstab"
  )
end

function me.TestSoundBlind()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBlind",
    testCategory,
    "blind"
  )
end

function me.TestSoundCheapShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCheapShot",
    testCategory,
    "cheap_shot"
  )
end

function me.TestSoundCloakOfShadows()
  mod.testHelper.TestSoundApplied(
    "TestSoundCloakOfShadows",
    testCategory,
    "cloak_of_shadows"
  )
end

function me.TestSoundDownCloakOfShadows()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownCloakOfShadows",
    testCategory,
    "cloak_of_shadows"
  )
end

function me.TestSoundCripplingPoisonEffect()
  mod.testHelper.TestSoundApplied(
    "TestSoundCripplingPoisonEffect",
    testCategory,
    "crippling_poison_effect"
  )
end

function me.TestSoundCripplingPoisonApplied()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCripplingPoisonApplied",
    testCategory,
    "crippling_poison"
  )
end

function me.TestSoundDeadlyPoisonEffect()
  mod.testHelper.TestSoundApplied(
    "TestSoundDeadlyPoisonEffect",
    testCategory,
    "deadly_poison_effect"
  )
end

function me.TestSoundDeadlyPoisonApplied()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDeadlyPoisonApplied",
    testCategory,
    "deadly_poison"
  )
end

function me.TestSoundDeadlyThrow()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDeadlyThrow",
    testCategory,
    "deadly_throw"
  )
end

function me.TestSoundDistract()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDistract",
    testCategory,
    "distract"
  )
end

function me.TestSoundEnvenom()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEnvenom",
    testCategory,
    "envenom"
  )
end

function me.TestSoundEvasion()
  mod.testHelper.TestSoundApplied(
    "TestSoundEvasion",
    testCategory,
    "evasion"
  )
end

function me.TestSoundDownEvasion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownEvasion",
    testCategory,
    "evasion"
  )
end

function me.TestSoundEviscerate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEviscerate",
    testCategory,
    "eviscerate"
  )
end

function me.TestSoundExposeArmor()
  mod.testHelper.TestSoundSuccess(
    "TestSoundExposeArmor",
    testCategory,
    "expose_armor"
  )
end

function me.TestSoundGarrote()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGarrote",
    testCategory,
    "garrote"
  )
end

function me.TestSoundGouge()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGouge",
    testCategory,
    "gouge"
  )
end

function me.TestSoundInstantPoisonEffect()
  mod.testHelper.TestSoundApplied(
    "TestSoundInstantPoisonEffect",
    testCategory,
    "instant_poison_effect"
  )
end

function me.TestSoundInstantPoisonApplied()
  mod.testHelper.TestSoundSuccess(
    "TestSoundInstantPoisonApplied",
    testCategory,
    "instant_poison"
  )
end

function me.TestSoundKick()
  mod.testHelper.TestSoundSuccess(
    "TestSoundKick",
    testCategory,
    "kick"
  )
end

function me.TestSoundKidneyShot()
  mod.testHelper.TestSoundSuccess(
    "TestSoundKidneyShot",
    testCategory,
    "kidney_shot"
  )
end

function me.TestSoundMindNumbingPoisonEffect()
  mod.testHelper.TestSoundApplied(
    "TestSoundMindNumbingPoisonEffect",
    testCategory,
    "mind_numbing_poison_effect"
  )
end

function me.TestSoundMindNumbingPoisonApplied()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMindNumbingPoisonApplied",
    testCategory,
    "mind_numbing_poison"
  )
end

function me.TestSoundRupture()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRupture",
    testCategory,
    "rupture"
  )
end

function me.TestSoundSap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSap",
    testCategory,
    "sap"
  )
end

function me.TestSoundShiv()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShiv",
    testCategory,
    "shiv"
  )
end

function me.TestSoundSinisterStrike()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSinisterStrike",
    testCategory,
    "sinister_strike"
  )
end

function me.TestSoundSliceAndDice()
  mod.testHelper.TestSoundApplied(
    "TestSoundSliceAndDice",
    testCategory,
    "slice_and_dice"
  )
end

function me.TestSoundDownSliceAndDice()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSliceAndDice",
    testCategory,
    "slice_and_dice"
  )
end

function me.TestSoundSprint()
  mod.testHelper.TestSoundApplied(
    "TestSoundSprint",
    testCategory,
    "sprint"
  )
end

function me.TestSoundDownSprint()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSprint",
    testCategory,
    "sprint"
  )
end

function me.TestSoundStealth()
  mod.testHelper.TestSoundSuccess(
    "TestSoundStealth",
    testCategory,
    "stealth"
  )
end

function me.TestSoundVanish()
  mod.testHelper.TestSoundSuccess(
    "TestSoundVanish",
    testCategory,
    "vanish"
  )
end

function me.TestSoundWoundPoisonEffect()
  mod.testHelper.TestSoundApplied(
    "TestSoundWoundPoisonEffect",
    testCategory,
    "wound_poison_effect"
  )
end

function me.TestSoundWoundPoisonApplied()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWoundPoisonApplied",
    testCategory,
    "wound_poison"
  )
end

function me.TestSoundAdrenalineRush()
  mod.testHelper.TestSoundApplied(
    "TestSoundAdrenalineRush",
    testCategory,
    "adrenaline_rush"
  )
end

function me.TestSoundDownAdrenalineRush()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAdrenalineRush",
    testCategory,
    "adrenaline_rush"
  )
end

function me.TestSoundBladeFlurry()
  mod.testHelper.TestSoundApplied(
    "TestSoundBladeFlurry",
    testCategory,
    "blade_flurry"
  )
end

function me.TestSoundDownBladeFlurry()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBladeFlurry",
    testCategory,
    "blade_flurry"
  )
end

function me.TestSoundCheatDeath()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCheatDeath",
    testCategory,
    "cheat_death"
  )
end

function me.TestSoundColdBlood()
  mod.testHelper.TestSoundApplied(
    "TestSoundColdBlood",
    testCategory,
    "cold_blood"
  )
end

function me.TestSoundDownColdBlood()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownColdBlood",
    testCategory,
    "cold_blood"
  )
end

function me.TestSoundGhostlyStrike()
  mod.testHelper.TestSoundApplied(
    "TestSoundGhostlyStrike",
    testCategory,
    "ghostly_strike"
  )
end

function me.TestSoundDownGhostlyStrike()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownGhostlyStrike",
    testCategory,
    "ghostly_strike"
  )
end

function me.TestSoundHemorrhage()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHemorrhage",
    testCategory,
    "hemorrhage"
  )
end

function me.TestSoundMutilate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMutilate",
    testCategory,
    "mutilate"
  )
end

function me.TestSoundPremeditation()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPremeditation",
    testCategory,
    "premeditation"
  )
end

function me.TestSoundPreparation()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPreparation",
    testCategory,
    "preparation"
  )
end

function me.TestSoundRiposte()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRiposte",
    testCategory,
    "riposte"
  )
end

function me.TestSoundShadowstep()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowstep",
    testCategory,
    "shadowstep"
  )
end
