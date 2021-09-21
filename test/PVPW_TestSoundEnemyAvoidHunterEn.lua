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
mod.testSoundEnemyAvoidHunterEn = me

me.tag = "TestSoundEnemyAvoidHunterEn"

local testGroupName = "SoundEnemyAvoidHunterEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidArcaneShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidConcussiveShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidExplosiveTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFlare)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFreezingTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidFrostTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidHuntersMark)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidImmolationTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMongooseBite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidMultiShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidRaptorStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidScareBeast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidScorpidSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSerpentSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidViperSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidWingClip)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidAimedShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidCounterattack)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidScatterShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidSilencingShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnemyAvoidWyvernSting)
end

function me.TestSoundEnemyAvoidArcaneShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidArcaneShot",
    testCategory,
    "arcane_shot"
  )
end

function me.TestSoundEnemyAvoidConcussiveShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidConcussiveShot",
    testCategory,
    "concussive_shot"
  )
end

function me.TestSoundEnemyAvoidExplosiveTrap()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidExplosiveTrap",
    testCategory,
    "explosive_trap"
  )
end

function me.TestSoundEnemyAvoidFlare()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFlare",
    testCategory,
    "flare"
  )
end

function me.TestSoundEnemyAvoidFreezingTrap()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFreezingTrap",
    testCategory,
    "freezing_trap"
  )
end

function me.TestSoundEnemyAvoidFrostTrap()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidFrostTrap",
    testCategory,
    "frost_trap"
  )
end

function me.TestSoundEnemyAvoidHuntersMark()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidHuntersMark",
    testCategory,
    "hunters_mark"
  )
end

function me.TestSoundEnemyAvoidImmolationTrap()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidImmolationTrap",
    testCategory,
    "immolation_trap"
  )
end

function me.TestSoundEnemyAvoidMongooseBite()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMongooseBite",
    testCategory,
    "mongoose_bite"
  )
end

function me.TestSoundEnemyAvoidMultiShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidMultiShot",
    testCategory,
    "multi_shot"
  )
end

function me.TestSoundEnemyAvoidRaptorStrike()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidRaptorStrike",
    testCategory,
    "raptor_strike"
  )
end

function me.TestSoundEnemyAvoidScareBeast()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidScareBeast",
    testCategory,
    "scare_beast"
  )
end

function me.TestSoundEnemyAvoidScorpidSting()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidScorpidSting",
    testCategory,
    "scorpid_sting"
  )
end

function me.TestSoundEnemyAvoidSerpentSting()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSerpentSting",
    testCategory,
    "serpent_sting"
  )
end

function me.TestSoundEnemyAvoidViperSting()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidViperSting",
    testCategory,
    "viper_sting"
  )
end

function me.TestSoundEnemyAvoidWingClip()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidWingClip",
    testCategory,
    "wing_clip"
  )
end

function me.TestSoundEnemyAvoidAimedShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidAimedShot",
    testCategory,
    "aimed_shot"
  )
end

function me.TestSoundEnemyAvoidCounterattack()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidCounterattack",
    testCategory,
    "counterattack"
  )
end

function me.TestSoundEnemyAvoidScatterShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidScatterShot",
    testCategory,
    "scatter_shot"
  )
end

function me.TestSoundEnemyAvoidSilencingShot()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidSilencingShot",
    testCategory,
    "silencing_shot"
  )
end

function me.TestSoundEnemyAvoidWyvernSting()
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoidWyvernSting",
    testCategory,
    "wyvern_sting"
  )
end
