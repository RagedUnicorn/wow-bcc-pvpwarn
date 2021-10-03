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
mod.testSoundEnemyAvoidMageEn = me

me.tag = "TestSoundEnemyAvoidMageEn"

local testGroupName = "SoundEnemyAvoidMageEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MAGE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidArcaneBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidArcaneExplosion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidArcaneMissiles)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidConeOfCold)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCounterspell)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFireBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFireball)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFrostNova)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFrostbolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidIceLance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPolymorph)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPolymorphPig)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPolymorphTurtle)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidScorch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSpellsteal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidBlastWave)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDragonsBreath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPyroblast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSlow)
end

function me.TestSoundEnemyAvoidArcaneBlast()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidArcaneBlast",
    testCategory,
    "arcane_blast"
  )
end

function me.TestSoundEnemyAvoidArcaneExplosion()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidArcaneExplosion",
    testCategory,
    "arcane_explosion"
  )
end

function me.TestSoundEnemyAvoidArcaneMissiles()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidArcaneMissiles",
    testCategory,
    "arcane_missiles"
  )
end

function me.TestSoundEnemyAvoidConeOfCold()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidConeOfCold",
    testCategory,
    "cone_of_cold"
  )
end

function me.TestSoundEnemyAvoidCounterspell()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCounterspell",
    testCategory,
    "counterspell"
  )
end

function me.TestSoundEnemyAvoidFireBlast()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFireBlast",
    testCategory,
    "fire_blast"
  )
end

function me.TestSoundEnemyAvoidFireball()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFireball",
    testCategory,
    "fireball"
  )
end

function me.TestSoundEnemyAvoidFrostNova()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFrostNova",
    testCategory,
    "frost_nova"
  )
end

function me.TestSoundEnemyAvoidFrostbolt()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFrostbolt",
    testCategory,
    "frostbolt"
  )
end

function me.TestSoundEnemyAvoidIceLance()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidIceLance",
    testCategory,
    "ice_lance"
  )
end

function me.TestSoundEnemyAvoidPolymorph()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPolymorph",
    testCategory,
    "polymorph"
  )
end

function me.TestSoundEnemyAvoidPolymorphPig()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPolymorphPig",
    testCategory,
    "polymorph_pig"
  )
end

function me.TestSoundEnemyAvoidPolymorphTurtle()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPolymorphTurtle",
    testCategory,
    "polymorph_turtle"
  )
end

function me.TestSoundEnemyAvoidScorch()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidScorch",
    testCategory,
    "scorch"
  )
end

function me.TestSoundEnemyAvoidSpellsteal()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSpellsteal",
    testCategory,
    "spellsteal"
  )
end

function me.TestSoundEnemyAvoidBlastWave()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidBlastWave",
    testCategory,
    "blast_wave"
  )
end

function me.TestSoundEnemyAvoidDragonsBreath()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDragonsBreath",
    testCategory,
    "dragons_breath"
  )
end

function me.TestSoundEnemyAvoidPyroblast()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPyroblast",
    testCategory,
    "pyroblast"
  )
end

function me.TestSoundEnemyAvoidSlow()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSlow",
    testCategory,
    "slow"
  )
end
