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
mod.testSoundRacialsEn = me

me.tag = "TestSoundRacialsEn"

local testGroupName = "SoundRacialsEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.RACIALS.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGiftOfTheNaaru)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownGiftOfTheNaaru)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStoneform)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownStoneform)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEscapeArtist)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPerception)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPerception)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowmeld)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcaneTorrent)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundManaTap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBloodFury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBloodFury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWarStomp)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBerserking)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBerserking)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCannibalize)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWillOfTheForsaken)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownWillOfTheForsaken)
end

function me.TestSoundGiftOfTheNaaru()
  mod.testHelper.TestSoundApplied(
    "TestSoundGiftOfTheNaaru",
    testCategory,
    "gift_of_the_naaru"
  )
end

function me.TestSoundDownGiftOfTheNaaru()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownGiftOfTheNaaru",
    testCategory,
    "gift_of_the_naaru"
  )
end

function me.TestSoundStoneform()
  mod.testHelper.TestSoundApplied(
    "TestSoundStoneform",
    testCategory,
    "stoneform"
  )
end

function me.TestSoundDownStoneform()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownStoneform",
    testCategory,
    "stoneform"
  )
end

function me.TestSoundEscapeArtist()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEscapeArtist",
    testCategory,
    "escape_artist"
  )
end

function me.TestSoundPerception()
  mod.testHelper.TestSoundApplied(
    "TestSoundPerception",
    testCategory,
    "perception"
  )
end

function me.TestSoundDownPerception()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPerception",
    testCategory,
    "perception"
  )
end

function me.TestSoundShadowmeld()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowmeld",
    testCategory,
    "shadowmeld"
  )
end

function me.TestSoundArcaneTorrent()
  mod.testHelper.TestSoundSuccess(
    "TestSoundArcaneTorrent",
    testCategory,
    "arcane_torrent"
  )
end

function me.TestSoundManaTap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundManaTap",
    testCategory,
    "mana_tap"
  )
end

function me.TestSoundBloodFury()
  mod.testHelper.TestSoundApplied(
    "TestSoundBloodFury",
    testCategory,
    "blood_fury"
  )
end

function me.TestSoundDownBloodFury()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBloodFury",
    testCategory,
    "blood_fury"
  )
end

function me.TestSoundWarStomp()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWarStomp",
    testCategory,
    "war_stomp"
  )
end

function me.TestSoundBerserking()
  mod.testHelper.TestSoundApplied(
    "TestSoundBerserking",
    testCategory,
    "berserking"
  )
end

function me.TestSoundDownBerserking()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBerserking",
    testCategory,
    "berserking"
  )
end

function me.TestSoundCannibalize()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCannibalize",
    testCategory,
    "cannibalize"
  )
end

function me.TestSoundWillOfTheForsaken()
  mod.testHelper.TestSoundApplied(
    "TestSoundWillOfTheForsaken",
    testCategory,
    "will_of_the_forsaken"
  )
end

function me.TestSoundDownWillOfTheForsaken()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownWillOfTheForsaken",
    testCategory,
    "will_of_the_forsaken"
  )
end
