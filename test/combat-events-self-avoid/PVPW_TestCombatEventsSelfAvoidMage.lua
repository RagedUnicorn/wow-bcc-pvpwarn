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
mod.testCombatEventsSelfAvoidMage = me

me.tag = "TestCombatEventsSelfAvoidMage"

local testGroupName = "CombatEventsSelfAvoidMage"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MAGE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneBlastMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneExplosionRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidArcaneMissilesRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConeOfColdRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConeOfColdRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConeOfColdRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConeOfColdRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConeOfColdRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidConeOfColdRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidCounterspellMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireBlastRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFireballRank12Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostNovaRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostNovaRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostNovaRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostNovaRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostNovaRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank12Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank13Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostboltRank14Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidIceLanceRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPolymorphRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPolymorphRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPolymorphRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPolymorphRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPolymorphPigRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPolymorphTurtleRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidScorchRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSpellstealMissed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBlastWaveRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBlastWaveRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBlastWaveRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBlastWaveRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBlastWaveRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBlastWaveRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidBlastWaveRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDragonsBreathRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDragonsBreathRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDragonsBreathRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidDragonsBreathRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidPyroblastRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidSlowMissed)
end

function me.TestCombatEventSelfAvoidArcaneBlastMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneBlastMissed",
    testCategory,
    30451,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank1Missed",
    testCategory,
    1449,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank2Missed",
    testCategory,
    8437,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank3Missed",
    testCategory,
    8438,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank4Missed",
    testCategory,
    8439,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank5Missed",
    testCategory,
    10201,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank6Missed",
    testCategory,
    10202,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank7Missed",
    testCategory,
    27080,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneExplosionRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneExplosionRank8Missed",
    testCategory,
    27082,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank1Missed",
    testCategory,
    5143,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank2Missed",
    testCategory,
    5144,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank3Missed",
    testCategory,
    5145,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank4Missed",
    testCategory,
    8416,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank5Missed",
    testCategory,
    8417,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank6Missed",
    testCategory,
    10211,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank7Missed",
    testCategory,
    10212,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank8Missed",
    testCategory,
    25345,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank9Missed",
    testCategory,
    27075,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank10Missed",
    testCategory,
    38699,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidArcaneMissilesRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidArcaneMissilesRank11Missed",
    testCategory,
    38704,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConeOfColdRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConeOfColdRank1Missed",
    testCategory,
    120,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConeOfColdRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConeOfColdRank2Missed",
    testCategory,
    8492,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConeOfColdRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConeOfColdRank3Missed",
    testCategory,
    10159,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConeOfColdRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConeOfColdRank4Missed",
    testCategory,
    10160,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConeOfColdRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConeOfColdRank5Missed",
    testCategory,
    10161,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidConeOfColdRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidConeOfColdRank6Missed",
    testCategory,
    27087,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidCounterspellMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidCounterspellMissed",
    testCategory,
    2139,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank1Missed",
    testCategory,
    2136,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank2Missed",
    testCategory,
    2137,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank3Missed",
    testCategory,
    2138,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank4Missed",
    testCategory,
    8412,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank5Missed",
    testCategory,
    8413,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank6Missed",
    testCategory,
    10197,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank7Missed",
    testCategory,
    10199,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank8Missed",
    testCategory,
    27078,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireBlastRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireBlastRank9Missed",
    testCategory,
    27079,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank1Missed",
    testCategory,
    133,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank2Missed",
    testCategory,
    143,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank3Missed",
    testCategory,
    145,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank4Missed",
    testCategory,
    3140,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank5Missed",
    testCategory,
    8400,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank6Missed",
    testCategory,
    8401,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank7Missed",
    testCategory,
    8402,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank8Missed",
    testCategory,
    10148,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank9Missed",
    testCategory,
    10149,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank10Missed",
    testCategory,
    10150,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank11Missed",
    testCategory,
    10151,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFireballRank12Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFireballRank12Missed",
    testCategory,
    25306,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostNovaRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostNovaRank1Missed",
    testCategory,
    122,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostNovaRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostNovaRank2Missed",
    testCategory,
    865,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostNovaRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostNovaRank3Missed",
    testCategory,
    6131,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostNovaRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostNovaRank4Missed",
    testCategory,
    10230,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostNovaRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostNovaRank5Missed",
    testCategory,
    27088,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank1Missed",
    testCategory,
    116,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank2Missed",
    testCategory,
    205,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank3Missed",
    testCategory,
    837,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank4Missed",
    testCategory,
    7322,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank5Missed",
    testCategory,
    8406,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank6Missed",
    testCategory,
    8407,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank7Missed",
    testCategory,
    8408,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank8Missed",
    testCategory,
    10179,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank9Missed",
    testCategory,
    10180,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank10Missed",
    testCategory,
    10181,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank11Missed",
    testCategory,
    25304,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank12Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank12Missed",
    testCategory,
    27071,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank13Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank13Missed",
    testCategory,
    27072,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostboltRank14Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostboltRank14Missed",
    testCategory,
    38697,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidIceLanceRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidIceLanceRank1Missed",
    testCategory,
    30455,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPolymorphRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPolymorphRank1Missed",
    testCategory,
    118,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPolymorphRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPolymorphRank2Missed",
    testCategory,
    12824,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPolymorphRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPolymorphRank3Missed",
    testCategory,
    12825,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPolymorphRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPolymorphRank4Missed",
    testCategory,
    12826,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPolymorphPigRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPolymorphPigRank1Missed",
    testCategory,
    28272,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPolymorphTurtleRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPolymorphTurtleRank1Missed",
    testCategory,
    28271,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank1Missed",
    testCategory,
    2948,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank2Missed",
    testCategory,
    8444,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank3Missed",
    testCategory,
    8445,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank4Missed",
    testCategory,
    8446,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank5Missed",
    testCategory,
    10205,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank6Missed",
    testCategory,
    10206,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank7Missed",
    testCategory,
    10207,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank8Missed",
    testCategory,
    27073,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidScorchRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidScorchRank9Missed",
    testCategory,
    27074,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSpellstealMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSpellstealMissed",
    testCategory,
    30449,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBlastWaveRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBlastWaveRank1Missed",
    testCategory,
    11113,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBlastWaveRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBlastWaveRank2Missed",
    testCategory,
    13018,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBlastWaveRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBlastWaveRank3Missed",
    testCategory,
    13019,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBlastWaveRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBlastWaveRank4Missed",
    testCategory,
    13020,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBlastWaveRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBlastWaveRank5Missed",
    testCategory,
    13021,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBlastWaveRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBlastWaveRank6Missed",
    testCategory,
    27133,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidBlastWaveRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidBlastWaveRank7Missed",
    testCategory,
    33933,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDragonsBreathRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDragonsBreathRank1Missed",
    testCategory,
    31661,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDragonsBreathRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDragonsBreathRank2Missed",
    testCategory,
    33041,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDragonsBreathRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDragonsBreathRank3Missed",
    testCategory,
    33042,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidDragonsBreathRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidDragonsBreathRank4Missed",
    testCategory,
    33043,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank1Missed",
    testCategory,
    11366,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank2Missed",
    testCategory,
    12505,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank3Missed",
    testCategory,
    12522,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank4Missed",
    testCategory,
    12523,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank5Missed",
    testCategory,
    12524,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank6Missed",
    testCategory,
    12525,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank7Missed",
    testCategory,
    12526,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank8Missed",
    testCategory,
    18809,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank9Missed",
    testCategory,
    27132,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidPyroblastRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidPyroblastRank10Missed",
    testCategory,
    33938,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidSlowMissed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidSlowMissed",
    testCategory,
    31589,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
