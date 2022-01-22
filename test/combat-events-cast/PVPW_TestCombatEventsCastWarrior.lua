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
mod.testCombatEventsCastWarrior = me

me.tag = "TestCombatEventsCastWarrior"

local testGroupName = "CombatEventsCastWarrior"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.WARRIOR.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlamRank1Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlamRank2Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlamRank3Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlamRank4Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlamRank5Start)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlamRank6Start)
end

function me.TestCombatEventSlamRank1Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSlamRank1Start",
    testCategory,
    1464
  )
end

function me.TestCombatEventSlamRank2Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSlamRank2Start",
    testCategory,
    8820
  )
end

function me.TestCombatEventSlamRank3Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSlamRank3Start",
    testCategory,
    11604
  )
end

function me.TestCombatEventSlamRank4Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSlamRank4Start",
    testCategory,
    11605
  )
end

function me.TestCombatEventSlamRank5Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSlamRank5Start",
    testCategory,
    25241
  )
end

function me.TestCombatEventSlamRank6Start()
  mod.testHelper.TestCombatEventStart(
    "TestCombatEventSlamRank6Start",
    testCategory,
    25242
  )
end
