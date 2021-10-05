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
mod.testCombatEventsEnemyAvoidRogue = me

me.tag = "TestCombatEventsEnemyAvoidRogue"

local testGroupName = "CombatEventsEnemyAvoidRogue"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAmbushRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAmbushRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAmbushRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAmbushRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAmbushRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAmbushRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAmbushRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidAnestheticPoisonEffectRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBackstabRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBlindMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCheapShotMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCripplingPoisonEffectRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCripplingPoisonEffectRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeadlyThrowMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDistractMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEnvenomRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEnvenomRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEviscerateRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidExposeArmorRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidExposeArmorRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidExposeArmorRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidExposeArmorRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidExposeArmorRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidExposeArmorRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGarroteRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGougeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGougeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGougeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGougeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGougeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGougeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInstantPoisonEffectRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInstantPoisonEffectRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInstantPoisonEffectRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInstantPoisonEffectRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInstantPoisonEffectRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInstantPoisonEffectRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInstantPoisonEffectRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidKickRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidKickRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidKickRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidKickRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidKickRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidKidneyShotRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidKidneyShotRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRuptureRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRuptureRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRuptureRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRuptureRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRuptureRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRuptureRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRuptureRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSapRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSapRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSapRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShivRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSinisterStrikeRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWoundPoisonEffectRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWoundPoisonEffectRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWoundPoisonEffectRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWoundPoisonEffectRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWoundPoisonEffectRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidGhostlyStrikeMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHemorrhageRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHemorrhageRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHemorrhageRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHemorrhageRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMutilateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMutilateRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMutilateRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMutilateRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRiposteMissed)
end

function me.TestCombatEventEnemyAvoidAmbushRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAmbushRank1Missed",
    testCategory,
    8676,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidAmbushRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAmbushRank2Missed",
    testCategory,
    8724,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidAmbushRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAmbushRank3Missed",
    testCategory,
    8725,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidAmbushRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAmbushRank4Missed",
    testCategory,
    11267,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidAmbushRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAmbushRank5Missed",
    testCategory,
    11268,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidAmbushRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAmbushRank6Missed",
    testCategory,
    11269,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidAmbushRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAmbushRank7Missed",
    testCategory,
    27441,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidAnestheticPoisonEffectRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidAnestheticPoisonEffectRank1Missed",
    testCategory,
    26688,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank1Missed",
    testCategory,
    53,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank2Missed",
    testCategory,
    2589,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank3Missed",
    testCategory,
    2590,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank4Missed",
    testCategory,
    2591,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank5Missed",
    testCategory,
    8721,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank6Missed",
    testCategory,
    11279,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank7Missed",
    testCategory,
    11280,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank8Missed",
    testCategory,
    11281,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank9Missed",
    testCategory,
    25300,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBackstabRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBackstabRank10Missed",
    testCategory,
    26863,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBlindMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBlindMissed",
    testCategory,
    2094,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCheapShotMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCheapShotMissed",
    testCategory,
    1833,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCripplingPoisonEffectRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCripplingPoisonEffectRank1Missed",
    testCategory,
    3409,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCripplingPoisonEffectRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCripplingPoisonEffectRank2Missed",
    testCategory,
    11201,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end


