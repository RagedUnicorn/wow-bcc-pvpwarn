--[[
  MIT License

  Copyright (c) 2022 Michael Wiesendanger

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
mod.testSoundSelfAvoidWarriorEn = me

me.tag = "TestSoundSelfAvoidWarriorEn"

local testGroupName = "SoundSelfAvoidWarriorEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARRIOR.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDemoralizingShout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDisarm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHamstring)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidIntimidatingShout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidOverpower)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPummel)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShieldBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSlam)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSunderArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidWhirlwind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidConcussionBlow)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMortalStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPiercingHowl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShieldSlam)
end

function me.TestSoundSelfAvoidDemoralizingShout()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDemoralizingShout",
    testCategory,
    "demoralizing_shout"
  )
end

function me.TestSoundSelfAvoidDisarm()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDisarm",
    testCategory,
    "disarm"
  )
end

function me.TestSoundSelfAvoidHamstring()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHamstring",
    testCategory,
    "hamstring"
  )
end

function me.TestSoundSelfAvoidIntimidatingShout()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidIntimidatingShout",
    testCategory,
    "intimidating_shout"
  )
end

function me.TestSoundSelfAvoidOverpower()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidOverpower",
    testCategory,
    "overpower"
  )
end

function me.TestSoundSelfAvoidPummel()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPummel",
    testCategory,
    "pummel"
  )
end

function me.TestSoundSelfAvoidShieldBash()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShieldBash",
    testCategory,
    "shield_bash"
  )
end

function me.TestSoundSelfAvoidSlam()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSlam",
    testCategory,
    "slam"
  )
end

function me.TestSoundSelfAvoidSunderArmor()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSunderArmor",
    testCategory,
    "sunder_armor"
  )
end

function me.TestSoundSelfAvoidWhirlwind()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidWhirlwind",
    testCategory,
    "whirlwind"
  )
end

function me.TestSoundSelfAvoidConcussionBlow()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidConcussionBlow",
    testCategory,
    "concussion_blow"
  )
end

function me.TestSoundSelfAvoidMortalStrike()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMortalStrike",
    testCategory,
    "mortal_strike"
  )
end

function me.TestSoundSelfAvoidPiercingHowl()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPiercingHowl",
    testCategory,
    "piercing_howl"
  )
end

function me.TestSoundSelfAvoidShieldSlam()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShieldSlam",
    testCategory,
    "shield_slam"
  )
end
