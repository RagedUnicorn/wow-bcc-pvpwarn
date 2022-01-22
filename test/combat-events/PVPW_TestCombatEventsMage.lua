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

-- luacheck: ignore _

local mod = rgpvpw
local me = {}
mod.testCombatEventsMage = me

me.tag = "TestCombatEventsMage"

local testGroupName = "CombatEventsMage"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MAGE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAmplifyMagicRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBlastSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBrillianceRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBrillianceRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBrillianceRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBrillianceRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBrillianceRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneBrillianceRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneExplosionRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneIntellectRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcaneMissilesRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlinkSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlizzardRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlizzardRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlizzardRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlizzardRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlizzardRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlizzardRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlizzardRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConeOfColdRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConeOfColdRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConeOfColdRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConeOfColdRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConeOfColdRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConeOfColdRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureFoodRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaAgateSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaCitrineSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaEmeraldSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaJadeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureManaRubySuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventConjureWaterRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCounterspellSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDampenMagicRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEvocationApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventEvocationRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireBlastRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireWardRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFireballRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFlamestrikeRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostArmorRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostNovaRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostNovaRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostNovaRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostNovaRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostNovaRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostWardRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank13Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostboltRank14Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceArmorRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBlockApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBlockRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceLanceRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInvisibilitySuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMageArmorRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank7Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank7Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventManaShieldRank7Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoltenArmorRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoltenArmorRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMoltenArmorRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphTurtleRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPolymorphPigRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRemoveLesserCurseSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventScorchRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlowFallApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlowFallRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlowFallRefresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSpellstealSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcanePowerApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventArcanePowerRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlastWaveRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlastWaveRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlastWaveRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlastWaveRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlastWaveRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlastWaveRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventBlastWaveRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventColdSnapSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCombustionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCombustionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDragonsBreathRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDragonsBreathRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDragonsBreathRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDragonsBreathRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank1Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank1Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank1Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank2Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank2Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank2Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank3Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank3Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank3Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank4Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank4Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank4Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank5Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank5Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank5Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank6Applied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank6Removed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIceBarrierRank6Refresh)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIcyVeinsApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIcyVeinsRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPresenceOfMindApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPresenceOfMindRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventPyroblastRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSlowSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSummonWaterElementalSuccess)
end

function me.TestCombatEventAmplifyMagicRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAmplifyMagicRank1Applied",
    testCategory,
    1008
  )
end

function me.TestCombatEventAmplifyMagicRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAmplifyMagicRank1Removed",
    testCategory,
    1008
  )
end

function me.TestCombatEventAmplifyMagicRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventAmplifyMagicRank1Refresh",
    testCategory,
    1008
  )
end

function me.TestCombatEventAmplifyMagicRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAmplifyMagicRank2Applied",
    testCategory,
    8455
  )
end

function me.TestCombatEventAmplifyMagicRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAmplifyMagicRank2Removed",
    testCategory,
    8455
  )
end

function me.TestCombatEventAmplifyMagicRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventAmplifyMagicRank2Refresh",
    testCategory,
    8455
  )
end

function me.TestCombatEventAmplifyMagicRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAmplifyMagicRank3Applied",
    testCategory,
    10169
  )
end

function me.TestCombatEventAmplifyMagicRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAmplifyMagicRank3Removed",
    testCategory,
    10169
  )
end

function me.TestCombatEventAmplifyMagicRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventAmplifyMagicRank3Refresh",
    testCategory,
    10169
  )
end

function me.TestCombatEventAmplifyMagicRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAmplifyMagicRank4Applied",
    testCategory,
    10170
  )
end

function me.TestCombatEventAmplifyMagicRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAmplifyMagicRank4Removed",
    testCategory,
    10170
  )
end

function me.TestCombatEventAmplifyMagicRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventAmplifyMagicRank4Refresh",
    testCategory,
    10170
  )
end

function me.TestCombatEventAmplifyMagicRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAmplifyMagicRank5Applied",
    testCategory,
    27130
  )
end

function me.TestCombatEventAmplifyMagicRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAmplifyMagicRank5Removed",
    testCategory,
    27130
  )
end

function me.TestCombatEventAmplifyMagicRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventAmplifyMagicRank5Refresh",
    testCategory,
    27130
  )
end

function me.TestCombatEventAmplifyMagicRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventAmplifyMagicRank6Applied",
    testCategory,
    33946
  )
end

function me.TestCombatEventAmplifyMagicRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventAmplifyMagicRank6Removed",
    testCategory,
    33946
  )
end

function me.TestCombatEventAmplifyMagicRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventAmplifyMagicRank6Refresh",
    testCategory,
    33946
  )
end

function me.TestCombatEventArcaneBlastSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneBlastSuccess",
    testCategory,
    30451
  )
end

function me.TestCombatEventArcaneBrillianceRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneBrillianceRank1Applied",
    testCategory,
    23028
  )
end
function me.TestCombatEventArcaneBrillianceRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneBrillianceRank1Removed",
    testCategory,
    23028
  )
