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
mod.testSoundEnemyAvoidWarriorEn = me

me.tag = "TestSoundEnemyAvoidWarriorEn"

local testGroupName = "SoundEnemyAvoidWarriorEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARRIOR.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDemoralizingShout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDisarm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidHamstring)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidIntimidatingShout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidOverpower)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPummel)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShieldBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSlam)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSunderArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidWhirlwind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidConcussionBlow)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMortalStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPiercingHowl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShieldSlam)
end

function me.TestSoundEnemyAvoidDemoralizingShout()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDemoralizingShout",
    testCategory,
    "demoralizing_shout"
  )
end

function me.TestSoundEnemyAvoidDisarm()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDisarm",
    testCategory,
    "disarm"
  )
end

function me.TestSoundEnemyAvoidHamstring()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidHamstring",
    testCategory,
    "hamstring"
  )
end

function me.TestSoundEnemyAvoidIntimidatingShout()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidIntimidatingShout",
    testCategory,
    "intimidating_shout"
  )
end

function me.TestSoundEnemyAvoidOverpower()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidOverpower",
    testCategory,
    "overpower"
  )
end

function me.TestSoundEnemyAvoidPummel()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPummel",
    testCategory,
    "pummel"
  )
end

function me.TestSoundEnemyAvoidShieldBash()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShieldBash",
    testCategory,
    "shield_bash"
  )
end

function me.TestSoundEnemyAvoidSlam()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSlam",
    testCategory,
    "slam"
  )
end

function me.TestSoundEnemyAvoidSunderArmor()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSunderArmor",
    testCategory,
    "sunder_armor"
  )
end

function me.TestSoundEnemyAvoidWhirlwind()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidWhirlwind",
    testCategory,
    "whirlwind"
  )
end

function me.TestSoundEnemyAvoidConcussionBlow()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidConcussionBlow",
    testCategory,
    "concussion_blow"
  )
end

function me.TestSoundEnemyAvoidMortalStrike()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMortalStrike",
    testCategory,
    "mortal_strike"
  )
end

function me.TestSoundEnemyAvoidPiercingHowl()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPiercingHowl",
    testCategory,
    "piercing_howl"
  )
end

function me.TestSoundEnemyAvoidShieldSlam()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShieldSlam",
    testCategory,
    "shield_slam"
  )
end
