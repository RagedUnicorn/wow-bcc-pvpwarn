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
mod.testSoundCastDruidEn = me

me.tag = "TestSoundCastDruidEn"

local testGroupName = "SoundCastDruidEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastCyclone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastEntanglingRoots)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastHealingTouch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastHibernate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastRebirth)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastRegrowth)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastStarfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastWrath)
end

function me.TestSoundCastCyclone()
  mod.testHelper.TestSoundStart(
    "TestSoundCastCyclone",
    testCategory,
    "cyclone"
  )
end

function me.TestSoundCastEntanglingRoots()
  mod.testHelper.TestSoundStart(
    "TestSoundCastEntanglingRoots",
    testCategory,
    "entangling_roots"
  )
end

function me.TestSoundCastHealingTouch()
  mod.testHelper.TestSoundStart(
    "TestSoundCastHealingTouch",
    testCategory,
    "healing_touch"
  )
end

function me.TestSoundCastHibernate()
  mod.testHelper.TestSoundStart(
    "TestSoundCastHibernate",
    testCategory,
    "hibernate"
  )
end

function me.TestSoundCastRebirth()
  mod.testHelper.TestSoundStart(
    "TestSoundCastRebirth",
    testCategory,
    "rebirth"
  )
end

function me.TestSoundCastRegrowth()
  mod.testHelper.TestSoundStart(
    "TestSoundCastRegrowth",
    testCategory,
    "regrowth"
  )
end

function me.TestSoundCastStarfire()
  mod.testHelper.TestSoundStart(
    "TestSoundCastStarfire",
    testCategory,
    "starfire"
  )
end

function me.TestSoundCastWrath()
  mod.testHelper.TestSoundStart(
    "TestSoundCastWrath",
    testCategory,
    "wrath"
  )
end
