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
mod.testSoundSelfAvoidMageEn = me

me.tag = "TestSoundSelfAvoidMageEn"

local testGroupName = "SoundSelfAvoidMageEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MAGE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidArcaneBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidArcaneExplosion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidArcaneMissiles)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidConeOfCold)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCounterspell)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFireBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFireball)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFrostNova)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFrostbolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidIceLance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPolymorph)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPolymorphPig)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPolymorphTurtle)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidScorch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSpellsteal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidBlastWave)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDragonsBreath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPyroblast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSlow)
end

function me.TestSoundSelfAvoidArcaneBlast()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidArcaneBlast",
    testCategory,
    "arcane_blast"
  )
end

function me.TestSoundSelfAvoidArcaneExplosion()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidArcaneExplosion",
    testCategory,
    "arcane_explosion"
  )
end

function me.TestSoundSelfAvoidArcaneMissiles()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidArcaneMissiles",
    testCategory,
    "arcane_missiles"
  )
end

function me.TestSoundSelfAvoidConeOfCold()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidConeOfCold",
    testCategory,
    "cone_of_cold"
  )
end

function me.TestSoundSelfAvoidCounterspell()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCounterspell",
    testCategory,
    "counterspell"
  )
end

function me.TestSoundSelfAvoidFireBlast()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFireBlast",
    testCategory,
    "fire_blast"
  )
end

function me.TestSoundSelfAvoidFireball()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFireball",
    testCategory,
    "fireball"
  )
end

function me.TestSoundSelfAvoidFrostNova()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFrostNova",
    testCategory,
    "frost_nova"
  )
end

function me.TestSoundSelfAvoidFrostbolt()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFrostbolt",
    testCategory,
    "frostbolt"
  )
end

function me.TestSoundSelfAvoidIceLance()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidIceLance",
    testCategory,
    "ice_lance"
  )
end

function me.TestSoundSelfAvoidPolymorph()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPolymorph",
    testCategory,
    "polymorph"
  )
end

function me.TestSoundSelfAvoidPolymorphPig()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPolymorphPig",
    testCategory,
    "polymorph_pig"
  )
end

function me.TestSoundSelfAvoidPolymorphTurtle()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPolymorphTurtle",
    testCategory,
    "polymorph_turtle"
  )
end

function me.TestSoundSelfAvoidScorch()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidScorch",
    testCategory,
    "scorch"
  )
end

function me.TestSoundSelfAvoidSpellsteal()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSpellsteal",
    testCategory,
    "spellsteal"
  )
end

function me.TestSoundSelfAvoidBlastWave()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidBlastWave",
    testCategory,
    "blast_wave"
  )
end

function me.TestSoundSelfAvoidDragonsBreath()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDragonsBreath",
    testCategory,
    "dragons_breath"
  )
end

function me.TestSoundSelfAvoidPyroblast()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPyroblast",
    testCategory,
    "pyroblast"
  )
end

function me.TestSoundSelfAvoidSlow()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSlow",
    testCategory,
    "slow"
  )
end
