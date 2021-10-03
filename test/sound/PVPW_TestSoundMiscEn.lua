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
mod.testSoundMiscEn = me

me.tag = "TestSoundMiscEn"

local testGroupName = "SoundMiscEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MISC.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCatseyeElixir)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownCatseyeElixir)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDestructionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDestructionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFreeActionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFreeActionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHastePotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownHastePotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHeroicPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownHeroicPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInsaneStrengthPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownInsaneStrengthPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInvisibilityPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownInvisibilityPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIronshieldPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownIronshieldPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLesserInvisibilityPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownLesserInvisibilityPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLivingActionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownLivingActionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMajorArcaneProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMajorArcaneProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMajorFireProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMajorFireProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMajorFrostProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMajorFrostProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMajorHolyProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMajorHolyProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMajorNatureProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMajorNatureProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMajorShadowProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMajorShadowProtectionPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMightyRagePotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMightyRagePotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRagePotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRestorativePotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownRestorativePotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSneakingPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSneakingPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSuperHealingPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSuperManaPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSuperRejuvenationPotion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAdamantiteGrenade)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFelIronBomb)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostGrenade)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSuperSapperCharge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFelBlossom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFelBlossom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNightmareSeed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNightmareSeed)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundThistleTea)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFirstAid)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNetherweaveNet)
end

function me.TestSoundCatseyeElixir()
  mod.testHelper.TestSoundApplied(
    "TestSoundCatseyeElixir",
    testCategory,
    "catseye_elixir"
  )
end

function me.TestSoundDownCatseyeElixir()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownCatseyeElixir",
    testCategory,
    "catseye_elixir"
  )
end

function me.TestSoundDestructionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundDestructionPotion",
    testCategory,
    "destruction_potion"
  )
end

function me.TestSoundDownDestructionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDestructionPotion",
    testCategory,
    "destruction_potion"
  )
end

function me.TestSoundFreeActionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundFreeActionPotion",
    testCategory,
    "free_action_potion"
  )
end

function me.TestSoundDownFreeActionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFreeActionPotion",
    testCategory,
    "free_action_potion"
  )
end

function me.TestSoundHastePotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundHastePotion",
    testCategory,
    "haste_potion"
  )
end

function me.TestSoundDownHastePotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownHastePotion",
    testCategory,
    "haste_potion"
  )
end

function me.TestSoundHeroicPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundHeroicPotion",
    testCategory,
    "heroic_potion"
  )
end

function me.TestSoundDownHeroicPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownHeroicPotion",
    testCategory,
    "heroic_potion"
  )
end

function me.TestSoundInsaneStrengthPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundInsaneStrengthPotion",
    testCategory,
    "insane_strength_potion"
  )
end

function me.TestSoundDownInsaneStrengthPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownInsaneStrengthPotion",
    testCategory,
    "insane_strength_potion"
  )
end

function me.TestSoundInvisibilityPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundInvisibilityPotion",
    testCategory,
    "invisibility_potion"
  )
end

function me.TestSoundDownInvisibilityPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownInvisibilityPotion",
    testCategory,
    "invisibility_potion"
  )
end

function me.TestSoundIronshieldPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundIronshieldPotion",
    testCategory,
    "ironshield_potion"
  )
end

function me.TestSoundDownIronshieldPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownIronshieldPotion",
    testCategory,
    "ironshield_potion"
  )
end

function me.TestSoundLesserInvisibilityPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundLesserInvisibilityPotion",
    testCategory,
    "lesser_invisibility_potion"
  )
end

function me.TestSoundDownLesserInvisibilityPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownLesserInvisibilityPotion",
    testCategory,
    "lesser_invisibility_potion"
  )
end

function me.TestSoundLivingActionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundLivingActionPotion",
    testCategory,
    "living_action_potion"
  )
end

function me.TestSoundDownLivingActionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownLivingActionPotion",
    testCategory,
    "living_action_potion"
  )
end

function me.TestSoundMajorArcaneProtectionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundMajorArcaneProtectionPotion",
    testCategory,
    "major_arcane_protection_potion"
  )
end

function me.TestSoundDownMajorArcaneProtectionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMajorArcaneProtectionPotion",
    testCategory,
    "major_arcane_protection_potion"
  )
end

function me.TestSoundMajorFireProtectionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundMajorFireProtectionPotion",
    testCategory,
    "major_fire_protection_potion"
  )
