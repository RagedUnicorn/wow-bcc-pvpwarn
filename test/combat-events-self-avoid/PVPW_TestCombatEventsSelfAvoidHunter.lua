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
mod.testCombatEventsSelfAvoidHunter = me

me.tag = "TestCombatEventsSelfAvoidHunter"

local testGroupName = "CombatEventsSelfAvoidHunter"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneShotRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConcussiveShotMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidExplosiveTrapRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidExplosiveTrapRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidExplosiveTrapRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidExplosiveTrapRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlareMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFreezingTrapRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFreezingTrapRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFreezingTrapRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostTrapMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHuntersMarkRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHuntersMarkRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHuntersMarkRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidHuntersMarkRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidImmolationTrapRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidImmolationTrapRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidImmolationTrapRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidImmolationTrapRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidImmolationTrapRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidImmolationTrapRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMongooseBiteRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMongooseBiteRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMongooseBiteRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMongooseBiteRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMongooseBiteRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMultiShotRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMultiShotRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMultiShotRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMultiShotRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMultiShotRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidMultiShotRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidRaptorStrikeRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScareBeastRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScareBeastRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScareBeastRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorpidStingMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSerpentStingRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidViperStingRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidViperStingRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidViperStingRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidViperStingRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWingClipRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWingClipRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWingClipRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAimedShotRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAimedShotRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAimedShotRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAimedShotRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAimedShotRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAimedShotRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidAimedShotRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidCounterattackRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidCounterattackRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidCounterattackRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidCounterattackRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScatterShotMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSilencingShotMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWyvernStingRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWyvernStingRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWyvernStingRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidWyvernStingRank4Missed)
end