end
function me.TestCombatEventArcaneBrillianceRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneBrillianceRank1Refresh",
    testCategory,
    23028
  )
end
function me.TestCombatEventArcaneBrillianceRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneBrillianceRank2Applied",
    testCategory,
    27127
  )
end
function me.TestCombatEventArcaneBrillianceRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneBrillianceRank2Removed",
    testCategory,
    27127
  )
end
function me.TestCombatEventArcaneBrillianceRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneBrillianceRank2Refresh",
    testCategory,
    27127
  )
end

function me.TestCombatEventArcaneExplosionRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank1Success",
    testCategory,
    1449
  )
end

function me.TestCombatEventArcaneExplosionRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank2Success",
    testCategory,
    8437
  )
end

function me.TestCombatEventArcaneExplosionRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank3Success",
    testCategory,
    8438
  )
end

function me.TestCombatEventArcaneExplosionRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank4Success",
    testCategory,
    8439
  )
end

function me.TestCombatEventArcaneExplosionRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank5Success",
    testCategory,
    10201
  )
end

function me.TestCombatEventArcaneExplosionRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank6Success",
    testCategory,
    10202
  )
end

function me.TestCombatEventArcaneExplosionRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank7Success",
    testCategory,
    27080
  )
end

function me.TestCombatEventArcaneExplosionRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneExplosionRank8Success",
    testCategory,
    27082
  )
end

function me.TestCombatEventArcaneIntellectRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneIntellectRank1Applied",
    testCategory,
    1459
  )
end

function me.TestCombatEventArcaneIntellectRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneIntellectRank1Removed",
    testCategory,
    1459
  )
end

function me.TestCombatEventArcaneIntellectRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneIntellectRank1Refresh",
    testCategory,
    1459
  )
end

function me.TestCombatEventArcaneIntellectRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneIntellectRank2Applied",
    testCategory,
    1460
  )
end

function me.TestCombatEventArcaneIntellectRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneIntellectRank2Removed",
    testCategory,
    1460
  )
end

function me.TestCombatEventArcaneIntellectRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneIntellectRank2Refresh",
    testCategory,
    1460
  )
end

function me.TestCombatEventArcaneIntellectRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneIntellectRank3Applied",
    testCategory,
    1461
  )
end

function me.TestCombatEventArcaneIntellectRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneIntellectRank3Removed",
    testCategory,
    1461
  )
end

function me.TestCombatEventArcaneIntellectRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneIntellectRank3Refresh",
    testCategory,
    1461
  )
end

function me.TestCombatEventArcaneIntellectRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneIntellectRank4Applied",
    testCategory,
    10156
  )
end

function me.TestCombatEventArcaneIntellectRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneIntellectRank4Removed",
    testCategory,
    10156
  )
end

function me.TestCombatEventArcaneIntellectRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneIntellectRank4Refresh",
    testCategory,
    10156
  )
end

function me.TestCombatEventArcaneIntellectRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneIntellectRank5Applied",
    testCategory,
    10157
  )
end

function me.TestCombatEventArcaneIntellectRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneIntellectRank5Removed",
    testCategory,
    10157
  )
end

function me.TestCombatEventArcaneIntellectRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneIntellectRank5Refresh",
    testCategory,
    10157
  )
end

function me.TestCombatEventArcaneIntellectRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcaneIntellectRank6Applied",
    testCategory,
    27126
  )
end

function me.TestCombatEventArcaneIntellectRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcaneIntellectRank6Removed",
    testCategory,
    27126
  )
end

function me.TestCombatEventArcaneIntellectRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventArcaneIntellectRank6Refresh",
    testCategory,
    27126
  )
end

function me.TestCombatEventArcaneMissilesRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank1Success",
    testCategory,
    5143
  )
end

function me.TestCombatEventArcaneMissilesRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank2Success",
    testCategory,
    5144
  )
end

function me.TestCombatEventArcaneMissilesRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank3Success",
    testCategory,
    5145
  )
end

function me.TestCombatEventArcaneMissilesRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank4Success",
    testCategory,
    8416
  )
end

function me.TestCombatEventArcaneMissilesRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank5Success",
    testCategory,
    8417
  )
end

function me.TestCombatEventArcaneMissilesRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank6Success",
    testCategory,
    10211
  )
end

function me.TestCombatEventArcaneMissilesRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank7Success",
    testCategory,
    10212
  )
end

function me.TestCombatEventArcaneMissilesRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank8Success",
    testCategory,
    25345
  )
end

function me.TestCombatEventArcaneMissilesRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank9Success",
    testCategory,
    27075
  )
end

function me.TestCombatEventArcaneMissilesRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank10Success",
    testCategory,
    38699
  )
end

function me.TestCombatEventArcaneMissilesRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventArcaneMissilesRank11Success",
    testCategory,
    38704
  )
end

function me.TestCombatEventBlinkSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlinkSuccess",
    testCategory,
    1953
  )
end

function me.TestCombatEventBlizzardRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlizzardRank1Success",
    testCategory,
    10
  )
end

function me.TestCombatEventBlizzardRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlizzardRank2Success",
    testCategory,
    6141
  )
end

function me.TestCombatEventBlizzardRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlizzardRank3Success",
    testCategory,
    8427
  )
end

function me.TestCombatEventBlizzardRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlizzardRank4Success",
    testCategory,
    10185
  )
end

function me.TestCombatEventBlizzardRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlizzardRank5Success",
    testCategory,
    10186
  )
end

function me.TestCombatEventBlizzardRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlizzardRank6Success",
    testCategory,
    10187
  )
end

function me.TestCombatEventBlizzardRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlizzardRank7Success",
    testCategory,
    27085
  )
end

function me.TestCombatEventConeOfColdRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConeOfColdRank1Success",
    testCategory,
    120
  )
end

function me.TestCombatEventConeOfColdRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConeOfColdRank2Success",
    testCategory,
    8492
  )
end

function me.TestCombatEventConeOfColdRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConeOfColdRank3Success",
    testCategory,
    10159
  )
end

function me.TestCombatEventConeOfColdRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConeOfColdRank4Success",
    testCategory,
    10160
  )
end

function me.TestCombatEventConeOfColdRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConeOfColdRank5Success",
    testCategory,
    10161
  )
end

function me.TestCombatEventConeOfColdRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConeOfColdRank6Success",
    testCategory,
    27087
  )
end

function me.TestCombatEventConjureFoodRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank1Success",
    testCategory,
    587
  )
end

function me.TestCombatEventConjureFoodRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank2Success",
    testCategory,
    597
  )
end

function me.TestCombatEventConjureFoodRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank3Success",
    testCategory,
    990
  )
end

function me.TestCombatEventConjureFoodRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank4Success",
    testCategory,
    6129
  )
end

function me.TestCombatEventConjureFoodRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank5Success",
    testCategory,
    10144
  )
end

function me.TestCombatEventConjureFoodRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank6Success",
    testCategory,
    10145
  )
end

function me.TestCombatEventConjureFoodRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank7Success",
    testCategory,
    28612
  )
end

function me.TestCombatEventConjureFoodRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureFoodRank8Success",
    testCategory,
    33717
  )
end

function me.TestCombatEventConjureManaAgateSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureManaAgateSuccess",
    testCategory,
    759
  )
end

function me.TestCombatEventConjureManaCitrineSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureManaCitrineSuccess",
    testCategory,
    10053
  )
end

function me.TestCombatEventConjureManaEmeraldSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureManaEmeraldSuccess",
    testCategory,
    27101
  )
end

function me.TestCombatEventConjureManaJadeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureManaJadeSuccess",
    testCategory,
    3552
  )
end

function me.TestCombatEventConjureManaRubySuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureManaRubySuccess",
    testCategory,
    10054
  )
end

function me.TestCombatEventConjureWaterRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank1Success",
    testCategory,
    5504
  )
end

function me.TestCombatEventConjureWaterRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank2Success",
    testCategory,
    5505
  )
end

function me.TestCombatEventConjureWaterRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank3Success",
    testCategory,
    5506
  )
end

function me.TestCombatEventConjureWaterRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank4Success",
    testCategory,
    6127
  )
end

function me.TestCombatEventConjureWaterRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank5Success",
    testCategory,
    10138
  )
end

function me.TestCombatEventConjureWaterRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank6Success",
    testCategory,
    10139
  )
end

function me.TestCombatEventConjureWaterRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank7Success",
    testCategory,
    10140
  )
end

function me.TestCombatEventConjureWaterRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank8Success",
    testCategory,
    37420
  )
end

function me.TestCombatEventConjureWaterRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventConjureWaterRank9Success",
    testCategory,
    27090
  )
end

function me.TestCombatEventCounterspellSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventCounterspellSuccess",
    testCategory,
    2139
  )
end

function me.TestCombatEventDampenMagicRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDampenMagicRank1Applied",
    testCategory,
    604
  )
end

function me.TestCombatEventDampenMagicRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDampenMagicRank1Removed",
    testCategory,
    604
  )
end

function me.TestCombatEventDampenMagicRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDampenMagicRank1Refresh",
    testCategory,
    604
  )
end

function me.TestCombatEventDampenMagicRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDampenMagicRank2Applied",
    testCategory,
    8450
  )
end

function me.TestCombatEventDampenMagicRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDampenMagicRank2Removed",
    testCategory,
    8450
  )
end

function me.TestCombatEventDampenMagicRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDampenMagicRank2Refresh",
    testCategory,
    8450
  )
end

function me.TestCombatEventDampenMagicRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDampenMagicRank3Applied",
    testCategory,
    8451
  )
end

function me.TestCombatEventDampenMagicRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDampenMagicRank3Removed",
    testCategory,
    8451
  )
end

function me.TestCombatEventDampenMagicRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDampenMagicRank3Refresh",
    testCategory,
    8451
  )
end

function me.TestCombatEventDampenMagicRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDampenMagicRank4Applied",
    testCategory,
    10173
  )
end

function me.TestCombatEventDampenMagicRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDampenMagicRank4Removed",
    testCategory,
    10173
  )
end

function me.TestCombatEventDampenMagicRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDampenMagicRank4Refresh",
    testCategory,
    10173
  )
end

function me.TestCombatEventDampenMagicRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDampenMagicRank5Applied",
    testCategory,
    10174
  )
end

function me.TestCombatEventDampenMagicRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDampenMagicRank5Removed",
    testCategory,
    10174
  )
end

function me.TestCombatEventDampenMagicRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDampenMagicRank5Refresh",
    testCategory,
    10174
  )
end

function me.TestCombatEventDampenMagicRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDampenMagicRank6Applied",
    testCategory,
    33944
  )
end

function me.TestCombatEventDampenMagicRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDampenMagicRank6Removed",
    testCategory,
    33944
  )
end

function me.TestCombatEventDampenMagicRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventDampenMagicRank6Refresh",
    testCategory,
    33944
  )
end

function me.TestCombatEventEvocationApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventEvocationApplied",
    testCategory,
    12051
  )
end

function me.TestCombatEventEvocationRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventEvocationRemoved",
    testCategory,
    12051
  )
end

function me.TestCombatEventFireBlastRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank1Success",
    testCategory,
    2136
  )
end

function me.TestCombatEventFireBlastRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank2Success",
    testCategory,
    2137
  )
end

function me.TestCombatEventFireBlastRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank3Success",
    testCategory,
    2138
  )
end

function me.TestCombatEventFireBlastRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank4Success",
    testCategory,
    8412
  )
end

function me.TestCombatEventFireBlastRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank5Success",
    testCategory,
    8413
  )
end

function me.TestCombatEventFireBlastRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank6Success",
    testCategory,
    10197
  )
end

function me.TestCombatEventFireBlastRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank7Success",
    testCategory,
    10199
  )
end

function me.TestCombatEventFireBlastRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank8Success",
    testCategory,
    27078
  )
end

function me.TestCombatEventFireBlastRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireBlastRank9Success",
    testCategory,
    27079
  )
end

function me.TestCombatEventFireWardRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFireWardRank1Applied",
    testCategory,
    543
  )
end

function me.TestCombatEventFireWardRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFireWardRank1Removed",
    testCategory,
    543
  )
end

function me.TestCombatEventFireWardRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFireWardRank1Refresh",
    testCategory,
    543
  )
end

function me.TestCombatEventFireWardRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFireWardRank2Applied",
    testCategory,
    8457
  )
end

function me.TestCombatEventFireWardRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFireWardRank2Removed",
    testCategory,
    8457
  )
end

function me.TestCombatEventFireWardRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFireWardRank2Refresh",
    testCategory,
    8457
  )
end

function me.TestCombatEventFireWardRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFireWardRank3Applied",
    testCategory,
    8458
  )
end

function me.TestCombatEventFireWardRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFireWardRank3Removed",
    testCategory,
    8458
  )
end

function me.TestCombatEventFireWardRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFireWardRank3Refresh",
    testCategory,
    8458
  )
end

function me.TestCombatEventFireWardRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFireWardRank4Applied",
    testCategory,
    10223
  )
end

function me.TestCombatEventFireWardRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFireWardRank4Removed",
    testCategory,
    10223
  )
end

function me.TestCombatEventFireWardRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFireWardRank4Refresh",
    testCategory,
    10223
  )
end

function me.TestCombatEventFireWardRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFireWardRank5Applied",
    testCategory,
    10225
  )
end

function me.TestCombatEventFireWardRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFireWardRank5Removed",
    testCategory,
    10225
  )
end

function me.TestCombatEventFireWardRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFireWardRank5Refresh",
    testCategory,
    10225
  )
end

function me.TestCombatEventFireWardRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFireWardRank6Applied",
    testCategory,
    27128
  )
end

function me.TestCombatEventFireWardRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFireWardRank6Removed",
    testCategory,
    27128
  )
end

function me.TestCombatEventFireWardRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFireWardRank6Refresh",
    testCategory,
    27128
  )
end

function me.TestCombatEventFireballRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank1Success",
    testCategory,
    133
  )
end

function me.TestCombatEventFireballRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank2Success",
    testCategory,
    143
  )
end

function me.TestCombatEventFireballRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank3Success",
    testCategory,
    145
  )
end

function me.TestCombatEventFireballRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank4Success",
    testCategory,
    3140
  )
end

function me.TestCombatEventFireballRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank5Success",
    testCategory,
    8400
  )
end

function me.TestCombatEventFireballRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank6Success",
    testCategory,
    8401
  )
end

function me.TestCombatEventFireballRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank7Success",
    testCategory,
    8402
  )
end

function me.TestCombatEventFireballRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank8Success",
    testCategory,
    10148
  )
end

function me.TestCombatEventFireballRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank9Success",
    testCategory,
    10149
  )
end

function me.TestCombatEventFireballRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank10Success",
    testCategory,
    10150
  )
end

function me.TestCombatEventFireballRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank11Success",
    testCategory,
    10151
  )
end

function me.TestCombatEventFireballRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFireballRank12Success",
    testCategory,
    25306
  )
end

function me.TestCombatEventFlamestrikeRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlamestrikeRank1Success",
    testCategory,
    2120
  )
end

function me.TestCombatEventFlamestrikeRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlamestrikeRank2Success",
    testCategory,
    2121
  )
end

function me.TestCombatEventFlamestrikeRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlamestrikeRank3Success",
    testCategory,
    8422
  )
end

function me.TestCombatEventFlamestrikeRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlamestrikeRank4Success",
    testCategory,
    8423
  )
end

function me.TestCombatEventFlamestrikeRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlamestrikeRank5Success",
    testCategory,
    10215
  )
end

function me.TestCombatEventFlamestrikeRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlamestrikeRank6Success",
    testCategory,
    10216
  )
end

function me.TestCombatEventFlamestrikeRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFlamestrikeRank7Success",
    testCategory,
    27086
  )
end

function me.TestCombatEventFrostArmorRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostArmorRank1Applied",
    testCategory,
    168
  )
end

function me.TestCombatEventFrostArmorRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostArmorRank1Removed",
    testCategory,
    168
  )
end

function me.TestCombatEventFrostArmorRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostArmorRank1Refresh",
    testCategory,
    168
  )
end

function me.TestCombatEventFrostArmorRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostArmorRank2Applied",
    testCategory,
    7300
  )
end

function me.TestCombatEventFrostArmorRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostArmorRank2Removed",
    testCategory,
    7300
  )
end

function me.TestCombatEventFrostArmorRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostArmorRank2Refresh",
    testCategory,
    7300
  )
end

function me.TestCombatEventFrostArmorRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostArmorRank3Applied",
    testCategory,
    7301
  )
end

function me.TestCombatEventFrostArmorRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostArmorRank3Removed",
    testCategory,
    7301
  )
end

function me.TestCombatEventFrostArmorRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostArmorRank3Refresh",
    testCategory,
    7301
  )
end

function me.TestCombatEventFrostNovaRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostNovaRank1Success",
    testCategory,
    122
  )
end

function me.TestCombatEventFrostNovaRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostNovaRank2Success",
    testCategory,
    865
  )
end

function me.TestCombatEventFrostNovaRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostNovaRank3Success",
    testCategory,
    6131
  )
end

function me.TestCombatEventFrostNovaRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostNovaRank4Success",
    testCategory,
    10230
  )
end

function me.TestCombatEventFrostNovaRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostNovaRank5Success",
    testCategory,
    27088
  )
end

function me.TestCombatEventFrostWardRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostWardRank1Applied",
    testCategory,
    6143
  )
end

function me.TestCombatEventFrostWardRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostWardRank1Removed",
    testCategory,
    6143
  )
end

function me.TestCombatEventFrostWardRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostWardRank1Refresh",
    testCategory,
    6143
  )
end

function me.TestCombatEventFrostWardRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostWardRank2Applied",
    testCategory,
    8461
  )
end

function me.TestCombatEventFrostWardRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostWardRank2Removed",
    testCategory,
    8461
  )
end

function me.TestCombatEventFrostWardRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostWardRank2Refresh",
    testCategory,
    8461
  )
end

function me.TestCombatEventFrostWardRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostWardRank3Applied",
    testCategory,
    8462
  )
end

function me.TestCombatEventFrostWardRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostWardRank3Removed",
    testCategory,
    8462
  )
end

function me.TestCombatEventFrostWardRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostWardRank3Refresh",
    testCategory,
    8462
  )
end

function me.TestCombatEventFrostWardRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostWardRank4Applied",
    testCategory,
    10177
  )
end

function me.TestCombatEventFrostWardRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostWardRank4Removed",
    testCategory,
    10177
  )
end

function me.TestCombatEventFrostWardRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostWardRank4Refresh",
    testCategory,
    10177
  )
end

function me.TestCombatEventFrostWardRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostWardRank5Applied",
    testCategory,
    28609
  )
end

function me.TestCombatEventFrostWardRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostWardRank5Removed",
    testCategory,
    28609
  )
end

function me.TestCombatEventFrostWardRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostWardRank5Refresh",
    testCategory,
    28609
  )
end

function me.TestCombatEventFrostWardRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFrostWardRank6Applied",
    testCategory,
    32796
  )
end

function me.TestCombatEventFrostWardRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFrostWardRank6Removed",
    testCategory,
    32796
  )
end

function me.TestCombatEventFrostWardRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventFrostWardRank6Refresh",
    testCategory,
    32796
  )
end

function me.TestCombatEventFrostboltRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank1Success",
    testCategory,
    116
  )
end

function me.TestCombatEventFrostboltRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank2Success",
    testCategory,
    205
  )
end

function me.TestCombatEventFrostboltRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank3Success",
    testCategory,
    837
  )
end

function me.TestCombatEventFrostboltRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank4Success",
    testCategory,
    7322
  )
end

function me.TestCombatEventFrostboltRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank5Success",
    testCategory,
    8406
  )
end

function me.TestCombatEventFrostboltRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank6Success",
    testCategory,
    8407
  )
end

function me.TestCombatEventFrostboltRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank7Success",
    testCategory,
    8408
  )
