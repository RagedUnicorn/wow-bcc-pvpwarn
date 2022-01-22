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
mod.testSoundSelfAvoidPriestEn = me

me.tag = "TestSoundSelfAvoidPriestEn"

local testGroupName = "SoundSelfAvoidPriestEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidChastise)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidDevouringPlague)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHexOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHolyFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidManaBurn)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMindBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMindControl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidPsychicScream)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShadowWordDeath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidShadowWordPain)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSmite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidBlackout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMindFlay)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSilence)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidVampiricTouch)
end

function me.TestSoundSelfAvoidChastise()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidChastise",
    testCategory,
    "chastise"
  )
end

function me.TestSoundSelfAvoidDevouringPlague()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidDevouringPlague",
    testCategory,
    "devouring_plague"
  )
end

function me.TestSoundSelfAvoidHexOfWeakness()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHexOfWeakness",
    testCategory,
    "hex_of_weakness"
  )
end

function me.TestSoundSelfAvoidHolyFire()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHolyFire",
    testCategory,
    "holy_fire"
  )
end

function me.TestSoundSelfAvoidManaBurn()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidManaBurn",
    testCategory,
    "mana_burn"
  )
end

function me.TestSoundSelfAvoidMindBlast()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMindBlast",
    testCategory,
    "mind_blast"
  )
end

function me.TestSoundSelfAvoidMindControl()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMindControl",
    testCategory,
    "mind_control"
  )
end

function me.TestSoundSelfAvoidPsychicScream()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidPsychicScream",
    testCategory,
    "psychic_scream"
  )
end

function me.TestSoundSelfAvoidShadowWordDeath()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShadowWordDeath",
    testCategory,
    "shadow_word_death"
  )
end

function me.TestSoundSelfAvoidShadowWordPain()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidShadowWordPain",
    testCategory,
    "shadow_word_pain"
  )
end

function me.TestSoundSelfAvoidSmite()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSmite",
    testCategory,
    "smite"
  )
end

function me.TestSoundSelfAvoidBlackout()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidBlackout",
    testCategory,
    "blackout"
  )
end

function me.TestSoundSelfAvoidMindFlay()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMindFlay",
    testCategory,
    "mind_flay"
  )
end

function me.TestSoundSelfAvoidSilence()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSilence",
    testCategory,
    "silence"
  )
end

function me.TestSoundSelfAvoidVampiricTouch()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidVampiricTouch",
    testCategory,
    "vampiric_touch"
  )
end
