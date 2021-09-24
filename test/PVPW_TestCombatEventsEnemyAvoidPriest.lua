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
mod.testCombatEventsEnemyAvoidPriest = me

me.tag = "TestCombatEventsEnemyAvoidPriest"

local testGroupName = "CombatEventsEnemyAvoidPriest"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidChastiseRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidChastiseRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidChastiseRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidChastiseRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidChastiseRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidChastiseRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDevouringPlagueRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDevouringPlagueRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDevouringPlagueRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDevouringPlagueRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDevouringPlagueRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDevouringPlagueRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidDevouringPlagueRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHexOfWeaknessRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHexOfWeaknessRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHexOfWeaknessRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHexOfWeaknessRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHexOfWeaknessRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHexOfWeaknessRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHexOfWeaknessRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidHolyFireRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidManaBurnRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidManaBurnRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidManaBurnRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidManaBurnRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidManaBurnRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidManaBurnRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidManaBurnRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindBlastRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindControlRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindControlRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindControlRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPsychicScreamRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPsychicScreamRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPsychicScreamRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidPsychicScreamRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordDeathRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordDeathRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidShadowWordPainRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSmiteRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBlackoutRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBlackoutRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBlackoutRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBlackoutRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidBlackoutRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindFlayRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindFlayRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindFlayRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindFlayRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindFlayRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindFlayRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidMindFlayRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidSilenceMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidVampiricTouchRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidVampiricTouchRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEnemyAvoidVampiricTouchRank3Missed)
end

