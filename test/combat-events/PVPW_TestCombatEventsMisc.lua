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
mod.testCombatEventsMisc = me

me.tag = "TestCombatEventsMisc"

local testGroupName = "CombatEventsMisc"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MISC.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCatseyeElixirApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventCatseyeElixirRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDestructionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventDestructionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFreeActionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFreeActionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHastePotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHastePotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHeroicPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventHeroicPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsaneStrengthPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInsaneStrengthPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInvisibilityPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventInvisibilityPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIronshieldPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventIronshieldPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserInvisibilityPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLesserInvisibilityPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLivingActionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventLivingActionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorArcaneProtectionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorArcaneProtectionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorFireProtectionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorFireProtectionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorFrostProtectionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorFrostProtectionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorHolyProtectionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorHolyProtectionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorNatureProtectionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorNatureProtectionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorShadowProtectionPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMajorShadowProtectionPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMightyRagePotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventMightyRagePotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRagePotionSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRestorativePotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventRestorativePotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSneakingPotionApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSneakingPotionRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSuperHealingPotionSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSuperManaPotionSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSuperRejuvenationPotionSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventAdamantiteGrenadeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelIronBombSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFrostGrenadeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventSuperSapperChargeSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelBlossomApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFelBlossomRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightmareSeedApplied)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNightmareSeedRemoved)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventThistleTeaSuccess)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank1Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank2Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank3Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank4Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank5Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank6Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank7Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank8Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank9Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank10Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank11Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank12Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank13Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank14Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank15Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank16Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank17Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank18Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventFirstAidRank19Success)
  mod.testReporter.AddToTestQueueWithDelay(me.TestCombatEventNetherweaveNetSuccess)
end

function me.TestCombatEventCatseyeElixirApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventCatseyeElixirApplied",
    testCategory,
    12608
  )
end

function me.TestCombatEventCatseyeElixirRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventCatseyeElixirRemoved",
    testCategory,
    12608
  )
end

function me.TestCombatEventDestructionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventDestructionPotionApplied",
    testCategory,
    28508
  )
end

function me.TestCombatEventDestructionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventDestructionPotionRemoved",
    testCategory,
    28508
  )
end

function me.TestCombatEventFreeActionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFreeActionPotionApplied",
    testCategory,
    6615
  )
end

function me.TestCombatEventFreeActionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFreeActionPotionRemoved",
    testCategory,
    6615
  )
end

function me.TestCombatEventHastePotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventHastePotionApplied",
    testCategory,
    28507
  )
end

function me.TestCombatEventHastePotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventHastePotionRemoved",
    testCategory,
    28507
  )
end

function me.TestCombatEventHeroicPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventHeroicPotionApplied",
    testCategory,
    28506
  )
end

function me.TestCombatEventHeroicPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventHeroicPotionRemoved",
    testCategory,
    28506
  )
end

function me.TestCombatEventInsaneStrengthPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInsaneStrengthPotionApplied",
    testCategory,
    28494
  )
end

function me.TestCombatEventInsaneStrengthPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInsaneStrengthPotionRemoved",
    testCategory,
    28494
  )
end

function me.TestCombatEventInvisibilityPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventInvisibilityPotionApplied",
    testCategory,
    11392
  )
end

function me.TestCombatEventInvisibilityPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventInvisibilityPotionRemoved",
    testCategory,
    11392
  )
end

function me.TestCombatEventIronshieldPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventIronshieldPotionApplied",
    testCategory,
    28515
  )
end

function me.TestCombatEventIronshieldPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventIronshieldPotionRemoved",
    testCategory,
    28515
  )
end

function me.TestCombatEventLesserInvisibilityPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLesserInvisibilityPotionApplied",
    testCategory,
    3680
  )
end

function me.TestCombatEventLesserInvisibilityPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLesserInvisibilityPotionRemoved",
    testCategory,
    3680
  )
end

function me.TestCombatEventLivingActionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventLivingActionPotionApplied",
    testCategory,
    24364
  )
end

function me.TestCombatEventLivingActionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventLivingActionPotionRemoved",
    testCategory,
    24364
  )
end

function me.TestCombatEventMajorArcaneProtectionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMajorArcaneProtectionPotionApplied",
    testCategory,
    28536
  )
end

function me.TestCombatEventMajorArcaneProtectionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMajorArcaneProtectionPotionRemoved",
    testCategory,
    28536
  )
end

function me.TestCombatEventMajorFireProtectionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMajorFireProtectionPotionApplied",
    testCategory,
    28511
  )
end

function me.TestCombatEventMajorFireProtectionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMajorFireProtectionPotionRemoved",
    testCategory,
    28511
  )
end

function me.TestCombatEventMajorFrostProtectionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMajorFrostProtectionPotionApplied",
    testCategory,
    28512
  )
end

function me.TestCombatEventMajorFrostProtectionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMajorFrostProtectionPotionRemoved",
    testCategory,
    28512
  )
end

function me.TestCombatEventMajorHolyProtectionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMajorHolyProtectionPotionApplied",
    testCategory,
    28538
  )
end

function me.TestCombatEventMajorHolyProtectionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMajorHolyProtectionPotionRemoved",
    testCategory,
    28538
  )
