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
mod.testSoundCastMageEn = me

me.tag = "TestSoundCastMageEn"

local testGroupName = "SoundCastMageEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MAGE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastArcaneBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastConjureFood)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastConjureManaAgate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastConjureManaCitrine)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastConjureManaEmerald)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastConjureManaJade)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastConjureManaRuby)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastConjureWater)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastFireball)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastFlamestrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastFrostbolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastPolymorph)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastPolymorphPig)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastPolymorphTurtle)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastScorch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastPyroblast)
end

function me.TestSoundCastArcaneBlast()
  mod.testHelper.TestSoundStart(
    "TestSoundCastArcaneBlast",
    testCategory,
    "arcane_blast"
  )
end

function me.TestSoundCastConjureFood()
  mod.testHelper.TestSoundStart(
    "TestSoundCastConjureFood",
    testCategory,
    "conjure_food"
  )
end

function me.TestSoundCastConjureManaAgate()
  mod.testHelper.TestSoundStart(
    "TestSoundCastConjureManaAgate",
    testCategory,
    "conjure_mana_agate"
  )
end

function me.TestSoundCastConjureManaCitrine()
  mod.testHelper.TestSoundStart(
    "TestSoundCastConjureManaCitrine",
    testCategory,
    "conjure_mana_citrine"
  )
end

function me.TestSoundCastConjureManaEmerald()
  mod.testHelper.TestSoundStart(
    "TestSoundCastConjureManaEmerald",
    testCategory,
    "conjure_mana_emerald"
  )
end

function me.TestSoundCastConjureManaJade()
  mod.testHelper.TestSoundStart(
    "TestSoundCastConjureManaJade",
    testCategory,
    "conjure_mana_jade"
  )
end

function me.TestSoundCastConjureManaRuby()
  mod.testHelper.TestSoundStart(
    "TestSoundCastConjureManaRuby",
    testCategory,
    "conjure_mana_ruby"
  )
end

function me.TestSoundCastConjureWater()
  mod.testHelper.TestSoundStart(
    "TestSoundCastConjureWater",
    testCategory,
    "conjure_water"
  )
end

function me.TestSoundCastFireball()
  mod.testHelper.TestSoundStart(
    "TestSoundCastFireball",
    testCategory,
    "fireball"
  )
end

function me.TestSoundCastFlamestrike()
  mod.testHelper.TestSoundStart(
    "TestSoundCastFlamestrike",
    testCategory,
    "flamestrike"
  )
end

function me.TestSoundCastFrostbolt()
  mod.testHelper.TestSoundStart(
    "TestSoundCastFrostbolt",
    testCategory,
    "frostbolt"
  )
end

function me.TestSoundCastPolymorph()
  mod.testHelper.TestSoundStart(
    "TestSoundCastPolymorph",
    testCategory,
    "polymorph"
  )
end

function me.TestSoundCastPolymorphPig()
  mod.testHelper.TestSoundStart(
    "TestSoundCastPolymorphPig",
    testCategory,
    "polymorph_pig"
  )
end

function me.TestSoundCastPolymorphTurtle()
  mod.testHelper.TestSoundStart(
    "TestSoundCastPolymorphTurtle",
    testCategory,
    "polymorph_turtle"
  )
end

function me.TestSoundCastScorch()
  mod.testHelper.TestSoundStart(
    "TestSoundCastScorch",
    testCategory,
    "scorch"
  )
end

function me.TestSoundCastPyroblast()
  mod.testHelper.TestSoundStart(
    "TestSoundCastPyroblast",
    testCategory,
    "pyroblast"
  )
end