function me.TestCombatEventEnemyAvoidChastiseRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidChastiseRank1Missed",
    testCategory,
    44041,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidChastiseRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidChastiseRank2Missed",
    testCategory,
    44043,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidChastiseRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidChastiseRank3Missed",
    testCategory,
    44044,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidChastiseRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidChastiseRank4Missed",
    testCategory,
    44045,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidChastiseRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidChastiseRank5Missed",
    testCategory,
    44046,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidChastiseRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidChastiseRank6Missed",
    testCategory,
    44047,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDevouringPlagueRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDevouringPlagueRank1Missed",
    testCategory,
    2944,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDevouringPlagueRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDevouringPlagueRank2Missed",
    testCategory,
    19276,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDevouringPlagueRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDevouringPlagueRank3Missed",
    testCategory,
    19277,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDevouringPlagueRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDevouringPlagueRank4Missed",
    testCategory,
    19278,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDevouringPlagueRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDevouringPlagueRank5Missed",
    testCategory,
    19279,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDevouringPlagueRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDevouringPlagueRank6Missed",
    testCategory,
    19280,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidDevouringPlagueRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidDevouringPlagueRank7Missed",
    testCategory,
    25467,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHexOfWeaknessRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHexOfWeaknessRank1Missed",
    testCategory,
    9035,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHexOfWeaknessRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHexOfWeaknessRank2Missed",
    testCategory,
    19281,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHexOfWeaknessRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHexOfWeaknessRank3Missed",
    testCategory,
    19282,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHexOfWeaknessRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHexOfWeaknessRank4Missed",
    testCategory,
    19283,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHexOfWeaknessRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHexOfWeaknessRank5Missed",
    testCategory,
    19284,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHexOfWeaknessRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHexOfWeaknessRank6Missed",
    testCategory,
    19285,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHexOfWeaknessRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHexOfWeaknessRank7Missed",
    testCategory,
    25470,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank1Missed",
    testCategory,
    14914,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank2Missed",
    testCategory,
    15262,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank3Missed",
    testCategory,
    15263,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank4Missed",
    testCategory,
    15264,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank5Missed",
    testCategory,
    15265,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank6Missed",
    testCategory,
    15266,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank7Missed",
    testCategory,
    15267,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank8Missed",
    testCategory,
    15261,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidHolyFireRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidHolyFireRank9Missed",
    testCategory,
    25384,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidManaBurnRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidManaBurnRank1Missed",
    testCategory,
    8129,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidManaBurnRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidManaBurnRank2Missed",
    testCategory,
    8131,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidManaBurnRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidManaBurnRank3Missed",
    testCategory,
    10874,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidManaBurnRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidManaBurnRank4Missed",
    testCategory,
    10875,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidManaBurnRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidManaBurnRank5Missed",
    testCategory,
    10876,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidManaBurnRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidManaBurnRank6Missed",
    testCategory,
    25379,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidManaBurnRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidManaBurnRank7Missed",
    testCategory,
    25380,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank1Missed",
    testCategory,
    8092,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank2Missed",
    testCategory,
    8102,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank3Missed",
    testCategory,
    8103,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank4Missed",
    testCategory,
    8104,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank5Missed",
    testCategory,
    8105,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank6Missed",
    testCategory,
    8106,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank7Missed",
    testCategory,
    10945,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank8Missed",
    testCategory,
    10946,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank9Missed",
    testCategory,
    10947,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank10Missed",
    testCategory,
    25372,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindBlastRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindBlastRank11Missed",
    testCategory,
    25375,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindControlRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindControlRank1Missed",
    testCategory,
    605,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindControlRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindControlRank2Missed",
    testCategory,
    10911,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindControlRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindControlRank3Missed",
    testCategory,
    10912,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPsychicScreamRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPsychicScreamRank1Missed",
    testCategory,
    8122,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPsychicScreamRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPsychicScreamRank2Missed",
    testCategory,
    8124,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPsychicScreamRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPsychicScreamRank3Missed",
    testCategory,
    10888,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidPsychicScreamRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidPsychicScreamRank4Missed",
    testCategory,
    10890,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordDeathRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordDeathRank1Missed",
    testCategory,
    32379,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordDeathRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordDeathRank2Missed",
    testCategory,
    32996,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank9Missed",
    testCategory,
    25367,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank10Missed",
    testCategory,
    25368,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank6Missed",
    testCategory,
    10892,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank7Missed",
    testCategory,
    10893,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank8Missed",
    testCategory,
    10894,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank1Missed",
    testCategory,
    589,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank2Missed",
    testCategory,
    594,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank3Missed",
    testCategory,
    970,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank4Missed",
    testCategory,
    992,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidShadowWordPainRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidShadowWordPainRank5Missed",
    testCategory,
    2767,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank9Missed",
    testCategory,
    25363,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank10Missed",
    testCategory,
    25364,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank1Missed",
    testCategory,
    585,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank2Missed",
    testCategory,
    591,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank3Missed",
    testCategory,
    598,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank4Missed",
    testCategory,
    984,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank5Missed",
    testCategory,
    1004,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank6Missed",
    testCategory,
    6060,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank7Missed",
    testCategory,
    10933,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSmiteRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSmiteRank8Missed",
    testCategory,
    10934,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBlackoutRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBlackoutRank1Missed",
    testCategory,
    15268,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBlackoutRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBlackoutRank2Missed",
    testCategory,
    15323,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBlackoutRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBlackoutRank3Missed",
    testCategory,
    15324,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBlackoutRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBlackoutRank4Missed",
    testCategory,
    15325,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidBlackoutRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidBlackoutRank5Missed",
    testCategory,
    15326,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindFlayRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindFlayRank1Missed",
    testCategory,
    15407,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindFlayRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindFlayRank2Missed",
    testCategory,
    17311,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindFlayRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindFlayRank3Missed",
    testCategory,
    17312,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindFlayRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindFlayRank4Missed",
    testCategory,
    17313,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindFlayRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindFlayRank5Missed",
    testCategory,
    17314,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindFlayRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindFlayRank6Missed",
    testCategory,
    18807,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidMindFlayRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidMindFlayRank7Missed",
    testCategory,
    25387,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidSilenceMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidSilenceMissed",
    testCategory,
    15487,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidVampiricTouchRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidVampiricTouchRank1Missed",
    testCategory,
    34914,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidVampiricTouchRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidVampiricTouchRank2Missed",
    testCategory,
    34916,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end

function me.TestCombatEventEnemyAvoidVampiricTouchRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventEnemyAvoidVampiricTouchRank3Missed",
    testCategory,
    34917,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_ENEMY
  )
end