function me.TestCombatEventSelfAvoidArcaneShotRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank1Missed",
    testCategory,
    3044,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank2Missed",
    testCategory,
    14281,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank3Missed",
    testCategory,
    14282,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank4Missed",
    testCategory,
    14283,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank5Missed",
    testCategory,
    14284,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank6Missed",
    testCategory,
    14285,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank7Missed",
    testCategory,
    14286,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank8Missed",
    testCategory,
    14287,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneShotRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneShotRank9Missed",
    testCategory,
    27019,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConcussiveShotMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConcussiveShotMissed",
    testCategory,
    5116,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidExplosiveTrapRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidExplosiveTrapRank1Missed",
    testCategory,
    13813,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidExplosiveTrapRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidExplosiveTrapRank2Missed",
    testCategory,
    14316,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidExplosiveTrapRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidExplosiveTrapRank3Missed",
    testCategory,
    14317,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidExplosiveTrapRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidExplosiveTrapRank4Missed",
    testCategory,
    27025,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFlareMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlareMissed",
    testCategory,
    1543,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFreezingTrapRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFreezingTrapRank1Missed",
    testCategory,
    1499,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFreezingTrapRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFreezingTrapRank2Missed",
    testCategory,
    14310,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFreezingTrapRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFreezingTrapRank3Missed",
    testCategory,
    14311,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostTrapMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostTrapMissed",
    testCategory,
    13809,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHuntersMarkRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHuntersMarkRank1Missed",
    testCategory,
    1130,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHuntersMarkRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHuntersMarkRank2Missed",
    testCategory,
    14323,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHuntersMarkRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHuntersMarkRank3Missed",
    testCategory,
    14324,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidHuntersMarkRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidHuntersMarkRank4Missed",
    testCategory,
    14325,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidImmolationTrapRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidImmolationTrapRank1Missed",
    testCategory,
    13795,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidImmolationTrapRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidImmolationTrapRank2Missed",
    testCategory,
    14302,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidImmolationTrapRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidImmolationTrapRank3Missed",
    testCategory,
    14303,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidImmolationTrapRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidImmolationTrapRank4Missed",
    testCategory,
    14304,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidImmolationTrapRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidImmolationTrapRank5Missed",
    testCategory,
    14305,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidImmolationTrapRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidImmolationTrapRank6Missed",
    testCategory,
    27023,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMongooseBiteRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMongooseBiteRank1Missed",
    testCategory,
    1495,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMongooseBiteRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMongooseBiteRank2Missed",
    testCategory,
    14269,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMongooseBiteRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMongooseBiteRank3Missed",
    testCategory,
    14270,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMongooseBiteRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMongooseBiteRank4Missed",
    testCategory,
    14271,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMongooseBiteRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMongooseBiteRank5Missed",
    testCategory,
    36916,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMultiShotRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMultiShotRank1Missed",
    testCategory,
    2643,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMultiShotRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMultiShotRank2Missed",
    testCategory,
    14288,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMultiShotRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMultiShotRank3Missed",
    testCategory,
    14289,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMultiShotRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMultiShotRank4Missed",
    testCategory,
    14290,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMultiShotRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMultiShotRank5Missed",
    testCategory,
    25294,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidMultiShotRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidMultiShotRank6Missed",
    testCategory,
    27021,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank9Missed",
    testCategory,
    27014,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank1Missed",
    testCategory,
    2973,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank2Missed",
    testCategory,
    14260,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank3Missed",
    testCategory,
    14261,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank4Missed",
    testCategory,
    14262,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank5Missed",
    testCategory,
    14263,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank6Missed",
    testCategory,
    14264,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank7Missed",
    testCategory,
    14265,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidRaptorStrikeRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidRaptorStrikeRank8Missed",
    testCategory,
    14266,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScareBeastRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScareBeastRank1Missed",
    testCategory,
    1513,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScareBeastRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScareBeastRank2Missed",
    testCategory,
    14326,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScareBeastRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScareBeastRank3Missed",
    testCategory,
    14327,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorpidStingMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorpidStingMissed",
    testCategory,
    3043,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank1Missed",
    testCategory,
    1978,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank2Missed",
    testCategory,
    13549,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank3Missed",
    testCategory,
    13550,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank4Missed",
    testCategory,
    13551,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank5Missed",
    testCategory,
    13552,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank6Missed",
    testCategory,
    13553,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank7Missed",
    testCategory,
    13554,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank8Missed",
    testCategory,
    13555,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank9Missed",
    testCategory,
    25295,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSerpentStingRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSerpentStingRank10Missed",
    testCategory,
    27016,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidViperStingRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidViperStingRank1Missed",
    testCategory,
    3034,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidViperStingRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidViperStingRank2Missed",
    testCategory,
    14279,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidViperStingRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidViperStingRank3Missed",
    testCategory,
    14280,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidViperStingRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidViperStingRank4Missed",
    testCategory,
    27018,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWingClipRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWingClipRank1Missed",
    testCategory,
    2974,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWingClipRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWingClipRank2Missed",
    testCategory,
    14267,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWingClipRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWingClipRank3Missed",
    testCategory,
    14268,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAimedShotRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAimedShotRank1Missed",
    testCategory,
    19434,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAimedShotRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAimedShotRank2Missed",
    testCategory,
    20900,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAimedShotRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAimedShotRank3Missed",
    testCategory,
    20901,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAimedShotRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAimedShotRank4Missed",
    testCategory,
    20902,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAimedShotRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAimedShotRank5Missed",
    testCategory,
    20903,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAimedShotRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAimedShotRank6Missed",
    testCategory,
    20904,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidAimedShotRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidAimedShotRank7Missed",
    testCategory,
    27065,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidCounterattackRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidCounterattackRank1Missed",
    testCategory,
    19306,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidCounterattackRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidCounterattackRank2Missed",
    testCategory,
    20909,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidCounterattackRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidCounterattackRank3Missed",
    testCategory,
    20910,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidCounterattackRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidCounterattackRank4Missed",
    testCategory,
    27067,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScatterShotMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScatterShotMissed",
    testCategory,
    19503,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSilencingShotMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSilencingShotMissed",
    testCategory,
    34490,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWyvernStingRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWyvernStingRank1Missed",
    testCategory,
    19386,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWyvernStingRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWyvernStingRank2Missed",
    testCategory,
    24132,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWyvernStingRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWyvernStingRank3Missed",
    testCategory,
    24133,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidWyvernStingRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidWyvernStingRank4Missed",
    testCategory,
    27068,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
