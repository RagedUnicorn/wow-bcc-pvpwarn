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
mod.testCombatEventsSelfAvoidDruid = me

me.tag = "TestCombatEventsSelfAvoidDruid"

local testGroupName = "CombatEventsSelfAvoidDruid"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBashRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBashRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBashRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidClawRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidClawRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidClawRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidClawRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidClawRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidClawRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidCycloneMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingRoarRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingRoarRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingRoarRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingRoarRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingRoarRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingRoarRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEntanglingRootsRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEntanglingRootsRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEntanglingRootsRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEntanglingRootsRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEntanglingRootsRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEntanglingRootsRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEntanglingRootsRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFerociousBiteRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFerociousBiteRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFerociousBiteRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFerociousBiteRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFerociousBiteRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFerociousBiteRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHibernateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHibernateRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHibernateRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLacerateRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMaimRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMangleBearRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMangleBearRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMangleBearRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMangleCatRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMangleCatRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMangleCatRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMoonfireRank12Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPounceRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPounceRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPounceRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPounceRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRakeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRakeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRakeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRakeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRakeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRavageRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRavageRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRavageRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRavageRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRavageRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRipRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRipRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRipRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRipRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRipRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRipRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRipRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShredRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShredRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShredRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShredRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShredRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShredRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShredRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidStarfireRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSwipeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSwipeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSwipeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSwipeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSwipeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSwipeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWrathRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireFeralRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireFeralRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireFeralRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireFeralRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFaerieFireFeralRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFeralChargeMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidInsectSwarmRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidInsectSwarmRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidInsectSwarmRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidInsectSwarmRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidInsectSwarmRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidInsectSwarmRank6Missed)
end

function me.TestCombatEventSelfAvoidBashRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBashRank1Missed",
    testCategory,
    5211,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBashRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBashRank2Missed",
    testCategory,
    6798,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBashRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBashRank3Missed",
    testCategory,
    8983,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidClawRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidClawRank1Missed",
    testCategory,
    1082,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidClawRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidClawRank2Missed",
    testCategory,
    3029,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidClawRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidClawRank3Missed",
    testCategory,
    5201,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidClawRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidClawRank4Missed",
    testCategory,
    9849,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidClawRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidClawRank5Missed",
    testCategory,
    9850,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidClawRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidClawRank6Missed",
    testCategory,
    27000,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidCycloneMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidCycloneMissed",
    testCategory,
    33786,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingRoarRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingRoarRank1Missed",
    testCategory,
    99,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingRoarRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingRoarRank2Missed",
    testCategory,
    1735,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingRoarRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingRoarRank3Missed",
    testCategory,
    9490,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingRoarRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingRoarRank4Missed",
    testCategory,
    9747,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingRoarRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingRoarRank5Missed",
    testCategory,
    9898,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingRoarRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingRoarRank6Missed",
    testCategory,
    26998,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEntanglingRootsRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidEntanglingRootsRank1Missed",
    testCategory,
    339,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEntanglingRootsRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidEntanglingRootsRank2Missed",
    testCategory,
    1062,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEntanglingRootsRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidEntanglingRootsRank3Missed",
    testCategory,
    5195,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEntanglingRootsRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidEntanglingRootsRank4Missed",
    testCategory,
    5196,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEntanglingRootsRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidEntanglingRootsRank5Missed",
    testCategory,
    9852,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEntanglingRootsRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidEntanglingRootsRank6Missed",
    testCategory,
    9853,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEntanglingRootsRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidEntanglingRootsRank7Missed",
    testCategory,
    26989,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireRank1Missed",
    testCategory,
    770,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireRank2Missed",
    testCategory,
    778,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireRank3Missed",
    testCategory,
    9749,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireRank4Missed",
    testCategory,
    9907,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireRank5Missed",
    testCategory,
    26993,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFerociousBiteRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFerociousBiteRank1Missed",
    testCategory,
    22568,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFerociousBiteRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFerociousBiteRank2Missed",
    testCategory,
    22827,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFerociousBiteRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFerociousBiteRank3Missed",
    testCategory,
    22828,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFerociousBiteRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFerociousBiteRank4Missed",
    testCategory,
    22829,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFerociousBiteRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFerociousBiteRank5Missed",
    testCategory,
    31018,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFerociousBiteRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFerociousBiteRank6Missed",
    testCategory,
    24248,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHibernateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHibernateRank1Missed",
    testCategory,
    2637,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
function me.TestCombatEventSelfAvoidHibernateRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHibernateRank2Missed",
    testCategory,
    18657,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
