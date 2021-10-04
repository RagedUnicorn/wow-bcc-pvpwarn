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
mod.testCombatEventsSelfAvoidWarrior = me

me.tag = "TestCombatEventsSelfAvoidWarrior"

local testGroupName = "CombatEventsSelfAvoidWarrior"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARRIOR.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingShoutRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingShoutRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingShoutRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingShoutRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingShoutRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingShoutRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDemoralizingShoutRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDisarmMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHamstringRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHamstringRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHamstringRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHamstringRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidIntimidatingShoutMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidOverpowerRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidOverpowerRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidOverpowerRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidOverpowerRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPummelRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPummelRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldBashRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldBashRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldBashRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldBashRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSlamRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSlamRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSlamRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSlamRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSlamRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSlamRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSunderArmorRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSunderArmorRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSunderArmorRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSunderArmorRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSunderArmorRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWhirlwindMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConcussionBlowMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMortalStrikeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMortalStrikeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMortalStrikeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMortalStrikeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMortalStrikeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMortalStrikeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPiercingHowlMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldSlamRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldSlamRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldSlamRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldSlamRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldSlamRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidShieldSlamRank6Missed)
end

function me.TestCombatEventSelfAvoidDemoralizingShoutRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingShoutRank1Missed",
    testCategory,
    1160,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingShoutRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingShoutRank2Missed",
    testCategory,
    6190,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingShoutRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingShoutRank3Missed",
    testCategory,
    11554,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingShoutRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingShoutRank4Missed",
    testCategory,
    11555,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingShoutRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingShoutRank5Missed",
    testCategory,
    11556,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingShoutRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingShoutRank6Missed",
    testCategory,
    25202,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDemoralizingShoutRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDemoralizingShoutRank7Missed",
    testCategory,
    25203,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDisarmMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDisarmMissed",
    testCategory,
    676,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHamstringRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHamstringRank1Missed",
    testCategory,
    1715,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHamstringRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHamstringRank2Missed",
    testCategory,
    7372,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHamstringRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHamstringRank3Missed",
    testCategory,
    7373,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHamstringRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHamstringRank4Missed",
    testCategory,
    25212,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidIntimidatingShoutMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidIntimidatingShoutMissed",
    testCategory,
    5246,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidOverpowerRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidOverpowerRank1Missed",
    testCategory,
    7384,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidOverpowerRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidOverpowerRank2Missed",
    testCategory,
    7887,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidOverpowerRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidOverpowerRank3Missed",
    testCategory,
    11584,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidOverpowerRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidOverpowerRank4Missed",
    testCategory,
    11585,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPummelRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPummelRank1Missed",
    testCategory,
    6552,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPummelRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPummelRank2Missed",
    testCategory,
    6554,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldBashRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldBashRank1Missed",
    testCategory,
    72,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldBashRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldBashRank2Missed",
    testCategory,
    1671,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldBashRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldBashRank3Missed",
    testCategory,
    1672,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldBashRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldBashRank4Missed",
    testCategory,
    29704,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSlamRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSlamRank1Missed",
    testCategory,
    1464,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSlamRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSlamRank2Missed",
    testCategory,
    8820,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSlamRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSlamRank3Missed",
    testCategory,
    11604,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSlamRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSlamRank4Missed",
    testCategory,
    11605,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSlamRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSlamRank5Missed",
    testCategory,
    25241,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSlamRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSlamRank6Missed",
    testCategory,
    25242,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSunderArmorRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSunderArmorRank1Missed",
    testCategory,
    7386,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSunderArmorRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSunderArmorRank2Missed",
    testCategory,
    7405,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSunderArmorRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSunderArmorRank3Missed",
    testCategory,
    8380,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSunderArmorRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSunderArmorRank4Missed",
    testCategory,
    11596,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSunderArmorRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSunderArmorRank5Missed",
    testCategory,
    11597,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWhirlwindMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWhirlwindMissed",
    testCategory,
    1680,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConcussionBlowMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConcussionBlowMissed",
    testCategory,
    12809,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMortalStrikeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMortalStrikeRank1Missed",
    testCategory,
    12294,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMortalStrikeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMortalStrikeRank2Missed",
    testCategory,
    21551,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMortalStrikeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMortalStrikeRank3Missed",
    testCategory,
    21552,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMortalStrikeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMortalStrikeRank4Missed",
    testCategory,
    21553,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMortalStrikeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMortalStrikeRank5Missed",
    testCategory,
    25248,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMortalStrikeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMortalStrikeRank6Missed",
    testCategory,
    30330,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPiercingHowlMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPiercingHowlMissed",
    testCategory,
    12323,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldSlamRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldSlamRank1Missed",
    testCategory,
    23922,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldSlamRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldSlamRank2Missed",
    testCategory,
    23923,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldSlamRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldSlamRank3Missed",
    testCategory,
    23924,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldSlamRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldSlamRank4Missed",
    testCategory,
    23925,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldSlamRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldSlamRank5Missed",
    testCategory,
    25258,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidShieldSlamRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidShieldSlamRank6Missed",
    testCategory,
    30356,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
