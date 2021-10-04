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
mod.testSoundWarriorEn = me

me.tag = "TestSoundWarriorEn"

local testGroupName = "SoundWarriorEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARRIOR.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBattleStance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBerserkerRage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBerserkerRage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBerserkerStance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBloodrage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBloodrage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCharge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDefensiveStance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDemoralizingShout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDisarm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHamstring)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIntercept)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIntervene)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIntimidatingShout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundOverpower)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPummel)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRecklessness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownRecklessness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRetaliation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownRetaliation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShieldBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShieldBlock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShieldBlock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShieldWall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShieldWall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSlam)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSpellReflection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSpellReflection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSunderArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWhirlwind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConcussionBlow)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDeathWish)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDeathWish)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLastStand)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownLastStand)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMortalStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPiercingHowl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRampage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownRampage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSecondWind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSecondWind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShieldSlam)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSweepingStrikes)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSweepingStrikes)
end

function me.TestSoundBattleStance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBattleStance",
    testCategory,
    "battle_stance"
  )
end

function me.TestSoundBerserkerRage()
  mod.testHelper.TestSoundApplied(
    "TestSoundBerserkerRage",
    testCategory,
    "berserker_rage"
  )
end

function me.TestSoundDownBerserkerRage()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBerserkerRage",
    testCategory,
    "berserker_rage"
  )
end

function me.TestSoundBerserkerStance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBerserkerStance",
    testCategory,
    "berserker_stance"
  )
end

function me.TestSoundBloodrage()
  mod.testHelper.TestSoundApplied(
    "TestSoundBloodrage",
    testCategory,
    "bloodrage"
  )
end

function me.TestSoundDownBloodrage()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBloodrage",
    testCategory,
    "bloodrage"
  )
end

function me.TestSoundCharge()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCharge",
    testCategory,
    "charge"
  )
end

function me.TestSoundDefensiveStance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDefensiveStance",
    testCategory,
    "defensive_stance"
  )
end

function me.TestSoundDemoralizingShout()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDemoralizingShout",
    testCategory,
    "demoralizing_shout"
  )
end

function me.TestSoundDisarm()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDisarm",
    testCategory,
    "disarm"
  )
end

function me.TestSoundHamstring()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHamstring",
    testCategory,
    "hamstring"
  )
end

function me.TestSoundIntercept()
  mod.testHelper.TestSoundSuccess(
    "TestSoundIntercept",
    testCategory,
    "intercept"
  )
end

function me.TestSoundIntervene()
  mod.testHelper.TestSoundSuccess(
    "TestSoundIntervene",
    testCategory,
    "intervene"
  )
end

function me.TestSoundIntimidatingShout()
  mod.testHelper.TestSoundSuccess(
    "TestSoundIntimidatingShout",
    testCategory,
    "intimidating_shout"
  )
end

function me.TestSoundOverpower()
  mod.testHelper.TestSoundSuccess(
    "TestSoundOverpower",
    testCategory,
    "overpower"
  )
end

function me.TestSoundPummel()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPummel",
    testCategory,
    "pummel"
  )
end

function me.TestSoundRecklessness()
  mod.testHelper.TestSoundApplied(
    "TestSoundRecklessness",
    testCategory,
    "recklessness"
  )
end

function me.TestSoundDownRecklessness()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownRecklessness",
    testCategory,
    "recklessness"
  )
end

function me.TestSoundRetaliation()
  mod.testHelper.TestSoundApplied(
    "TestSoundRetaliation",
    testCategory,
    "retaliation"
  )
end

function me.TestSoundDownRetaliation()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownRetaliation",
    testCategory,
    "retaliation"
  )
end

function me.TestSoundShieldBash()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShieldBash",
    testCategory,
    "shield_bash"
  )
end

function me.TestSoundShieldBlock()
  mod.testHelper.TestSoundApplied(
    "TestSoundShieldBlock",
    testCategory,
    "shield_block"
  )
end

function me.TestSoundDownShieldBlock()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShieldBlock",
    testCategory,
    "shield_block"
  )
end

function me.TestSoundShieldWall()
  mod.testHelper.TestSoundApplied(
    "TestSoundShieldWall",
    testCategory,
    "shield_wall"
  )
end

function me.TestSoundDownShieldWall()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShieldWall",
    testCategory,
    "shield_wall"
  )
end

function me.TestSoundSlam()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSlam",
    testCategory,
    "slam"
  )
end

function me.TestSoundSpellReflection()
  mod.testHelper.TestSoundApplied(
    "TestSoundSpellReflection",
    testCategory,
    "spell_reflection"
  )
end

function me.TestSoundDownSpellReflection()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSpellReflection",
    testCategory,
    "spell_reflection"
  )
end

function me.TestSoundSunderArmor()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSunderArmor",
    testCategory,
    "sunder_armor"
  )
end

function me.TestSoundWhirlwind()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWhirlwind",
    testCategory,
    "whirlwind"
  )
end


function me.TestSoundConcussionBlow()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConcussionBlow",
    testCategory,
    "concussion_blow"
  )
end

function me.TestSoundDeathWish()
  mod.testHelper.TestSoundApplied(
    "TestSoundDeathWish",
    testCategory,
    "death_wish"
  )
end

function me.TestSoundDownDeathWish()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDeathWish",
    testCategory,
    "death_wish"
  )
end

function me.TestSoundLastStand()
  mod.testHelper.TestSoundApplied(
    "TestSoundLastStand",
    testCategory,
    "last_stand"
  )
end

function me.TestSoundDownLastStand()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownLastStand",
    testCategory,
    "last_stand"
  )
end

function me.TestSoundMortalStrike()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMortalStrike",
    testCategory,
    "mortal_strike"
  )
end

function me.TestSoundPiercingHowl()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPiercingHowl",
    testCategory,
    "piercing_howl"
  )
end

function me.TestSoundRampage()
  mod.testHelper.TestSoundApplied(
    "TestSoundRampage",
    testCategory,
    "rampage"
  )
end

function me.TestSoundDownRampage()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownRampage",
    testCategory,
    "rampage"
  )
end

function me.TestSoundSecondWind()
  mod.testHelper.TestSoundApplied(
    "TestSoundSecondWind",
    testCategory,
    "second_wind"
  )
end

function me.TestSoundDownSecondWind()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSecondWind",
    testCategory,
    "second_wind"
  )
end

function me.TestSoundShieldSlam()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShieldSlam",
    testCategory,
    "shield_slam"
  )
end

function me.TestSoundSweepingStrikes()
  mod.testHelper.TestSoundApplied(
    "TestSoundSweepingStrikes",
    testCategory,
    "sweeping_strikes"
  )
end

function me.TestSoundDownSweepingStrikes()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSweepingStrikes",
    testCategory,
    "sweeping_strikes"
  )
end
