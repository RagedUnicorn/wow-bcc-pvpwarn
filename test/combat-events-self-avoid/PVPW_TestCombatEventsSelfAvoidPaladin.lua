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
mod.testCombatEventsSelfAvoidPaladin = me

me.tag = "TestCombatEventsSelfAvoidPaladin"

local testGroupName = "CombatEventsSelfAvoidPaladin"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PALADIN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfJusticeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfJusticeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfJusticeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfJusticeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfWrathRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfWrathRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfWrathRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHammerOfWrathRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAvengersShieldRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAvengersShieldRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAvengersShieldRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRepentanceMissed)
end

function me.TestCombatEventSelfAvoidHammerOfJusticeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfJusticeRank1Missed",
    testCategory,
    853,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHammerOfJusticeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfJusticeRank2Missed",
    testCategory,
    5588,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHammerOfJusticeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfJusticeRank3Missed",
    testCategory,
    5589,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHammerOfJusticeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfJusticeRank4Missed",
    testCategory,
    10308,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHammerOfWrathRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfWrathRank4Missed",
    testCategory,
    27180,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHammerOfWrathRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfWrathRank1Missed",
    testCategory,
    24275,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHammerOfWrathRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfWrathRank2Missed",
    testCategory,
    24274,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHammerOfWrathRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHammerOfWrathRank3Missed",
    testCategory,
    24239,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAvengersShieldRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAvengersShieldRank1Missed",
    testCategory,
    31935,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAvengersShieldRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAvengersShieldRank2Missed",
    testCategory,
    32699,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAvengersShieldRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAvengersShieldRank3Missed",
    testCategory,
    32700,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRepentanceMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRepentanceMissed",
    testCategory,
    20066,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
