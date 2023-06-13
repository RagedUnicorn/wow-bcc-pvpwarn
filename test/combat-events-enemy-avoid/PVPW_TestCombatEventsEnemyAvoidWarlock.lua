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
mod.testCombatEventsEnemyAvoidWarlock = me

me.tag = "TestCombatEventsEnemyAvoidWarlock"

local testGroupName = "CombatEventsEnemyAvoidWarlock"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBanishRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBanishRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCorruptionRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfAgonyRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfAgonyRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfAgonyRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfAgonyRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfAgonyRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfAgonyRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfAgonyRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfTheElementsRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfTheElementsRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfTheElementsRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfTheElementsRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfTonguesRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfTonguesRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfWeaknessRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeathCoilRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeathCoilRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeathCoilRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDeathCoilRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainLifeRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainManaRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainManaRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainManaRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainManaRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainManaRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainSoulRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainSoulRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainSoulRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainSoulRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDrainSoulRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFearRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFearRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFearRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHowlOfTerrorRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHowlOfTerrorRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidImmolateRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidIncinerateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidIncinerateRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSearingPainRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSeedOfCorruptionRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowBoltRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSoulFireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSoulFireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSoulFireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSoulFireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidConflagrateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidConflagrateRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidConflagrateRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidConflagrateRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidConflagrateRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidConflagrateRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCurseOfExhaustionMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowburnRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowfuryRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowfuryRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowfuryRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSiphonLifeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSiphonLifeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSiphonLifeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSiphonLifeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSiphonLifeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSiphonLifeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidUnstableAfflictionRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidUnstableAfflictionRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidUnstableAfflictionRank3Missed)
end