function me.TestCombatEventSelfAvoidHibernateRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHibernateRank3Missed",
    testCategory,
    18658,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLacerateRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLacerateRank1Missed",
    testCategory,
    33745,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMaimRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMaimRank1Missed",
    testCategory,
    22570,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMangleBearRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMangleBearRank1Missed",
    testCategory,
    33878,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMangleBearRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMangleBearRank2Missed",
    testCategory,
    33986,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMangleBearRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMangleBearRank3Missed",
    testCategory,
    33987,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMangleCatRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMangleCatRank1Missed",
    testCategory,
    33876,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMangleCatRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMangleCatRank2Missed",
    testCategory,
    33982,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMangleCatRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMangleCatRank3Missed",
    testCategory,
    33983,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank1Missed",
    testCategory,
    8921,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank2Missed",
    testCategory,
    8924,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank3Missed",
    testCategory,
    8925,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank4Missed",
    testCategory,
    8926,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank5Missed",
    testCategory,
    8927,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank6Missed",
    testCategory,
    8928,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank7Missed",
    testCategory,
    8929,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank8Missed",
    testCategory,
    9833,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank9Missed",
    testCategory,
    9834,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank10Missed",
    testCategory,
    9835,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank11Missed",
    testCategory,
    26987,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMoonfireRank12Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMoonfireRank12Missed",
    testCategory,
    26988,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPounceRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPounceRank1Missed",
    testCategory,
    9005,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPounceRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPounceRank2Missed",
    testCategory,
    9823,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPounceRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPounceRank3Missed",
    testCategory,
    9827,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPounceRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPounceRank4Missed",
    testCategory,
    27006,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRakeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRakeRank1Missed",
    testCategory,
    1822,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRakeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRakeRank2Missed",
    testCategory,
    1823,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRakeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRakeRank3Missed",
    testCategory,
    1824,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRakeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRakeRank4Missed",
    testCategory,
    9904,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRakeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRakeRank5Missed",
    testCategory,
    27003,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRavageRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRavageRank1Missed",
    testCategory,
    6785,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRavageRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRavageRank2Missed",
    testCategory,
    6787,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRavageRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRavageRank3Missed",
    testCategory,
    9866,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRavageRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRavageRank4Missed",
    testCategory,
    9867,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRavageRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRavageRank5Missed",
    testCategory,
    27005,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRipRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRipRank1Missed",
    testCategory,
    1079,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRipRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRipRank2Missed",
    testCategory,
    9492,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRipRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRipRank3Missed",
    testCategory,
    9493,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRipRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRipRank4Missed",
    testCategory,
    9752,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRipRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRipRank5Missed",
    testCategory,
    9894,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRipRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRipRank6Missed",
    testCategory,
    9896,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRipRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRipRank7Missed",
    testCategory,
    27008,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShredRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShredRank1Missed",
    testCategory,
    5221,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShredRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShredRank2Missed",
    testCategory,
    6800,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShredRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShredRank3Missed",
    testCategory,
    8992,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShredRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShredRank4Missed",
    testCategory,
    9829,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShredRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShredRank5Missed",
    testCategory,
    9830,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShredRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShredRank6Missed",
    testCategory,
    27001,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShredRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShredRank7Missed",
    testCategory,
    27002,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank1Missed",
    testCategory,
    2912,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank2Missed",
    testCategory,
    8949,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank3Missed",
    testCategory,
    8950,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank4Missed",
    testCategory,
    8951,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank5Missed",
    testCategory,
    9875,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank6Missed",
    testCategory,
    9876,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank7Missed",
    testCategory,
    25298,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidStarfireRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidStarfireRank8Missed",
    testCategory,
    26986,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSwipeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSwipeRank1Missed",
    testCategory,
    779,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSwipeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSwipeRank2Missed",
    testCategory,
    780,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSwipeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSwipeRank3Missed",
    testCategory,
    769,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSwipeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSwipeRank4Missed",
    testCategory,
    9754,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSwipeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSwipeRank5Missed",
    testCategory,
    9908,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSwipeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSwipeRank6Missed",
    testCategory,
    26997,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank1Missed",
    testCategory,
    5176,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank2Missed",
    testCategory,
    5177,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank3Missed",
    testCategory,
    5178,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank4Missed",
    testCategory,
    5179,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank5Missed",
    testCategory,
    5180,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank6Missed",
    testCategory,
    6780,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank7Missed",
    testCategory,
    8905,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank8Missed",
    testCategory,
    9912,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank9Missed",
    testCategory,
    26984,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWrathRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWrathRank10Missed",
    testCategory,
    26985,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireFeralRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireFeralRank1Missed",
    testCategory,
    16857,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireFeralRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireFeralRank2Missed",
    testCategory,
    17390,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireFeralRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireFeralRank3Missed",
    testCategory,
    17391,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireFeralRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireFeralRank4Missed",
    testCategory,
    17392,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFaerieFireFeralRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFaerieFireFeralRank5Missed",
    testCategory,
    27011,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFeralChargeMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFeralChargeMissed",
    testCategory,
    16979,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidInsectSwarmRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidInsectSwarmRank1Missed",
    testCategory,
    5570,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidInsectSwarmRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidInsectSwarmRank2Missed",
    testCategory,
    24974,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidInsectSwarmRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidInsectSwarmRank3Missed",
    testCategory,
    24975,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidInsectSwarmRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidInsectSwarmRank4Missed",
    testCategory,
    24976,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidInsectSwarmRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidInsectSwarmRank5Missed",
    testCategory,
    24977,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidInsectSwarmRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidInsectSwarmRank6Missed",
    testCategory,
    27013,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
