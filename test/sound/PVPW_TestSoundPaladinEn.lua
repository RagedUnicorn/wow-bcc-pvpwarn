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
mod.testSoundPaladinEn = me

me.tag = "TestSoundPaladinEn"

local testGroupName = "SoundPaladinEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PALADIN.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAvengingWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAvengingWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfFreedom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfFreedom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfLight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfLight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfMight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfMight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfSacrifice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfSacrifice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfWisdom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfWisdom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCleanse)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConcentrationAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConsecration)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCrusaderAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDevotionAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDivineIntervention)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDivineProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDivineProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDivineShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDivineShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFireResistanceAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlashOfLight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostResistanceAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGreaterBlessingOfKings)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownGreaterBlessingOfKings)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGreaterBlessingOfLight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownGreaterBlessingOfLight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGreaterBlessingOfMight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownGreaterBlessingOfMight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGreaterBlessingOfWisdom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownGreaterBlessingOfWisdom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHammerOfJustice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHammerOfWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHolyLight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundJudgement)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLayOnHands)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPurify)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRedemption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRetributionAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfBlood)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfCorruption)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfJustice)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfLight)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfRighteousness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfTheCrusader)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfTheMartyr)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfVengeance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfWisdom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowResistanceAura)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAvengersShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfKings)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfKings)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlessingOfSanctuary)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBlessingOfSanctuary)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCrusaderStrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDivineFavor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHolyShock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRepentance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSealOfCommand)
end

function me.TestSoundAvengingWrath()
  mod.testHelper.TestSoundApplied(
    "TestSoundAvengingWrath",
    testCategory,
    "avenging_wrath"
  )
end

function me.TestSoundDownAvengingWrath()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAvengingWrath",
    testCategory,
    "avenging_wrath"
  )
end

function me.TestSoundBlessingOfFreedom()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfFreedom",
    testCategory,
    "blessing_of_freedom"
  )
end

function me.TestSoundDownBlessingOfFreedom()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfFreedom",
    testCategory,
    "blessing_of_freedom"
  )
end

function me.TestSoundBlessingOfLight()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfLight",
    testCategory,
    "blessing_of_light"
  )
end

function me.TestSoundDownBlessingOfLight()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfLight",
    testCategory,
    "blessing_of_light"
  )
end

function me.TestSoundBlessingOfMight()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfMight",
    testCategory,
    "blessing_of_might"
  )
end

function me.TestSoundDownBlessingOfMight()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfMight",
    testCategory,
    "blessing_of_might"
  )
end

function me.TestSoundBlessingOfProtection()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfProtection",
    testCategory,
    "blessing_of_protection"
  )
end

function me.TestSoundDownBlessingOfProtection()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfProtection",
    testCategory,
    "blessing_of_protection"
  )
end

function me.TestSoundBlessingOfSacrifice()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfSacrifice",
    testCategory,
    "blessing_of_sacrifice"
  )
end

function me.TestSoundDownBlessingOfSacrifice()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfSacrifice",
    testCategory,
    "blessing_of_sacrifice"
  )
end

function me.TestSoundBlessingOfWisdom()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfWisdom",
    testCategory,
    "blessing_of_wisdom"
  )
end

function me.TestSoundDownBlessingOfWisdom()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfWisdom",
    testCategory,
    "blessing_of_wisdom"
  )
end

function me.TestSoundCleanse()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCleanse",
    testCategory,
    "cleanse"
  )
end

function me.TestSoundConcentrationAura()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConcentrationAura",
    testCategory,
    "concentration_aura"
  )
end

function me.TestSoundConsecration()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConsecration",
    testCategory,
    "consecration"
  )
end

function me.TestSoundCrusaderAura()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCrusaderAura",
    testCategory,
    "crusader_aura"
  )
end

function me.TestSoundDevotionAura()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDevotionAura",
    testCategory,
    "devotion_aura"
  )
end

function me.TestSoundDivineIntervention()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDivineIntervention",
    testCategory,
    "divine_intervention"
  )
end

function me.TestSoundDivineProtection()
  mod.testHelper.TestSoundApplied(
    "TestSoundDivineProtection",
    testCategory,
    "divine_protection"
  )
end

function me.TestSoundDownDivineProtection()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDivineProtection",
    testCategory,
    "divine_protection"
  )
end

function me.TestSoundDivineShield()
  mod.testHelper.TestSoundApplied(
    "TestSoundDivineShield",
    testCategory,
    "divine_shield"
  )
end

function me.TestSoundDownDivineShield()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDivineShield",
    testCategory,
    "divine_shield"
  )
end

function me.TestSoundFireResistanceAura()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFireResistanceAura",
    testCategory,
    "fire_resistance_aura"
  )
end

function me.TestSoundFlashOfLight()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFlashOfLight",
    testCategory,
    "flash_of_light"
  )
end

function me.TestSoundFrostResistanceAura()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostResistanceAura",
    testCategory,
    "frost_resistance_aura"
  )
end