function me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyPoisonEffectRank1Missed",
    testCategory,
    2818,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyPoisonEffectRank2Missed",
    testCategory,
    2819,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyPoisonEffectRank3Missed",
    testCategory,
    11353,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyPoisonEffectRank4Missed",
    testCategory,
    11354,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyPoisonEffectRank5Missed",
    testCategory,
    25349,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyPoisonEffectRank6Missed",
    testCategory,
    26968,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeadlyPoisonEffectRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyPoisonEffectRank7Missed",
    testCategory,
    27187,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeadlyThrowMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeadlyThrowMissed",
    testCategory,
    26679,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDistractMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDistractMissed",
    testCategory,
    1725,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEnvenomRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEnvenomRank1Missed",
    testCategory,
    32645,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEnvenomRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEnvenomRank2Missed",
    testCategory,
    32684,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank1Missed",
    testCategory,
    2098,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank2Missed",
    testCategory,
    6760,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank3Missed",
    testCategory,
    6761,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank4Missed",
    testCategory,
    6762,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank5Missed",
    testCategory,
    8623,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank6Missed",
    testCategory,
    8624,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank7Missed",
    testCategory,
    11299,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank8Missed",
    testCategory,
    11300,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank9Missed",
    testCategory,
    31016,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEviscerateRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEviscerateRank10Missed",
    testCategory,
    26865,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidExposeArmorRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidExposeArmorRank1Missed",
    testCategory,
    8647,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidExposeArmorRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidExposeArmorRank2Missed",
    testCategory,
    8649,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidExposeArmorRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidExposeArmorRank3Missed",
    testCategory,
    8650,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidExposeArmorRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidExposeArmorRank4Missed",
    testCategory,
    11197,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidExposeArmorRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidExposeArmorRank5Missed",
    testCategory,
    11198,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidExposeArmorRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidExposeArmorRank6Missed",
    testCategory,
    26866,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank1Missed",
    testCategory,
    703,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank2Missed",
    testCategory,
    8631,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank3Missed",
    testCategory,
    8632,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank4Missed",
    testCategory,
    8633,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank5Missed",
    testCategory,
    11289,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank6Missed",
    testCategory,
    11290,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank7Missed",
    testCategory,
    26839,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGarroteRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGarroteRank8Missed",
    testCategory,
    26884,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGougeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGougeRank1Missed",
    testCategory,
    1776,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGougeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGougeRank2Missed",
    testCategory,
    1777,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGougeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGougeRank3Missed",
    testCategory,
    8629,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGougeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGougeRank4Missed",
    testCategory,
    11285,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGougeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGougeRank5Missed",
    testCategory,
    11286,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGougeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGougeRank6Missed",
    testCategory,
    38764,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInstantPoisonEffectRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInstantPoisonEffectRank1Missed",
    testCategory,
    8680,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInstantPoisonEffectRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInstantPoisonEffectRank2Missed",
    testCategory,
    8685,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInstantPoisonEffectRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInstantPoisonEffectRank3Missed",
    testCategory,
    8689,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInstantPoisonEffectRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInstantPoisonEffectRank4Missed",
    testCategory,
    11335,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInstantPoisonEffectRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInstantPoisonEffectRank5Missed",
    testCategory,
    11336,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInstantPoisonEffectRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInstantPoisonEffectRank6Missed",
    testCategory,
    11337,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInstantPoisonEffectRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInstantPoisonEffectRank7Missed",
    testCategory,
    26890,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidKickRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidKickRank1Missed",
    testCategory,
    1766,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidKickRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidKickRank2Missed",
    testCategory,
    1767,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidKickRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidKickRank3Missed",
    testCategory,
    1768,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidKickRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidKickRank4Missed",
    testCategory,
    1769,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidKickRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidKickRank5Missed",
    testCategory,
    38768,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidKidneyShotRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidKidneyShotRank1Missed",
    testCategory,
    408,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidKidneyShotRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidKidneyShotRank2Missed",
    testCategory,
    8643,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank1Missed",
    testCategory,
    5760,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank2Missed",
    testCategory,
    8692,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindNumbingPoisonEffectRank3Missed",
    testCategory,
    11398,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRuptureRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRuptureRank1Missed",
    testCategory,
    1943,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRuptureRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRuptureRank2Missed",
    testCategory,
    8639,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRuptureRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRuptureRank3Missed",
    testCategory,
    8640,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRuptureRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRuptureRank4Missed",
    testCategory,
    11273,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRuptureRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRuptureRank5Missed",
    testCategory,
    11274,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRuptureRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRuptureRank6Missed",
    testCategory,
    11275,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRuptureRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRuptureRank7Missed",
    testCategory,
    26867,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSapRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSapRank1Missed",
    testCategory,
    6770,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSapRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSapRank2Missed",
    testCategory,
    2070,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSapRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSapRank3Missed",
    testCategory,
    11297,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShivRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShivRank1Missed",
    testCategory,
    5938,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank1Missed",
    testCategory,
    1752,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank2Missed",
    testCategory,
    1757,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank3Missed",
    testCategory,
    1758,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank4Missed",
    testCategory,
    1759,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank5Missed",
    testCategory,
    1760,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank6Missed",
    testCategory,
    8621,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank7Missed",
    testCategory,
    11293,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank8Missed",
    testCategory,
    11294,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank9Missed",
    testCategory,
    26861,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSinisterStrikeRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSinisterStrikeRank10Missed",
    testCategory,
    26862,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWoundPoisonEffectRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWoundPoisonEffectRank1Missed",
    testCategory,
    13218,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWoundPoisonEffectRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWoundPoisonEffectRank2Missed",
    testCategory,
    13222,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWoundPoisonEffectRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWoundPoisonEffectRank3Missed",
    testCategory,
    13223,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWoundPoisonEffectRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWoundPoisonEffectRank4Missed",
    testCategory,
    13224,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWoundPoisonEffectRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWoundPoisonEffectRank5Missed",
    testCategory,
    27189,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidGhostlyStrikeMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidGhostlyStrikeMissed",
    testCategory,
    14278,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHemorrhageRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHemorrhageRank1Missed",
    testCategory,
    16511,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHemorrhageRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHemorrhageRank2Missed",
    testCategory,
    17347,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHemorrhageRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHemorrhageRank3Missed",
    testCategory,
    17348,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHemorrhageRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHemorrhageRank4Missed",
    testCategory,
    26864,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMutilateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMutilateRank1Missed",
    testCategory,
    1329,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMutilateRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMutilateRank2Missed",
    testCategory,
    34411,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMutilateRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMutilateRank3Missed",
    testCategory,
    34412,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMutilateRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMutilateRank4Missed",
    testCategory,
    34413,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRiposteMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRiposteMissed",
    testCategory,
    14251,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end
