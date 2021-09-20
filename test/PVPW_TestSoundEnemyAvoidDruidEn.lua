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
mod.testSoundEnemyAvoidDruidEn = me

me.tag = "TestSoundEnemyAvoidDruidEn"

local testGroupName = "SoundEnemyAvoidDruidEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidEntanglingRoot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidClaw)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCyclone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDemoralizingRoar)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidEntanglingRoots)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFaerieFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFerociousBite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidHibernate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidLacerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMaim)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMangleBear)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMangleCat)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMoonfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPounce)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidRake)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidRavage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidRip)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShred)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidStarfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSwipe)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFaerieFireFeral)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFeralCharge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidInsectSwarm)
end

function me.TestSoundEnemyAvoidBash()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidBash",
    testCategory,
    "bash"
  )
end

function me.TestSoundEnemyAvoidBash()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidBash",
    testCategory,
    "bash"
  )
end

function me.TestSoundEnemyAvoidClaw()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidClaw",
    testCategory,
    "claw"
  )
end

function me.TestSoundEnemyAvoidCyclone()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCyclone",
    testCategory,
    "cyclone"
  )
end

function me.TestSoundEnemyAvoidDemoralizingRoar()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDemoralizingRoar",
    testCategory,
    "demoralizing_roar"
  )
end

function me.TestSoundEnemyAvoidEntanglingRoots()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidEntanglingRoots",
    testCategory,
    "entangling_roots"
  )
end

function me.TestSoundEnemyAvoidFaerieFire()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFaerieFire",
    testCategory,
    "faerie_fire"
  )
end

function me.TestSoundEnemyAvoidFerociousBite()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFerociousBite",
    testCategory,
    "ferocious_bite"
  )
end

function me.TestSoundEnemyAvoidHibernate()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidHibernate",
    testCategory,
    "hibernate"
  )
end

function me.TestSoundEnemyAvoidLacerate()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidLacerate",
    testCategory,
    "lacerate"
  )
end

function me.TestSoundEnemyAvoidMaim()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMaim",
    testCategory,
    "maim"
  )
end

function me.TestSoundEnemyAvoidMangleBear()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMangleBear",
    testCategory,
    "mangle_bear"
  )
end

function me.TestSoundEnemyAvoidMangleCat()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMangleCat",
    testCategory,
    "mangle_cat"
  )
end

function me.TestSoundEnemyAvoidMoonfire()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMoonfire",
    testCategory,
    "moonfire"
  )
end

function me.TestSoundEnemyAvoidPounce()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPounce",
    testCategory,
    "pounce"
  )
end

function me.TestSoundEnemyAvoidRake()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidRake",
    testCategory,
    "rake"
  )
end

function me.TestSoundEnemyAvoidRavage()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidRavage",
    testCategory,
    "ravage"
  )
end

function me.TestSoundEnemyAvoidRip()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidRip",
    testCategory,
    "rip"
  )
end

function me.TestSoundEnemyAvoidShred()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShred",
    testCategory,
    "shred"
  )
end

function me.TestSoundEnemyAvoidStarfire()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidStarfire",
    testCategory,
    "starfire"
  )
end

function me.TestSoundEnemyAvoidSwipe()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSwipe",
    testCategory,
    "swipe"
  )
end

function me.TestSoundEnemyAvoidWrath()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidWrath",
    testCategory,
    "wrath"
  )
end

function me.TestSoundEnemyAvoidFaerieFireFeral()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFaerieFireFeral",
    testCategory,
    "faerie_fire_feral"
  )
end

function me.TestSoundEnemyAvoidFeralCharge()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFeralCharge",
    testCategory,
    "feral_charge"
  )
end

function me.TestSoundEnemyAvoidInsectSwarm()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidInsectSwarm",
    testCategory,
    "insect_swarm"
  )
end