end

function me.TestSoundDownMajorFireProtectionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMajorFireProtectionPotion",
    testCategory,
    "major_fire_protection_potion"
  )
end

function me.TestSoundMajorFrostProtectionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundMajorFrostProtectionPotion",
    testCategory,
    "major_frost_protection_potion"
  )
end

function me.TestSoundDownMajorFrostProtectionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMajorFrostProtectionPotion",
    testCategory,
    "major_frost_protection_potion"
  )
end

function me.TestSoundMajorHolyProtectionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundMajorHolyProtectionPotion",
    testCategory,
    "major_holy_protection_potion"
  )
end

function me.TestSoundDownMajorHolyProtectionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMajorHolyProtectionPotion",
    testCategory,
    "major_holy_protection_potion"
  )
end

function me.TestSoundMajorNatureProtectionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundMajorNatureProtectionPotion",
    testCategory,
    "major_nature_protection_potion"
  )
end

function me.TestSoundDownMajorNatureProtectionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMajorNatureProtectionPotion",
    testCategory,
    "major_nature_protection_potion"
  )
end

function me.TestSoundMajorShadowProtectionPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundMajorShadowProtectionPotion",
    testCategory,
    "major_shadow_protection_potion"
  )
end

function me.TestSoundDownMajorShadowProtectionPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMajorShadowProtectionPotion",
    testCategory,
    "major_shadow_protection_potion"
  )
end

function me.TestSoundMightyRagePotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundMightyRagePotion",
    testCategory,
    "mighty_rage_potion"
  )
end

function me.TestSoundDownMightyRagePotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMightyRagePotion",
    testCategory,
    "mighty_rage_potion"
  )
end

function me.TestSoundRagePotion()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRagePotion",
    testCategory,
    "rage_potion"
  )
end

function me.TestSoundRestorativePotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundRestorativePotion",
    testCategory,
    "restorative_potion"
  )
end

function me.TestSoundDownRestorativePotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownRestorativePotion",
    testCategory,
    "restorative_potion"
  )
end

function me.TestSoundSneakingPotion()
  mod.testHelper.TestSoundApplied(
    "TestSoundSneakingPotion",
    testCategory,
    "sneaking_potion"
  )
end

function me.TestSoundDownSneakingPotion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSneakingPotion",
    testCategory,
    "sneaking_potion"
  )
end

function me.TestSoundSuperHealingPotion()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSuperHealingPotion",
    testCategory,
    "super_healing_potion"
  )
end

function me.TestSoundSuperManaPotion()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSuperManaPotion",
    testCategory,
    "super_mana_potion"
  )
end

function me.TestSoundSuperRejuvenationPotion()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSuperRejuvenationPotion",
    testCategory,
    "super_rejuvenation_potion"
  )
end

function me.TestSoundAdamantiteGrenade()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAdamantiteGrenade",
    testCategory,
    "adamantite_grenade"
  )
end

function me.TestSoundFelIronBomb()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFelIronBomb",
    testCategory,
    "fel_iron_bomb"
  )
end

function me.TestSoundFrostGrenade()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostGrenade",
    testCategory,
    "frost_grenade"
  )
end

function me.TestSoundSuperSapperCharge()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSuperSapperCharge",
    testCategory,
    "super_sapper_charge"
  )
end

function me.TestSoundFelBlossom()
  mod.testHelper.TestSoundApplied(
    "TestSoundFelBlossom",
    testCategory,
    "fel_blossom"
  )
end

function me.TestSoundDownFelBlossom()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFelBlossom",
    testCategory,
    "fel_blossom"
  )
end

function me.TestSoundNightmareSeed()
  mod.testHelper.TestSoundApplied(
    "TestSoundNightmareSeed",
    testCategory,
    "nightmare_seed"
  )
end

function me.TestSoundDownNightmareSeed()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNightmareSeed",
    testCategory,
    "nightmare_seed"
  )
end

function me.TestSoundThistleTea()
  mod.testHelper.TestSoundSuccess(
    "TestSoundThistleTea",
    testCategory,
    "thistle_tea"
  )
end

function me.TestSoundFirstAid()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFirstAid",
    testCategory,
    "first_aid"
  )
end


function me.TestSoundNetherweaveNet()
  mod.testHelper.TestSoundSuccess(
    "TestSoundNetherweaveNet",
    testCategory,
    "netherweave_net"
  )
end
