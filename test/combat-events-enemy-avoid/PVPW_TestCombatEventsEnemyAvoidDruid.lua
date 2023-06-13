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
mod.testCombatEventsEnemyAvoidDruid = me

me.tag = "TestCombatEventsEnemyAvoidDruid"

local testGroupName = "CombatEventsEnemyAvoidDruid"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBashRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBashRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBashRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidClawRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidClawRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidClawRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidClawRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidClawRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidClawRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidCycloneMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingRoarRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingRoarRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingRoarRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingRoarRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingRoarRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingRoarRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEntanglingRootsRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEntanglingRootsRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEntanglingRootsRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEntanglingRootsRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEntanglingRootsRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEntanglingRootsRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidEntanglingRootsRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFerociousBiteRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFerociousBiteRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFerociousBiteRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFerociousBiteRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFerociousBiteRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFerociousBiteRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHibernateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHibernateRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHibernateRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidLacerateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMaimRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMangleBearRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMangleBearRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMangleBearRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMangleCatRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMangleCatRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMangleCatRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMoonfireRank12Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPounceRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPounceRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPounceRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPounceRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRakeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRakeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRakeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRakeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRakeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRavageRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRavageRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRavageRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRavageRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRavageRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRipRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRipRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRipRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRipRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRipRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRipRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidRipRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShredRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShredRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShredRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShredRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShredRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShredRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShredRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidStarfireRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSwipeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSwipeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSwipeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSwipeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSwipeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSwipeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWrathRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireFeralRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireFeralRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireFeralRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireFeralRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFaerieFireFeralRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidFeralChargeMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInsectSwarmRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInsectSwarmRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInsectSwarmRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInsectSwarmRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInsectSwarmRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidInsectSwarmRank6Missed)
end

function me.TestCombatEventEnemyAvoidBashRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBashRank1Missed",
    testCategory,
    5211,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBashRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBashRank2Missed",
    testCategory,
    6798,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBashRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBashRank3Missed",
    testCategory,
    8983,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidClawRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidClawRank1Missed",
    testCategory,
    1082,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidClawRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidClawRank2Missed",
    testCategory,
    3029,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidClawRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidClawRank3Missed",
    testCategory,
    5201,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidClawRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidClawRank4Missed",
    testCategory,
    9849,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidClawRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidClawRank5Missed",
    testCategory,
    9850,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidClawRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidClawRank6Missed",
    testCategory,
    27000,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidCycloneMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidCycloneMissed",
    testCategory,
    33786,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingRoarRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingRoarRank1Missed",
    testCategory,
    99,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingRoarRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingRoarRank2Missed",
    testCategory,
    1735,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingRoarRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingRoarRank3Missed",
    testCategory,
    9490,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingRoarRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingRoarRank4Missed",
    testCategory,
    9747,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingRoarRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingRoarRank5Missed",
    testCategory,
    9898,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingRoarRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingRoarRank6Missed",
    testCategory,
    26998,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEntanglingRootsRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEntanglingRootsRank1Missed",
    testCategory,
    339,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEntanglingRootsRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEntanglingRootsRank2Missed",
    testCategory,
    1062,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEntanglingRootsRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEntanglingRootsRank3Missed",
    testCategory,
    5195,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEntanglingRootsRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEntanglingRootsRank4Missed",
    testCategory,
    5196,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEntanglingRootsRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEntanglingRootsRank5Missed",
    testCategory,
    9852,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEntanglingRootsRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEntanglingRootsRank6Missed",
    testCategory,
    9853,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidEntanglingRootsRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidEntanglingRootsRank7Missed",
    testCategory,
    26989,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireRank1Missed",
    testCategory,
    770,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireRank2Missed",
    testCategory,
    778,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireRank3Missed",
    testCategory,
    9749,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireRank4Missed",
    testCategory,
    9907,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireRank5Missed",
    testCategory,
    26993,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFerociousBiteRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFerociousBiteRank1Missed",
    testCategory,
    22568,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFerociousBiteRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFerociousBiteRank2Missed",
    testCategory,
    22827,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFerociousBiteRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFerociousBiteRank3Missed",
    testCategory,
    22828,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFerociousBiteRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFerociousBiteRank4Missed",
    testCategory,
    22829,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFerociousBiteRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFerociousBiteRank5Missed",
    testCategory,
    31018,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFerociousBiteRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFerociousBiteRank6Missed",
    testCategory,
    24248,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHibernateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHibernateRank1Missed",
    testCategory,
    2637,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHibernateRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHibernateRank2Missed",
    testCategory,
    18657,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHibernateRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHibernateRank3Missed",
    testCategory,
    18658,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidLacerateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidLacerateRank1Missed",
    testCategory,
    33745,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMaimRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMaimRank1Missed",
    testCategory,
    22570,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMangleBearRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMangleBearRank1Missed",
    testCategory,
    33878,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMangleBearRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMangleBearRank2Missed",
    testCategory,
    33986,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMangleBearRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMangleBearRank3Missed",
    testCategory,
    33987,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMangleCatRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMangleCatRank1Missed",
    testCategory,
    33876,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMangleCatRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMangleCatRank2Missed",
    testCategory,
    33982,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMangleCatRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMangleCatRank3Missed",
    testCategory,
    33983,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank1Missed",
    testCategory,
    8921,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank2Missed",
    testCategory,
    8924,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank3Missed",
    testCategory,
    8925,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank4Missed",
    testCategory,
    8926,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank5Missed",
    testCategory,
    8927,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank6Missed",
    testCategory,
    8928,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank7Missed",
    testCategory,
    8929,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank8Missed",
    testCategory,
    9833,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank9Missed",
    testCategory,
    9834,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank10Missed",
    testCategory,
    9835,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank11Missed",
    testCategory,
    26987,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMoonfireRank12Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMoonfireRank12Missed",
    testCategory,
    26988,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPounceRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPounceRank1Missed",
    testCategory,
    9005,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPounceRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPounceRank2Missed",
    testCategory,
    9823,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPounceRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPounceRank3Missed",
    testCategory,
    9827,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPounceRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPounceRank4Missed",
    testCategory,
    27006,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRakeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRakeRank1Missed",
    testCategory,
    1822,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRakeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRakeRank2Missed",
    testCategory,
    1823,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRakeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRakeRank3Missed",
    testCategory,
    1824,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRakeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRakeRank4Missed",
    testCategory,
    9904,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRakeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRakeRank5Missed",
    testCategory,
    27003,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRavageRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRavageRank1Missed",
    testCategory,
    6785,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRavageRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRavageRank2Missed",
    testCategory,
    6787,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRavageRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRavageRank3Missed",
    testCategory,
    9866,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRavageRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRavageRank4Missed",
    testCategory,
    9867,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRavageRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRavageRank5Missed",
    testCategory,
    27005,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRipRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRipRank1Missed",
    testCategory,
    1079,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRipRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRipRank2Missed",
    testCategory,
    9492,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRipRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRipRank3Missed",
    testCategory,
    9493,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRipRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRipRank4Missed",
    testCategory,
    9752,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRipRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRipRank5Missed",
    testCategory,
    9894,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRipRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRipRank6Missed",
    testCategory,
    9896,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidRipRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidRipRank7Missed",
    testCategory,
    27008,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShredRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShredRank1Missed",
    testCategory,
    5221,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShredRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShredRank2Missed",
    testCategory,
    6800,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShredRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShredRank3Missed",
    testCategory,
    8992,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShredRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShredRank4Missed",
    testCategory,
    9829,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShredRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShredRank5Missed",
    testCategory,
    9830,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShredRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShredRank6Missed",
    testCategory,
    27001,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShredRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShredRank7Missed",
    testCategory,
    27002,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank1Missed",
    testCategory,
    2912,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank2Missed",
    testCategory,
    8949,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank3Missed",
    testCategory,
    8950,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank4Missed",
    testCategory,
    8951,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank5Missed",
    testCategory,
    9875,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank6Missed",
    testCategory,
    9876,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank7Missed",
    testCategory,
    25298,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidStarfireRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidStarfireRank8Missed",
    testCategory,
    26986,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSwipeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSwipeRank1Missed",
    testCategory,
    779,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSwipeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSwipeRank2Missed",
    testCategory,
    780,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSwipeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSwipeRank3Missed",
    testCategory,
    769,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSwipeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSwipeRank4Missed",
    testCategory,
    9754,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSwipeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSwipeRank5Missed",
    testCategory,
    9908,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSwipeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSwipeRank6Missed",
    testCategory,
    26997,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank1Missed",
    testCategory,
    5176,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank2Missed",
    testCategory,
    5177,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank3Missed",
    testCategory,
    5178,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank4Missed",
    testCategory,
    5179,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank5Missed",
    testCategory,
    5180,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank6Missed",
    testCategory,
    6780,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank7Missed",
    testCategory,
    8905,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank8Missed",
    testCategory,
    9912,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank9Missed",
    testCategory,
    26984,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWrathRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWrathRank10Missed",
    testCategory,
    26985,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireFeralRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireFeralRank1Missed",
    testCategory,
    16857,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireFeralRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireFeralRank2Missed",
    testCategory,
    17390,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireFeralRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireFeralRank3Missed",
    testCategory,
    17391,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireFeralRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireFeralRank4Missed",
    testCategory,
    17392,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFaerieFireFeralRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFaerieFireFeralRank5Missed",
    testCategory,
    27011,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidFeralChargeMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidFeralChargeMissed",
    testCategory,
    16979,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInsectSwarmRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInsectSwarmRank1Missed",
    testCategory,
    5570,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInsectSwarmRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInsectSwarmRank2Missed",
    testCategory,
    24974,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInsectSwarmRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInsectSwarmRank3Missed",
    testCategory,
    24975,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInsectSwarmRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInsectSwarmRank4Missed",
    testCategory,
    24976,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInsectSwarmRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInsectSwarmRank5Missed",
    testCategory,
    24977,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidInsectSwarmRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidInsectSwarmRank6Missed",
    testCategory,
    27013,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end
