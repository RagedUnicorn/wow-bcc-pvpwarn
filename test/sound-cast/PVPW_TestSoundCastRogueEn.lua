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
mod.testSoundCastRogueEn = me

me.tag = "TestSoundCastRogueEn"

local testGroupName = "SoundCastRogueEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastAnestheticPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastCripplingPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastDeadlyPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastInstantPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastMindNumbingPoisonApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastWoundPoisonApplied)
end

function me.TestSoundCastAnestheticPoisonApplied()
  mod.testHelper.TestSoundStart(
    "TestSoundCastAnestheticPoisonApplied",
    testCategory,
    "anesthetic_poison"
  )
end

function me.TestSoundCastCripplingPoisonApplied()
  mod.testHelper.TestSoundStart(
    "TestSoundCastCripplingPoisonApplied",
    testCategory,
    "crippling_poison"
  )
end

function me.TestSoundCastDeadlyPoisonApplied()
  mod.testHelper.TestSoundStart(
    "TestSoundCastDeadlyPoisonApplied",
    testCategory,
    "deadly_poison"
  )
end

function me.TestSoundCastInstantPoisonApplied()
  mod.testHelper.TestSoundStart(
    "TestSoundCastInstantPoisonApplied",
    testCategory,
    "instant_poison"
  )
end

function me.TestSoundCastMindNumbingPoisonApplied()
  mod.testHelper.TestSoundStart(
    "TestSoundCastMindNumbingPoisonApplied",
    testCategory,
    "mind_numbing_poison"
  )
end

function me.TestSoundCastWoundPoisonApplied()
  mod.testHelper.TestSoundStart(
    "TestSoundCastWoundPoisonApplied",
    testCategory,
    "wound_poison"
  )
end
