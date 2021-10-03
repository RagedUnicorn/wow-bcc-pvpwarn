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
mod.testSoundEnemyAvoidPriestEn = me

me.tag = "TestSoundEnemyAvoidPriestEn"

local testGroupName = "SoundEnemyAvoidPriestEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidChastise)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidDevouringPlague)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidHexOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidHolyFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidManaBurn)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMindBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMindControl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidPsychicScream)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShadowWordDeath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidShadowWordPain)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSmite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidBlackout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMindFlay)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSilence)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidVampiricTouch)
end

function me.TestSoundEnemyAvoidChastise()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidChastise",
    testCategory,
    "chastise"
  )
end

function me.TestSoundEnemyAvoidDevouringPlague()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidDevouringPlague",
    testCategory,
    "devouring_plague"
  )
end

function me.TestSoundEnemyAvoidHexOfWeakness()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidHexOfWeakness",
    testCategory,
    "hex_of_weakness"
  )
end

function me.TestSoundEnemyAvoidHolyFire()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidHolyFire",
    testCategory,
    "holy_fire"
  )
end

function me.TestSoundEnemyAvoidManaBurn()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidManaBurn",
    testCategory,
    "mana_burn"
  )
end

function me.TestSoundEnemyAvoidMindBlast()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMindBlast",
    testCategory,
    "mind_blast"
  )
end

function me.TestSoundEnemyAvoidMindControl()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMindControl",
    testCategory,
    "mind_control"
  )
end

function me.TestSoundEnemyAvoidPsychicScream()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidPsychicScream",
    testCategory,
    "psychic_scream"
  )
end

function me.TestSoundEnemyAvoidShadowWordDeath()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShadowWordDeath",
    testCategory,
    "shadow_word_death"
  )
end

function me.TestSoundEnemyAvoidShadowWordPain()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidShadowWordPain",
    testCategory,
    "shadow_word_pain"
  )
end

function me.TestSoundEnemyAvoidSmite()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSmite",
    testCategory,
    "smite"
  )
end

function me.TestSoundEnemyAvoidBlackout()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidBlackout",
    testCategory,
    "blackout"
  )
end

function me.TestSoundEnemyAvoidMindFlay()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMindFlay",
    testCategory,
    "mind_flay"
  )
end

function me.TestSoundEnemyAvoidSilence()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSilence",
    testCategory,
    "silence"
  )
end

function me.TestSoundEnemyAvoidVampiricTouch()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidVampiricTouch",
    testCategory,
    "vampiric_touch"
  )
end
