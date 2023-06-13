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
mod.testSoundSelfAvoidHunterEn = me

me.tag = "TestSoundSelfAvoidHunterEn"

local testGroupName = "SoundSelfAvoidHunterEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidArcaneShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidConcussiveShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidExplosiveTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFlare)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFreezingTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidFrostTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidHuntersMark)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidImmolationTrap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMongooseBite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidMultiShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidRaptorStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidScareBeast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidScorpidSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSerpentSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidViperSting)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidWingClip)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidAimedShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidCounterattack)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidScatterShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidSilencingShot)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSelfAvoidWyvernSting)
end

function me.TestSoundSelfAvoidArcaneShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidArcaneShot",
    testCategory,
    "arcane_shot"
  )
end

function me.TestSoundSelfAvoidConcussiveShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidConcussiveShot",
    testCategory,
    "concussive_shot"
  )
end

function me.TestSoundSelfAvoidExplosiveTrap()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidExplosiveTrap",
    testCategory,
    "explosive_trap"
  )
end

function me.TestSoundSelfAvoidFlare()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFlare",
    testCategory,
    "flare"
  )
end

function me.TestSoundSelfAvoidFreezingTrap()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFreezingTrap",
    testCategory,
    "freezing_trap"
  )
end

function me.TestSoundSelfAvoidFrostTrap()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidFrostTrap",
    testCategory,
    "frost_trap"
  )
end

function me.TestSoundSelfAvoidHuntersMark()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidHuntersMark",
    testCategory,
    "hunters_mark"
  )
end

function me.TestSoundSelfAvoidImmolationTrap()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidImmolationTrap",
    testCategory,
    "immolation_trap"
  )
end

function me.TestSoundSelfAvoidMongooseBite()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMongooseBite",
    testCategory,
    "mongoose_bite"
  )
end

function me.TestSoundSelfAvoidMultiShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidMultiShot",
    testCategory,
    "multi_shot"
  )
end

function me.TestSoundSelfAvoidRaptorStrike()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidRaptorStrike",
    testCategory,
    "raptor_strike"
  )
end

function me.TestSoundSelfAvoidScareBeast()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidScareBeast",
    testCategory,
    "scare_beast"
  )
end

function me.TestSoundSelfAvoidScorpidSting()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidScorpidSting",
    testCategory,
    "scorpid_sting"
  )
end

function me.TestSoundSelfAvoidSerpentSting()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSerpentSting",
    testCategory,
    "serpent_sting"
  )
end

function me.TestSoundSelfAvoidViperSting()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidViperSting",
    testCategory,
    "viper_sting"
  )
end

function me.TestSoundSelfAvoidWingClip()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidWingClip",
    testCategory,
    "wing_clip"
  )
end

function me.TestSoundSelfAvoidAimedShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidAimedShot",
    testCategory,
    "aimed_shot"
  )
end

function me.TestSoundSelfAvoidCounterattack()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidCounterattack",
    testCategory,
    "counterattack"
  )
end

function me.TestSoundSelfAvoidScatterShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidScatterShot",
    testCategory,
    "scatter_shot"
  )
end

function me.TestSoundSelfAvoidSilencingShot()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidSilencingShot",
    testCategory,
    "silencing_shot"
  )
end

function me.TestSoundSelfAvoidWyvernSting()
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoidWyvernSting",
    testCategory,
    "wyvern_sting"
  )
end
