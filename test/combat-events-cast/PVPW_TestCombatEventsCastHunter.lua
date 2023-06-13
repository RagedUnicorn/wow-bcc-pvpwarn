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
mod.testCombatEventsCastHunter = me

me.tag = "TestCombatEventsCastHunter"

local testGroupName = "CombatEventsCastHunter"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScareBeastRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScareBeastRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScareBeastRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank6Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAimedShotRank7Start)
end

function me.TestCombatEventScareBeastRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScareBeastRank1Start",
    testCategory,
    1513
  )
end

function me.TestCombatEventScareBeastRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScareBeastRank2Start",
    testCategory,
    14326
  )
end

function me.TestCombatEventScareBeastRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventScareBeastRank3Start",
    testCategory,
    14327
  )
end

function me.TestCombatEventAimedShotRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAimedShotRank1Start",
    testCategory,
    19434
  )
end

function me.TestCombatEventAimedShotRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAimedShotRank2Start",
    testCategory,
    20900
  )
end

function me.TestCombatEventAimedShotRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAimedShotRank3Start",
    testCategory,
    20901
  )
end

function me.TestCombatEventAimedShotRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAimedShotRank4Start",
    testCategory,
    20902
  )
end

function me.TestCombatEventAimedShotRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAimedShotRank5Start",
    testCategory,
    20903
  )
end

function me.TestCombatEventAimedShotRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAimedShotRank6Start",
    testCategory,
    20904
  )
end

function me.TestCombatEventAimedShotRank7Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventAimedShotRank7Start",
    testCategory,
    27065
  )
end