end

function me.TestCombatEventMajorNatureProtectionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMajorNatureProtectionPotionApplied",
    testCategory,
    28513
  )
end

function me.TestCombatEventMajorNatureProtectionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMajorNatureProtectionPotionRemoved",
    testCategory,
    28513
  )
end

function me.TestCombatEventMajorShadowProtectionPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMajorShadowProtectionPotionApplied",
    testCategory,
    28537
  )
end

function me.TestCombatEventMajorShadowProtectionPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMajorShadowProtectionPotionRemoved",
    testCategory,
    28537
  )
end

function me.TestCombatEventMightyRagePotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventMightyRagePotionApplied",
    testCategory,
    17528
  )
end

function me.TestCombatEventMightyRagePotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventMightyRagePotionRemoved",
    testCategory,
    17528
  )
end

function me.TestCombatEventRagePotionSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventRagePotionSuccess",
    testCategory,
    6612
  )
end

function me.TestCombatEventRestorativePotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventRestorativePotionApplied",
    testCategory,
    11359
  )
end

function me.TestCombatEventRestorativePotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventRestorativePotionRemoved",
    testCategory,
    11359
  )
end

function me.TestCombatEventSneakingPotionApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventSneakingPotionApplied",
    testCategory,
    28492
  )
end

function me.TestCombatEventSneakingPotionRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventSneakingPotionRemoved",
    testCategory,
    28492
  )
end

function me.TestCombatEventSuperHealingPotionSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSuperHealingPotionSuccess",
    testCategory,
    28495
  )
end

function me.TestCombatEventSuperManaPotionSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSuperManaPotionSuccess",
    testCategory,
    28555
  )
end

function me.TestCombatEventSuperRejuvenationPotionSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSuperRejuvenationPotionSuccess",
    testCategory,
    28517
  )
end

function me.TestCombatEventAdamantiteGrenadeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventAdamantiteGrenadeSuccess",
    testCategory,
    30217
  )
end

function me.TestCombatEventFelIronBombSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFelIronBombSuccess",
    testCategory,
    30216
  )
end

function me.TestCombatEventFrostGrenadeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFrostGrenadeSuccess",
    testCategory,
    39965
  )
end

function me.TestCombatEventSuperSapperChargeSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventSuperSapperChargeSuccess",
    testCategory,
    30486
  )
end

function me.TestCombatEventFelBlossomApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventFelBlossomApplied",
    testCategory,
    28527
  )
end

function me.TestCombatEventFelBlossomRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventFelBlossomRemoved",
    testCategory,
    28527
  )
end

function me.TestCombatEventNightmareSeedApplied()
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEventNightmareSeedApplied",
    testCategory,
    28726
  )
end

function me.TestCombatEventNightmareSeedRemoved()
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEventNightmareSeedRemoved",
    testCategory,
    28726
  )
end

function me.TestCombatEventThistleTeaSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventThistleTeaSuccess",
    testCategory,
    9512
  )
end


function me.TestCombatEventFirstAidRank1Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank1Success",
    testCategory,
    746
  )
end

function me.TestCombatEventFirstAidRank2Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank2Success",
    testCategory,
    1159
  )
end

function me.TestCombatEventFirstAidRank3Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank3Success",
    testCategory,
    3267
  )
end

function me.TestCombatEventFirstAidRank4Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank4Success",
    testCategory,
    3268
  )
end

function me.TestCombatEventFirstAidRank5Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank5Success",
    testCategory,
    7926
  )
end

function me.TestCombatEventFirstAidRank6Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank6Success",
    testCategory,
    7927
  )
end

function me.TestCombatEventFirstAidRank7Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank7Success",
    testCategory,
    24412
  )
end

function me.TestCombatEventFirstAidRank8Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank8Success",
    testCategory,
    23569
  )
end

function me.TestCombatEventFirstAidRank9Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank9Success",
    testCategory,
    10838
  )
end

function me.TestCombatEventFirstAidRank10Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank10Success",
    testCategory,
    10839
  )
end

function me.TestCombatEventFirstAidRank11Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank11Success",
    testCategory,
    24413
  )
end

function me.TestCombatEventFirstAidRank12Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank12Success",
    testCategory,
    23568
  )
end

function me.TestCombatEventFirstAidRank13Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank13Success",
    testCategory,
    18608
  )
end

function me.TestCombatEventFirstAidRank14Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank14Success",
    testCategory,
    18610
  )
end

function me.TestCombatEventFirstAidRank15Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank15Success",
    testCategory,
    24414
  )
end

function me.TestCombatEventFirstAidRank16Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank16Success",
    testCategory,
    23696
  )
end

function me.TestCombatEventFirstAidRank17Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank17Success",
    testCategory,
    23567
  )
end

function me.TestCombatEventFirstAidRank18Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank18Success",
    testCategory,
    27030
  )
end

function me.TestCombatEventFirstAidRank19Success()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventFirstAidRank19Success",
    testCategory,
    27031
  )
end

function me.TestCombatEventNetherweaveNetSuccess()
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEventNetherweaveNetSuccess",
    testCategory,
    31367
  )
end
