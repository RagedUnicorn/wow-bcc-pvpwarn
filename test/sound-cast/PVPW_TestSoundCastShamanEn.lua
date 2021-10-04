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
mod.testSoundCastShamanEn = me

me.tag = "TestSoundCastShamanEn"

local testGroupName = "SoundCastShamanEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.SHAMAN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastAncestralSpirit)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastChainHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastChainLightning)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastHealingWave)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastLesserHealingWave)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastLightningBolt)
end

function me.TestSoundCastAncestralSpirit()
  mod.testHelper.TestSoundStart(
    "TestSoundCastAncestralSpirit",
    testCategory,
    "ancestral_spirit"
  )
end

function me.TestSoundCastChainHeal()
  mod.testHelper.TestSoundStart(
    "TestSoundCastChainHeal",
    testCategory,
    "chain_heal"
  )
end

function me.TestSoundCastChainLightning()
  mod.testHelper.TestSoundStart(
    "TestSoundCastChainLightning",
    testCategory,
    "chain_lightning"
  )
end

function me.TestSoundCastHealingWave()
  mod.testHelper.TestSoundStart(
    "TestSoundCastHealingWave",
    testCategory,
    "healing_wave"
  )
end

function me.TestSoundCastLesserHealingWave()
  mod.testHelper.TestSoundStart(
    "TestSoundCastLesserHealingWave",
    testCategory,
    "lesser_healing_wave"
  )
end

function me.TestSoundCastLightningBolt()
  mod.testHelper.TestSoundStart(
    "TestSoundCastLightningBolt",
    testCategory,
    "lightning_bolt"
  )
end
