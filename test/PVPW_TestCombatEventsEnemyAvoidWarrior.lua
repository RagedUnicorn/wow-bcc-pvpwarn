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
mod.testCombatEventsEnemyAvoidWarrior = me

me.tag = "TestCombatEventsEnemyAvoidWarrior"

local testGroupName = "CombatEventsEnemyAvoidWarrior"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARRIOR.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingShoutRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingShoutRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingShoutRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingShoutRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingShoutRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingShoutRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDemoralizingShoutRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDisarmMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHamstringRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHamstringRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHamstringRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHamstringRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidIntimidatingShoutMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidOverpowerRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidOverpowerRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidOverpowerRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidOverpowerRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPummelRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPummelRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldBashRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldBashRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldBashRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldBashRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSunderArmorRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSunderArmorRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSunderArmorRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSunderArmorRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSunderArmorRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidWhirlwindMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidConcussionBlowMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMortalStrikeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMortalStrikeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMortalStrikeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMortalStrikeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMortalStrikeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMortalStrikeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPiercingHowlMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldSlamRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldSlamRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldSlamRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldSlamRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldSlamRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShieldSlamRank6Missed)
end

function me.TestCombatEventEnemyAvoidDemoralizingShoutRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingShoutRank1Missed",
    testCategory,
    1160,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingShoutRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingShoutRank2Missed",
    testCategory,
    6190,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingShoutRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingShoutRank3Missed",
    testCategory,
    11554,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingShoutRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingShoutRank4Missed",
    testCategory,
    11555,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingShoutRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingShoutRank5Missed",
    testCategory,
    11556,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingShoutRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingShoutRank6Missed",
    testCategory,
    25202,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDemoralizingShoutRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDemoralizingShoutRank7Missed",
    testCategory,
    25203,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDisarmMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDisarmMissed",
    testCategory,
    676,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHamstringRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHamstringRank1Missed",
    testCategory,
    1715,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHamstringRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHamstringRank2Missed",
    testCategory,
    7372,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHamstringRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHamstringRank3Missed",
    testCategory,
    7373,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHamstringRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHamstringRank4Missed",
    testCategory,
    25212,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidIntimidatingShoutMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidIntimidatingShoutMissed",
    testCategory,
    5246,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidOverpowerRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidOverpowerRank1Missed",
    testCategory,
    7384,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidOverpowerRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidOverpowerRank2Missed",
    testCategory,
    7887,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidOverpowerRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidOverpowerRank3Missed",
    testCategory,
    11584,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidOverpowerRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidOverpowerRank4Missed",
    testCategory,
    11585,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPummelRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPummelRank1Missed",
    testCategory,
    6552,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPummelRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPummelRank2Missed",
    testCategory,
    6554,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldBashRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldBashRank1Missed",
    testCategory,
    72,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldBashRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldBashRank2Missed",
    testCategory,
    1671,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldBashRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldBashRank3Missed",
    testCategory,
    1672,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldBashRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldBashRank4Missed",
    testCategory,
    29704,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSunderArmorRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSunderArmorRank1Missed",
    testCategory,
    7386,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSunderArmorRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSunderArmorRank2Missed",
    testCategory,
    7405,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSunderArmorRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSunderArmorRank3Missed",
    testCategory,
    8380,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSunderArmorRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSunderArmorRank4Missed",
    testCategory,
    11596,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSunderArmorRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSunderArmorRank5Missed",
    testCategory,
    11597,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidWhirlwindMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidWhirlwindMissed",
    testCategory,
    1680,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidConcussionBlowMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidConcussionBlowMissed",
    testCategory,
    12809,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMortalStrikeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMortalStrikeRank1Missed",
    testCategory,
    12294,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMortalStrikeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMortalStrikeRank2Missed",
    testCategory,
    21551,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMortalStrikeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMortalStrikeRank3Missed",
    testCategory,
    21552,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMortalStrikeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMortalStrikeRank4Missed",
    testCategory,
    21553,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMortalStrikeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMortalStrikeRank5Missed",
    testCategory,
    25248,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMortalStrikeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMortalStrikeRank6Missed",
    testCategory,
    30330,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPiercingHowlMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPiercingHowlMissed",
    testCategory,
    12323,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldSlamRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldSlamRank1Missed",
    testCategory,
    23922,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldSlamRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldSlamRank2Missed",
    testCategory,
    23923,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldSlamRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldSlamRank3Missed",
    testCategory,
    23924,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldSlamRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldSlamRank4Missed",
    testCategory,
    23925,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldSlamRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldSlamRank5Missed",
    testCategory,
    25258,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShieldSlamRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShieldSlamRank6Missed",
    testCategory,
    30356,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end