function me.TestSoundGreaterBlessingOfKings()
  mod.testHelper.TestSoundApplied(
    "TestSoundGreaterBlessingOfKings",
    testCategory,
    "greater_blessing_of_kings"
  )
end

function me.TestSoundDownGreaterBlessingOfKings()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownGreaterBlessingOfKings",
    testCategory,
    "greater_blessing_of_kings"
  )
end

function me.TestSoundGreaterBlessingOfLight()
  mod.testHelper.TestSoundApplied(
    "TestSoundGreaterBlessingOfLight",
    testCategory,
    "greater_blessing_of_light"
  )
end

function me.TestSoundDownGreaterBlessingOfLight()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownGreaterBlessingOfLight",
    testCategory,
    "greater_blessing_of_light"
  )
end

function me.TestSoundGreaterBlessingOfMight()
  mod.testHelper.TestSoundApplied(
    "TestSoundGreaterBlessingOfMight",
    testCategory,
    "greater_blessing_of_might"
  )
end

function me.TestSoundDownGreaterBlessingOfMight()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownGreaterBlessingOfMight",
    testCategory,
    "greater_blessing_of_might"
  )
end

function me.TestSoundGreaterBlessingOfWisdom()
  mod.testHelper.TestSoundApplied(
    "TestSoundGreaterBlessingOfWisdom",
    testCategory,
    "greater_blessing_of_wisdom"
  )
end

function me.TestSoundDownGreaterBlessingOfWisdom()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownGreaterBlessingOfWisdom",
    testCategory,
    "greater_blessing_of_wisdom"
  )
end

function me.TestSoundHammerOfJustice()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHammerOfJustice",
    testCategory,
    "hammer_of_justice"
  )
end

function me.TestSoundHammerOfWrath()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHammerOfWrath",
    testCategory,
    "hammer_of_wrath"
  )
end

function me.TestSoundHolyLight()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHolyLight",
    testCategory,
    "holy_light"
  )
end

function me.TestSoundJudgement()
  mod.testHelper.TestSoundSuccess(
    "TestSoundJudgement",
    testCategory,
    "judgement"
  )
end

function me.TestSoundLayOnHands()
  mod.testHelper.TestSoundSuccess(
    "TestSoundLayOnHands",
    testCategory,
    "lay_on_hands"
  )
end

function me.TestSoundPurify()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPurify",
    testCategory,
    "purify"
  )
end

function me.TestSoundRedemption()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRedemption",
    testCategory,
    "redemption"
  )
end

function me.TestSoundRetributionAura()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRetributionAura",
    testCategory,
    "retribution_aura"
  )
end

function me.TestSoundSealOfBlood()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfBlood",
    testCategory,
    "seal_of_blood"
  )
end

function me.TestSoundSealOfCorruption()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfCorruption",
    testCategory,
    "seal_of_corruption"
  )
end

function me.TestSoundSealOfJustice()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfJustice",
    testCategory,
    "seal_of_justice"
  )
end

function me.TestSoundSealOfLight()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfLight",
    testCategory,
    "seal_of_light"
  )
end

function me.TestSoundSealOfRighteousness()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfRighteousness",
    testCategory,
    "seal_of_righteousness"
  )
end

function me.TestSoundSealOfTheCrusader()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfTheCrusader",
    testCategory,
    "seal_of_the_crusader"
  )
end

function me.TestSoundSealOfTheMartyr()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfTheMartyr",
    testCategory,
    "seal_of_the_martyr"
  )
end

function me.TestSoundSealOfVengeance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfVengeance",
    testCategory,
    "seal_of_vengeance"
  )
end

function me.TestSoundSealOfWisdom()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfWisdom",
    testCategory,
    "seal_of_wisdom"
  )
end

function me.TestSoundShadowResistanceAura()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowResistanceAura",
    testCategory,
    "shadow_resistance_aura"
  )
end

function me.TestSoundAvengersShield()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAvengersShield",
    testCategory,
    "avengers_shield"
  )
end

function me.TestSoundBlessingOfKings()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfKings",
    testCategory,
    "blessing_of_kings"
  )
end

function me.TestSoundDownBlessingOfKings()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfKings",
    testCategory,
    "blessing_of_kings"
  )
end

function me.TestSoundBlessingOfSanctuary()
  mod.testHelper.TestSoundApplied(
    "TestSoundBlessingOfSanctuary",
    testCategory,
    "blessing_of_sanctuary"
  )
end

function me.TestSoundDownBlessingOfSanctuary()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBlessingOfSanctuary",
    testCategory,
    "blessing_of_sanctuary"
  )
end

function me.TestSoundCrusaderStrike()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCrusaderStrike",
    testCategory,
    "crusader_strike"
  )
end

function me.TestSoundDivineFavor()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDivineFavor",
    testCategory,
    "divine_favor"
  )
end

function me.TestSoundHolyShock()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHolyShock",
    testCategory,
    "holy_shock"
  )
end

function me.TestSoundRepentance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRepentance",
    testCategory,
    "repentance"
  )
end

function me.TestSoundSealOfCommand()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSealOfCommand",
    testCategory,
    "seal_of_command"
  )
end