end

function me.TestCombatEventFrostboltRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank8Success",
    testCategory,
    10179
  )
end

function me.TestCombatEventFrostboltRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank9Success",
    testCategory,
    10180
  )
end

function me.TestCombatEventFrostboltRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank10Success",
    testCategory,
    10181
  )
end

function me.TestCombatEventFrostboltRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank11Success",
    testCategory,
    25304
  )
end

function me.TestCombatEventFrostboltRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank12Success",
    testCategory,
    27071
  )
end

function me.TestCombatEventFrostboltRank13Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank13Success",
    testCategory,
    27072
  )
end

function me.TestCombatEventFrostboltRank14Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostboltRank14Success",
    testCategory,
    38697
  )
end

function me.TestCombatEventIceArmorRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceArmorRank1Applied",
    testCategory,
    7302
  )
end

function me.TestCombatEventIceArmorRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceArmorRank1Removed",
    testCategory,
    7302
  )
end

function me.TestCombatEventIceArmorRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceArmorRank1Refresh",
    testCategory,
    7302
  )
end

function me.TestCombatEventIceArmorRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceArmorRank2Applied",
    testCategory,
    7320
  )
end

function me.TestCombatEventIceArmorRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceArmorRank2Removed",
    testCategory,
    7320
  )
end

function me.TestCombatEventIceArmorRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceArmorRank2Refresh",
    testCategory,
    7320
  )
end

function me.TestCombatEventIceArmorRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceArmorRank3Applied",
    testCategory,
    10219
  )
end

function me.TestCombatEventIceArmorRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceArmorRank3Removed",
    testCategory,
    10219
  )
end

function me.TestCombatEventIceArmorRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceArmorRank3Refresh",
    testCategory,
    10219
  )
end

function me.TestCombatEventIceArmorRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceArmorRank4Applied",
    testCategory,
    10220
  )
end

function me.TestCombatEventIceArmorRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceArmorRank4Removed",
    testCategory,
    10220
  )
end

function me.TestCombatEventIceArmorRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceArmorRank4Refresh",
    testCategory,
    10220
  )
end

function me.TestCombatEventIceArmorRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceArmorRank5Applied",
    testCategory,
    27124
  )
end

function me.TestCombatEventIceArmorRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceArmorRank5Removed",
    testCategory,
    27124
  )
end

function me.TestCombatEventIceArmorRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceArmorRank5Refresh",
    testCategory,
    27124
  )
end

function me.TestCombatEventIceBlockApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceBlockApplied",
    testCategory,
    45438
  )
end

function me.TestCombatEventIceBlockRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceBlockRemoved",
    testCategory,
    45438
  )
end

function me.TestCombatEventIceLanceRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventIceLanceRank1Success",
    testCategory,
    30455
  )
end

function me.TestCombatEventInvisibilitySuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventInvisibilitySuccess",
    testCategory,
    66
  )
end

function me.TestCombatEventMageArmorRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMageArmorRank1Applied",
    testCategory,
    6117
  )
end

function me.TestCombatEventMageArmorRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMageArmorRank1Removed",
    testCategory,
    6117
  )
end

function me.TestCombatEventMageArmorRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventMageArmorRank1Refresh",
    testCategory,
    6117
  )
end

function me.TestCombatEventMageArmorRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMageArmorRank2Applied",
    testCategory,
    22782
  )
end

function me.TestCombatEventMageArmorRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMageArmorRank2Removed",
    testCategory,
    22782
  )
end

function me.TestCombatEventMageArmorRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventMageArmorRank2Refresh",
    testCategory,
    22782
  )
end

function me.TestCombatEventMageArmorRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMageArmorRank3Applied",
    testCategory,
    22783
  )
end

function me.TestCombatEventMageArmorRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMageArmorRank3Removed",
    testCategory,
    22783
  )
end

function me.TestCombatEventMageArmorRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventMageArmorRank3Refresh",
    testCategory,
    22783
  )
end

function me.TestCombatEventMageArmorRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMageArmorRank4Applied",
    testCategory,
    27125
  )
end

function me.TestCombatEventMageArmorRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMageArmorRank4Removed",
    testCategory,
    27125
  )
end

function me.TestCombatEventMageArmorRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventMageArmorRank4Refresh",
    testCategory,
    27125
  )
end

function me.TestCombatEventManaShieldRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventManaShieldRank1Applied",
    testCategory,
    1463
  )
end

function me.TestCombatEventManaShieldRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventManaShieldRank1Removed",
    testCategory,
    1463
  )
end

function me.TestCombatEventManaShieldRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventManaShieldRank1Refresh",
    testCategory,
    1463
  )
end

function me.TestCombatEventManaShieldRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventManaShieldRank2Applied",
    testCategory,
    8494
  )
end

function me.TestCombatEventManaShieldRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventManaShieldRank2Removed",
    testCategory,
    8494
  )
end

function me.TestCombatEventManaShieldRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventManaShieldRank2Refresh",
    testCategory,
    8494
  )
end

function me.TestCombatEventManaShieldRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventManaShieldRank3Applied",
    testCategory,
    8495
  )
end

function me.TestCombatEventManaShieldRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventManaShieldRank3Removed",
    testCategory,
    8495
  )
end

function me.TestCombatEventManaShieldRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventManaShieldRank3Refresh",
    testCategory,
    8495
  )
end

function me.TestCombatEventManaShieldRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventManaShieldRank4Applied",
    testCategory,
    10191
  )
end

function me.TestCombatEventManaShieldRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventManaShieldRank4Removed",
    testCategory,
    10191
  )
end

function me.TestCombatEventManaShieldRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventManaShieldRank4Refresh",
    testCategory,
    10191
  )
end

function me.TestCombatEventManaShieldRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventManaShieldRank5Applied",
    testCategory,
    10192
  )
end

function me.TestCombatEventManaShieldRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventManaShieldRank5Removed",
    testCategory,
    10192
  )
end

function me.TestCombatEventManaShieldRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventManaShieldRank5Refresh",
    testCategory,
    10192
  )
end

function me.TestCombatEventManaShieldRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventManaShieldRank6Applied",
    testCategory,
    10193
  )
end

function me.TestCombatEventManaShieldRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventManaShieldRank6Removed",
    testCategory,
    10193
  )
end

function me.TestCombatEventManaShieldRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventManaShieldRank6Refresh",
    testCategory,
    10193
  )
end

function me.TestCombatEventManaShieldRank7Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventManaShieldRank7Applied",
    testCategory,
    27131
  )
end

function me.TestCombatEventManaShieldRank7Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventManaShieldRank7Removed",
    testCategory,
    27131
  )
end

function me.TestCombatEventManaShieldRank7Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventManaShieldRank7Refresh",
    testCategory,
    27131
  )
end

function me.TestCombatEventMoltenArmorRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMoltenArmorRank1Applied",
    testCategory,
    30482
  )
end

function me.TestCombatEventMoltenArmorRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMoltenArmorRank1Removed",
    testCategory,
    30482
  )
end

function me.TestCombatEventMoltenArmorRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventMoltenArmorRank1Refresh",
    testCategory,
    30482
  )
end

function me.TestCombatEventPolymorphRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPolymorphRank1Success",
    testCategory,
    118
  )
end

function me.TestCombatEventPolymorphRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPolymorphRank2Success",
    testCategory,
    12824
  )
end

function me.TestCombatEventPolymorphRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPolymorphRank3Success",
    testCategory,
    12825
  )
end

function me.TestCombatEventPolymorphRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPolymorphRank4Success",
    testCategory,
    12826
  )
end

function me.TestCombatEventPolymorphTurtleRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPolymorphTurtleRank1Success",
    testCategory,
    28271
  )
end

function me.TestCombatEventPolymorphPigRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPolymorphPigRank1Success",
    testCategory,
    28272
  )
end

function me.TestCombatEventRemoveLesserCurseSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRemoveLesserCurseSuccess",
    testCategory,
    475
  )
end

function me.TestCombatEventScorchRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank1Success",
    testCategory,
    2948
  )
end

function me.TestCombatEventScorchRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank2Success",
    testCategory,
    8444
  )
end

function me.TestCombatEventScorchRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank3Success",
    testCategory,
    8445
  )
end

function me.TestCombatEventScorchRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank4Success",
    testCategory,
    8446
  )
end

function me.TestCombatEventScorchRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank5Success",
    testCategory,
    10205
  )
end

function me.TestCombatEventScorchRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank6Success",
    testCategory,
    10206
  )
end

function me.TestCombatEventScorchRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank7Success",
    testCategory,
    10207
  )
end

function me.TestCombatEventScorchRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank8Success",
    testCategory,
    27073
  )
end

function me.TestCombatEventScorchRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventScorchRank9Success",
    testCategory,
    27074
  )
end

function me.TestCombatEventSlowFallApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSlowFallApplied",
    testCategory,
    130
  )
end

function me.TestCombatEventSlowFallRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSlowFallRemoved",
    testCategory,
    130
  )
end

function me.TestCombatEventSlowFallRefresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventSlowFallRefresh",
    testCategory,
    130
  )
end

function me.TestCombatEventSpellstealSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSpellstealSuccess",
    testCategory,
    30449
  )
end

function me.TestCombatEventArcanePowerApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventArcanePowerApplied",
    testCategory,
    12042
  )
end

function me.TestCombatEventArcanePowerRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventArcanePowerRemoved",
    testCategory,
    12042
  )
end

function me.TestCombatEventBlastWaveRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlastWaveRank1Success",
    testCategory,
    11113
  )
end

function me.TestCombatEventBlastWaveRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlastWaveRank2Success",
    testCategory,
    13018
  )
end

function me.TestCombatEventBlastWaveRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlastWaveRank3Success",
    testCategory,
    13019
  )
end

function me.TestCombatEventBlastWaveRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlastWaveRank4Success",
    testCategory,
    13020
  )
end

function me.TestCombatEventBlastWaveRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlastWaveRank5Success",
    testCategory,
    13021
  )
