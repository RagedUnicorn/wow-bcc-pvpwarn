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
mod.testSoundCastPriestEn = me

me.tag = "TestSoundCastPriestEn"

local testGroupName = "SoundCastPriestEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastBindingHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastFlashHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastGreaterHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastHolyFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastLesserHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastManaBurn)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastMassDispel)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastMindBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastMindControl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastPrayerOfHealing)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCastResurrection)
end

function me.TestSoundCastBindingHeal()
  mod.testHelper.TestSoundStart(
    "TestSoundCastBindingHeal",
    testCategory,
    "binding_heal"
  )
end

function me.TestSoundCastFlashHeal()
  mod.testHelper.TestSoundStart(
    "TestSoundCastFlashHeal",
    testCategory,
    "flash_heal"
  )
end

function me.TestSoundCastGreaterHeal()
  mod.testHelper.TestSoundStart(
    "TestSoundCastGreaterHeal",
    testCategory,
    "greater_heal"
  )
end

function me.TestSoundCastHeal()
  mod.testHelper.TestSoundStart(
    "TestSoundCastHeal",
    testCategory,
    "heal"
  )
end

function me.TestSoundCastHolyFire()
  mod.testHelper.TestSoundStart(
    "TestSoundCastHolyFire",
    testCategory,
    "holy_fire"
  )
end

function me.TestSoundCastLesserHeal()
  mod.testHelper.TestSoundStart(
    "TestSoundCastLesserHeal",
    testCategory,
    "lesser_heal"
  )
end

function me.TestSoundCastManaBurn()
  mod.testHelper.TestSoundStart(
    "TestSoundCastManaBurn",
    testCategory,
    "mana_burn"
  )
end

function me.TestSoundCastMassDispel()
  mod.testHelper.TestSoundStart(
    "TestSoundCastMassDispel",
    testCategory,
    "mass_dispel"
  )
end

function me.TestSoundCastMindBlast()
  mod.testHelper.TestSoundStart(
    "TestSoundCastMindBlast",
    testCategory,
    "mind_blast"
  )
end

function me.TestSoundCastMindControl()
  mod.testHelper.TestSoundStart(
    "TestSoundCastMindControl",
    testCategory,
    "mind_control"
  )
end

function me.TestSoundCastPrayerOfHealing()
  mod.testHelper.TestSoundStart(
    "TestSoundCastPrayerOfHealing",
    testCategory,
    "prayer_of_healing"
  )
end

function me.TestSoundCastResurrection()
  mod.testHelper.TestSoundStart(
    "TestSoundCastResurrection",
    testCategory,
    "resurrection"
  )
end
