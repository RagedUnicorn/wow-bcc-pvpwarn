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
mod.testCombatEventsRacials = me

me.tag = "TestCombatEventsRacials"

local testGroupName = "CombatEventsRacials"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.RACIALS.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGiftOfTheNaaruApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventGiftOfTheNaaruRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneformApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventStoneformRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEscapeArtistSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPerceptionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPerceptionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventShadowmeldSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneTorrentRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneTorrentRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaTapSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodFuryRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodFuryRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodFuryRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodFuryRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodFuryRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBloodFuryRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWarStompSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkingRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkingRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkingRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkingRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkingRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBerserkingRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCannibalizeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWillOfTheForsakenApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventWillOfTheForsakenRemoved)
end

function me.TestCombatEventGiftOfTheNaaruApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventGiftOfTheNaaruApplied",
    testCategory,
    28880
  )
end

function me.TestCombatEventGiftOfTheNaaruRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventGiftOfTheNaaruRemoved",
    testCategory,
    28880
  )
end

function me.TestCombatEventStoneformApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventStoneformApplied",
    testCategory,
    20594
  )
end

function me.TestCombatEventStoneformRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventStoneformRemoved",
    testCategory,
    20594
  )
end

function me.TestCombatEventEscapeArtistSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventEscapeArtistSuccess",
    testCategory,
    20589
  )
end

function me.TestCombatEventPerceptionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPerceptionApplied",
    testCategory,
    20600
  )
end

function me.TestCombatEventPerceptionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPerceptionRemoved",
    testCategory,
    20600
  )
end

function me.TestCombatEventShadowmeldSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventShadowmeldSuccess",
    testCategory,
    20580
  )
end

function me.TestCombatEventArcaneTorrentRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneTorrentRank1Success",
    testCategory,
    28730
  )
end

function me.TestCombatEventArcaneTorrentRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneTorrentRank2Success",
    testCategory,
    25046
  )
end

function me.TestCombatEventManaTapSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventManaTapSuccess",
    testCategory,
    28734
  )
end

function me.TestCombatEventBloodFuryRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBloodFuryRank1Applied",
    testCategory,
    20572
  )
end

function me.TestCombatEventBloodFuryRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBloodFuryRank1Removed",
    testCategory,
    20572
  )
end

function me.TestCombatEventBloodFuryRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBloodFuryRank2Applied",
    testCategory,
    33697
  )
end

function me.TestCombatEventBloodFuryRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBloodFuryRank2Removed",
    testCategory,
    33697
  )
end

function me.TestCombatEventBloodFuryRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBloodFuryRank3Applied",
    testCategory,
    33702
  )
end

function me.TestCombatEventBloodFuryRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBloodFuryRank3Removed",
    testCategory,
    33702
  )
end

function me.TestCombatEventWarStompSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventWarStompSuccess",
    testCategory,
    20549
  )
end

function me.TestCombatEventBerserkingRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBerserkingRank1Applied",
    testCategory,
    20554
  )
end

function me.TestCombatEventBerserkingRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBerserkingRank1Removed",
    testCategory,
    20554
  )
end

function me.TestCombatEventBerserkingRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBerserkingRank2Applied",
    testCategory,
    26297
  )
end

function me.TestCombatEventBerserkingRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBerserkingRank2Removed",
    testCategory,
    26297
  )
end

function me.TestCombatEventBerserkingRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventBerserkingRank3Applied",
    testCategory,
    26296
  )
end

function me.TestCombatEventBerserkingRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventBerserkingRank3Removed",
    testCategory,
    26296
  )
end

function me.TestCombatEventCannibalizeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCannibalizeSuccess",
    testCategory,
    20577
  )
end

function me.TestCombatEventWillOfTheForsakenApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventWillOfTheForsakenApplied",
    testCategory,
    7744
  )
end

function me.TestCombatEventWillOfTheForsakenRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventWillOfTheForsakenRemoved",
    testCategory,
    7744
  )
end