end

function me.TestCombatEventBlastWaveRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlastWaveRank6Success",
    testCategory,
    27133
  )
end

function me.TestCombatEventBlastWaveRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventBlastWaveRank7Success",
    testCategory,
    33933
  )
end

function me.TestCombatEventColdSnapSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventColdSnapSuccess",
    testCategory,
    11958
  )
end

function me.TestCombatEventCombustionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventCombustionApplied",
    testCategory,
    11129
  )
end

function me.TestCombatEventCombustionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventCombustionRemoved",
    testCategory,
    11129
  )
end

function me.TestCombatEventDragonsBreathRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDragonsBreathRank1Success",
    testCategory,
    31661
  )
end

function me.TestCombatEventDragonsBreathRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDragonsBreathRank2Success",
    testCategory,
    33041
  )
end

function me.TestCombatEventDragonsBreathRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDragonsBreathRank3Success",
    testCategory,
    33042
  )
end

function me.TestCombatEventDragonsBreathRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventDragonsBreathRank4Success",
    testCategory,
    33043
  )
end

function me.TestCombatEventIceBarrierRank1Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceBarrierRank1Applied",
    testCategory,
    11426
  )
end

function me.TestCombatEventIceBarrierRank1Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceBarrierRank1Removed",
    testCategory,
    11426
  )
end

function me.TestCombatEventIceBarrierRank1Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceBarrierRank1Refresh",
    testCategory,
    11426
  )
end

function me.TestCombatEventIceBarrierRank2Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceBarrierRank2Applied",
    testCategory,
    13031
  )
end

function me.TestCombatEventIceBarrierRank2Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceBarrierRank2Removed",
    testCategory,
    13031
  )
end

function me.TestCombatEventIceBarrierRank2Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceBarrierRank2Refresh",
    testCategory,
    13031
  )
end

function me.TestCombatEventIceBarrierRank3Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceBarrierRank3Applied",
    testCategory,
    13032
  )
end

function me.TestCombatEventIceBarrierRank3Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceBarrierRank3Removed",
    testCategory,
    13032
  )
end

function me.TestCombatEventIceBarrierRank3Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceBarrierRank3Refresh",
    testCategory,
    13032
  )
end

function me.TestCombatEventIceBarrierRank4Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceBarrierRank4Applied",
    testCategory,
    13033
  )
end

function me.TestCombatEventIceBarrierRank4Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceBarrierRank4Removed",
    testCategory,
    13033
  )
end

function me.TestCombatEventIceBarrierRank4Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceBarrierRank4Refresh",
    testCategory,
    13033
  )
end

function me.TestCombatEventIceBarrierRank5Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceBarrierRank5Applied",
    testCategory,
    27134
  )
end

function me.TestCombatEventIceBarrierRank5Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceBarrierRank5Removed",
    testCategory,
    27134
  )
end

function me.TestCombatEventIceBarrierRank5Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceBarrierRank5Refresh",
    testCategory,
    27134
  )
end

function me.TestCombatEventIceBarrierRank6Applied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIceBarrierRank6Applied",
    testCategory,
    33405
  )
end

function me.TestCombatEventIceBarrierRank6Removed()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIceBarrierRank6Removed",
    testCategory,
    33405
  )
end

function me.TestCombatEventIceBarrierRank6Refresh()
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEventIceBarrierRank6Refresh",
    testCategory,
    33405
  )
end

function me.TestCombatEventIcyVeinsApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIcyVeinsApplied",
    testCategory,
    12472
  )
end

function me.TestCombatEventIcyVeinsRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIcyVeinsRemoved",
    testCategory,
    12472
  )
end

function me.TestCombatEventPresenceOfMindApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventPresenceOfMindApplied",
    testCategory,
    12043
  )
end

function me.TestCombatEventPresenceOfMindRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventPresenceOfMindRemoved",
    testCategory,
    12043
  )
end

function me.TestCombatEventPyroblastRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank1Success",
    testCategory,
    11366
  )
end

function me.TestCombatEventPyroblastRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank2Success",
    testCategory,
    12505
  )
end

function me.TestCombatEventPyroblastRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank3Success",
    testCategory,
    12522
  )
end

function me.TestCombatEventPyroblastRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank4Success",
    testCategory,
    12523
  )
end

function me.TestCombatEventPyroblastRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank5Success",
    testCategory,
    12524
  )
end

function me.TestCombatEventPyroblastRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank6Success",
    testCategory,
    12525
  )
end
function me.TestCombatEventPyroblastRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank7Success",
    testCategory,
    12526
  )
end
function me.TestCombatEventPyroblastRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank8Success",
    testCategory,
    18809
  )
end
function me.TestCombatEventPyroblastRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank9Success",
    testCategory,
    27132
  )
end

function me.TestCombatEventPyroblastRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventPyroblastRank10Success",
    testCategory,
    33938
  )
end

function me.TestCombatEventSlowSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSlowSuccess",
    testCategory,
    31589
  )
end

function me.TestCombatEventSummonWaterElementalSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSummonWaterElementalSuccess",
    testCategory,
    31687
  )
end
