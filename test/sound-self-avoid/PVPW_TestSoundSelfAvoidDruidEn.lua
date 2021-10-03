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
mod.testSoundSelfAvoidDruidEn = me

me.tag = "TestSoundSelfAvoidDruidEn"

local testGroupName = "SoundSelfAvoidDruidEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidEntanglingRoot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidClaw)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCyclone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDemoralizingRoar)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidEntanglingRoots)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFaerieFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFerociousBite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHibernate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidLacerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMaim)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMangleBear)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMangleCat)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMoonfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPounce)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidRake)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidRavage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidRip)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShred)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidStarfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSwipe)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFaerieFireFeral)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFeralCharge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidInsectSwarm)
end

function me.TestSoundSelfAvoidBash()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidBash",
    testCategory,
    "bash"
  )
end

function me.TestSoundSelfAvoidBash()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidBash",
    testCategory,
    "bash"
  )
end

function me.TestSoundSelfAvoidClaw()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidClaw",
    testCategory,
    "claw"
  )
end

function me.TestSoundSelfAvoidCyclone()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCyclone",
    testCategory,
    "cyclone"
  )
end

function me.TestSoundSelfAvoidDemoralizingRoar()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDemoralizingRoar",
    testCategory,
    "demoralizing_roar"
  )
end

function me.TestSoundSelfAvoidEntanglingRoots()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidEntanglingRoots",
    testCategory,
    "entangling_roots"
  )
end

function me.TestSoundSelfAvoidFaerieFire()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFaerieFire",
    testCategory,
    "faerie_fire"
  )
end

function me.TestSoundSelfAvoidFerociousBite()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFerociousBite",
    testCategory,
    "ferocious_bite"
  )
end

function me.TestSoundSelfAvoidHibernate()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHibernate",
    testCategory,
    "hibernate"
  )
end

function me.TestSoundSelfAvoidLacerate()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidLacerate",
    testCategory,
    "lacerate"
  )
end

function me.TestSoundSelfAvoidMaim()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMaim",
    testCategory,
    "maim"
  )
end

function me.TestSoundSelfAvoidMangleBear()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMangleBear",
    testCategory,
    "mangle_bear"
  )
end

function me.TestSoundSelfAvoidMangleCat()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMangleCat",
    testCategory,
    "mangle_cat"
  )
end

function me.TestSoundSelfAvoidMoonfire()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMoonfire",
    testCategory,
    "moonfire"
  )
end

function me.TestSoundSelfAvoidPounce()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPounce",
    testCategory,
    "pounce"
  )
end

function me.TestSoundSelfAvoidRake()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidRake",
    testCategory,
    "rake"
  )
end

function me.TestSoundSelfAvoidRavage()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidRavage",
    testCategory,
    "ravage"
  )
end

function me.TestSoundSelfAvoidRip()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidRip",
    testCategory,
    "rip"
  )
end

function me.TestSoundSelfAvoidShred()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShred",
    testCategory,
    "shred"
  )
end

function me.TestSoundSelfAvoidStarfire()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidStarfire",
    testCategory,
    "starfire"
  )
end

function me.TestSoundSelfAvoidSwipe()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSwipe",
    testCategory,
    "swipe"
  )
end

function me.TestSoundSelfAvoidWrath()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidWrath",
    testCategory,
    "wrath"
  )
end

function me.TestSoundSelfAvoidFaerieFireFeral()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFaerieFireFeral",
    testCategory,
    "faerie_fire_feral"
  )
end

function me.TestSoundSelfAvoidFeralCharge()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFeralCharge",
    testCategory,
    "feral_charge"
  )
end

function me.TestSoundSelfAvoidInsectSwarm()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidInsectSwarm",
    testCategory,
    "insect_swarm"
  )
end
