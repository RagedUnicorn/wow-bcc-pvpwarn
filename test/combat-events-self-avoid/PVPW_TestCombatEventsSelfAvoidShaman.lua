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
mod.testCombatEventsSelfAvoidShaman = me

me.tag = "TestCombatEventsSelfAvoidShaman"

local testGroupName = "CombatEventsSelfAvoidShaman"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.SHAMAN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidChainLightningRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidChainLightningRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidChainLightningRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidChainLightningRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidChainLightningRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidChainLightningRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEarthShockRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEarthShockRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEarthShockRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEarthShockRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEarthShockRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEarthShockRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidEarthShockRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlameShockRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlameShockRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlameShockRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlameShockRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlameShockRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlameShockRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFlameShockRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostShockRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostShockRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostShockRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostShockRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidFrostShockRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank1Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank2Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank3Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank4Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank5Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank6Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank7Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank8Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank9Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank10Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank11Missed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSelfAvoidLightningBoltRank12Missed)
end

function me.TestCombatEventSelfAvoidChainLightningRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidChainLightningRank1Missed",
    testCategory,
    421,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidChainLightningRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidChainLightningRank2Missed",
    testCategory,
    930,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidChainLightningRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidChainLightningRank3Missed",
    testCategory,
    2860,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidChainLightningRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidChainLightningRank4Missed",
    testCategory,
    10605,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidChainLightningRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidChainLightningRank5Missed",
    testCategory,
    25439,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidChainLightningRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidChainLightningRank6Missed",
    testCategory,
    25442,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidEarthShockRank1Missed()
 mod.testHelper.TestCombatEventSpellMissed(
   "TestCombatEventSelfAvoidEarthShockRank1Missed",
   testCategory,
   8042,
   RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
 )
end

function me.TestCombatEventSelfAvoidEarthShockRank2Missed()
 mod.testHelper.TestCombatEventSpellMissed(
   "TestCombatEventSelfAvoidEarthShockRank2Missed",
   testCategory,
   8044,
   RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
 )
end

function me.TestCombatEventSelfAvoidEarthShockRank3Missed()
 mod.testHelper.TestCombatEventSpellMissed(
   "TestCombatEventSelfAvoidEarthShockRank3Missed",
   testCategory,
   8045,
   RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
 )
end

function me.TestCombatEventSelfAvoidEarthShockRank4Missed()
 mod.testHelper.TestCombatEventSpellMissed(
   "TestCombatEventSelfAvoidEarthShockRank4Missed",
   testCategory,
   8046,
   RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
 )
end

function me.TestCombatEventSelfAvoidEarthShockRank5Missed()
 mod.testHelper.TestCombatEventSpellMissed(
   "TestCombatEventSelfAvoidEarthShockRank5Missed",
   testCategory,
   10412,
   RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
 )
end

function me.TestCombatEventSelfAvoidEarthShockRank6Missed()
 mod.testHelper.TestCombatEventSpellMissed(
   "TestCombatEventSelfAvoidEarthShockRank6Missed",
   testCategory,
   10413,
   RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
 )
end

function me.TestCombatEventSelfAvoidEarthShockRank7Missed()
 mod.testHelper.TestCombatEventSpellMissed(
   "TestCombatEventSelfAvoidEarthShockRank7Missed",
   testCategory,
   10414,
   RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
 )
end

function me.TestCombatEventSelfAvoidFlameShockRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlameShockRank1Missed",
    testCategory,
    8050,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFlameShockRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlameShockRank2Missed",
    testCategory,
    8052,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFlameShockRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlameShockRank3Missed",
    testCategory,
    8053,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFlameShockRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlameShockRank4Missed",
    testCategory,
    10447,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFlameShockRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlameShockRank5Missed",
    testCategory,
    10448,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFlameShockRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlameShockRank6Missed",
    testCategory,
    29228,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFlameShockRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFlameShockRank7Missed",
    testCategory,
    25457,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostShockRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostShockRank1Missed",
    testCategory,
    8056,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostShockRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostShockRank2Missed",
    testCategory,
    8058,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostShockRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostShockRank3Missed",
    testCategory,
    10472,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostShockRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostShockRank4Missed",
    testCategory,
    10473,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidFrostShockRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidFrostShockRank5Missed",
    testCategory,
    25464,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank1Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank1Missed",
    testCategory,
    403,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank2Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank2Missed",
    testCategory,
    529,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank3Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank3Missed",
    testCategory,
    548,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank4Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank4Missed",
    testCategory,
    915,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank5Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank5Missed",
    testCategory,
    943,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank6Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank6Missed",
    testCategory,
    6041,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank7Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank7Missed",
    testCategory,
    10391,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank8Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank8Missed",
    testCategory,
    10392,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank9Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank9Missed",
    testCategory,
    15207,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank10Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank10Missed",
    testCategory,
    15208,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank11Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank11Missed",
    testCategory,
    25448,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end

function me.TestCombatEventSelfAvoidLightningBoltRank12Missed()
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEventSelfAvoidLightningBoltRank12Missed",
    testCategory,
    25449,
    RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF
  )
end
