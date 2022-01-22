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
mod.testSoundSelfAvoidPaladinEn = me

me.tag = "TestSoundSelfAvoidPaladinEn"

local testGroupName = "SoundSelfAvoidPaladinEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PALADIN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHammerOfJustice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHammerOfWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidAvengersShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidRepentance)
end

function me.TestSoundSelfAvoidHammerOfJustice()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHammerOfJustice",
    testCategory,
    "hammer_of_justice"
  )
end

function me.TestSoundSelfAvoidHammerOfWrath()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHammerOfWrath",
    testCategory,
    "hammer_of_wrath"
  )
end

function me.TestSoundSelfAvoidAvengersShield()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidAvengersShield",
    testCategory,
    "avengers_shield"
  )
end

function me.TestSoundSelfAvoidRepentance()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidRepentance",
    testCategory,
    "repentance"
  )
end