function me.TestCombatEventEnemyAvoidBanishRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBanishRank1Missed",
    testCategory,
    710,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBanishRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBanishRank2Missed",
    testCategory,
    18647,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank1Missed",
    testCategory,
    172,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank2Missed",
    testCategory,
    6222,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank3Missed",
    testCategory,
    6223,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank4Missed",
    testCategory,
    7648,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank5Missed",
    testCategory,
    11671,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank6Missed",
    testCategory,
    11672,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank7Missed",
    testCategory,
    25311,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCorruptionRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCorruptionRank8Missed",
    testCategory,
    27216,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfAgonyRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfAgonyRank1Missed",
    testCategory,
    980,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfAgonyRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfAgonyRank2Missed",
    testCategory,
    1014,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfAgonyRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfAgonyRank3Missed",
    testCategory,
    6217,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfAgonyRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfAgonyRank4Missed",
    testCategory,
    11711,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfAgonyRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfAgonyRank5Missed",
    testCategory,
    11712,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfAgonyRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfAgonyRank6Missed",
    testCategory,
    11713,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfAgonyRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfAgonyRank7Missed",
    testCategory,
    27218,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfRecklessnessRank1Missed",
    testCategory,
    704,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfRecklessnessRank2Missed",
    testCategory,
    7658,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfRecklessnessRank3Missed",
    testCategory,
    7659,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfRecklessnessRank4Missed",
    testCategory,
    11717,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfRecklessnessRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfRecklessnessRank5Missed",
    testCategory,
    27226,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfTheElementsRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfTheElementsRank1Missed",
    testCategory,
    1490,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfTheElementsRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfTheElementsRank2Missed",
    testCategory,
    11721,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfTheElementsRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfTheElementsRank3Missed",
    testCategory,
    11722,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfTheElementsRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfTheElementsRank4Missed",
    testCategory,
    27228,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfTonguesRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfTonguesRank1Missed",
    testCategory,
    1714,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfTonguesRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfTonguesRank2Missed",
    testCategory,
    11719,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank1Missed",
    testCategory,
    702,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank2Missed",
    testCategory,
    1108,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank3Missed",
    testCategory,
    6205,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank4Missed",
    testCategory,
    7646,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank5Missed",
    testCategory,
    11707,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank6Missed",
    testCategory,
    11708,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank7Missed",
    testCategory,
    27224,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfWeaknessRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfWeaknessRank8Missed",
    testCategory,
    30909,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeathCoilRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeathCoilRank1Missed",
    testCategory,
    6789,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeathCoilRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeathCoilRank2Missed",
    testCategory,
    17925,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeathCoilRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeathCoilRank3Missed",
    testCategory,
    17926,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDeathCoilRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDeathCoilRank4Missed",
    testCategory,
    27223,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank1Missed",
    testCategory,
    689,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank2Missed",
    testCategory,
    699,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank3Missed",
    testCategory,
    709,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank4Missed",
    testCategory,
    7651,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank5Missed",
    testCategory,
    11699,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank6Missed",
    testCategory,
    11700,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank7Missed",
    testCategory,
    27219,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainLifeRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainLifeRank8Missed",
    testCategory,
    27220,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainManaRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainManaRank1Missed",
    testCategory,
    5138,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainManaRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainManaRank2Missed",
    testCategory,
    6226,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainManaRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainManaRank3Missed",
    testCategory,
    11703,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainManaRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainManaRank4Missed",
    testCategory,
    11704,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainManaRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainManaRank5Missed",
    testCategory,
    27221,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainSoulRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainSoulRank5Missed",
    testCategory,
    27217,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainSoulRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainSoulRank1Missed",
    testCategory,
    1120,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainSoulRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainSoulRank2Missed",
    testCategory,
    8288,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainSoulRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainSoulRank3Missed",
    testCategory,
    8289,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDrainSoulRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDrainSoulRank4Missed",
    testCategory,
    11675,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFearRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFearRank1Missed",
    testCategory,
    5782,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFearRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFearRank2Missed",
    testCategory,
    6213,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFearRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFearRank3Missed",
    testCategory,
    6215,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHowlOfTerrorRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHowlOfTerrorRank2Missed",
    testCategory,
    17928,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHowlOfTerrorRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHowlOfTerrorRank1Missed",
    testCategory,
    5484,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank1Missed",
    testCategory,
    348,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank2Missed",
    testCategory,
    707,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank3Missed",
    testCategory,
    1094,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank4Missed",
    testCategory,
    2941,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank5Missed",
    testCategory,
    11665,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank6Missed",
    testCategory,
    11667,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank7Missed",
    testCategory,
    11668,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank8Missed",
    testCategory,
    25309,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidImmolateRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidImmolateRank9Missed",
    testCategory,
    27215,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidIncinerateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidIncinerateRank1Missed",
    testCategory,
    29722,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidIncinerateRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidIncinerateRank2Missed",
    testCategory,
    32231,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank1Missed",
    testCategory,
    5676,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank2Missed",
    testCategory,
    17919,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank3Missed",
    testCategory,
    17920,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank4Missed",
    testCategory,
    17921,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank5Missed",
    testCategory,
    17922,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank6Missed",
    testCategory,
    17923,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank7Missed",
    testCategory,
    27210,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSearingPainRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSearingPainRank8Missed",
    testCategory,
    30459,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSeedOfCorruptionRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSeedOfCorruptionRank1Missed",
    testCategory,
    27243,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank1Missed",
    testCategory,
    686,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank2Missed",
    testCategory,
    695,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank3Missed",
    testCategory,
    705,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank4Missed",
    testCategory,
    1088,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank5Missed",
    testCategory,
    1106,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank6Missed",
    testCategory,
    7641,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank7Missed",
    testCategory,
    11659,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank8Missed",
    testCategory,
    11660,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank9Missed",
    testCategory,
    11661,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank10Missed",
    testCategory,
    25307,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowBoltRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowBoltRank11Missed",
    testCategory,
    27209,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSoulFireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSoulFireRank1Missed",
    testCategory,
    6353,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSoulFireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSoulFireRank2Missed",
    testCategory,
    17924,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSoulFireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSoulFireRank3Missed",
    testCategory,
    27211,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSoulFireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSoulFireRank4Missed",
    testCategory,
    30545,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidConflagrateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidConflagrateRank1Missed",
    testCategory,
    17962,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidConflagrateRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidConflagrateRank2Missed",
    testCategory,
    18930,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidConflagrateRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidConflagrateRank3Missed",
    testCategory,
    18931,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidConflagrateRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidConflagrateRank4Missed",
    testCategory,
    18932,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidConflagrateRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidConflagrateRank5Missed",
    testCategory,
    27266,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidConflagrateRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidConflagrateRank6Missed",
    testCategory,
    30912,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCurseOfExhaustionMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCurseOfExhaustionMissed",
    testCategory,
    18223,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank1Missed",
    testCategory,
    17877,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank2Missed",
    testCategory,
    18867,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank3Missed",
    testCategory,
    18868,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank4Missed",
    testCategory,
    18869,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank5Missed",
    testCategory,
    18870,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank6Missed",
    testCategory,
    18871,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank7Missed",
    testCategory,
    27263,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowburnRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowburnRank8Missed",
    testCategory,
    30546,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowfuryRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowfuryRank1Missed",
    testCategory,
    30283,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowfuryRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowfuryRank2Missed",
    testCategory,
    30413,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowfuryRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowfuryRank3Missed",
    testCategory,
    30414,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSiphonLifeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSiphonLifeRank1Missed",
    testCategory,
    18265,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSiphonLifeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSiphonLifeRank2Missed",
    testCategory,
    18879,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSiphonLifeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSiphonLifeRank3Missed",
    testCategory,
    18880,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSiphonLifeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSiphonLifeRank4Missed",
    testCategory,
    18881,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSiphonLifeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSiphonLifeRank5Missed",
    testCategory,
    27264,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSiphonLifeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSiphonLifeRank6Missed",
    testCategory,
    30911,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidUnstableAfflictionRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidUnstableAfflictionRank1Missed",
    testCategory,
    30108,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidUnstableAfflictionRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidUnstableAfflictionRank2Missed",
    testCategory,
    30404,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidUnstableAfflictionRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidUnstableAfflictionRank3Missed",
    testCategory,
    30405,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end
