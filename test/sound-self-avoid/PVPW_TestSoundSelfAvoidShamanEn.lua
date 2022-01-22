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
mod.testSoundSelfAvoidShamanEn = me

me.tag = "TestSoundSelfAvoidShamanEn"

local testGroupName = "SoundSelfAvoidShamanEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.SHAMAN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidChainLightning)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidEarthShock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFlameShock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFrostShock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidLightningBolt)
end

function me.TestSoundSelfAvoidChainLightning()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidChainLightning",
    testCategory,
    "chain_lightning"
  )
end

function me.TestSoundSelfAvoidEarthShock()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidEarthShock",
    testCategory,
    "earth_shock"
  )
end

function me.TestSoundSelfAvoidFlameShock()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFlameShock",
    testCategory,
    "flame_shock"
  )
end

function me.TestSoundSelfAvoidFrostShock()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFrostShock",
    testCategory,
    "frost_shock"
  )
end

function me.TestSoundSelfAvoidLightningBolt()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidLightningBolt",
    testCategory,
    "lightning_bolt"
  )
end
