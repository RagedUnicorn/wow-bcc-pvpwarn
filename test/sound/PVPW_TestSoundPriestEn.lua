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
mod.testSoundPriestEn = me

me.tag = "TestSoundPriestEn"

local testGroupName = "SoundPriestEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAbolishDisease)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBindingHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundChastise)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConsumeMagic)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCureDisease)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDesperatePrayer)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDevouringPlague)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDispelMagic)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundElunesGrace)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownElunesGrace)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFearWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFearWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFeedback)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFeedback)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlashHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGreaterHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHexOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHolyFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInnerFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownInnerFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLesserHeal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLevitate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownLevitate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundManaBurn)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMassDispel)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMindBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMindControl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMindVision)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPowerWordFortitude)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPowerWordFortitude)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPowerWordShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPowerWordShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPrayerOfFortitude)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPrayerOfFortitude)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPrayerOfHealing)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPrayerOfMending)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPrayerOfShadowProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPrayerOfShadowProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPrayerOfSpirit)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPrayerOfSpirit)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPsychicScream)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRenew)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundResurrection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShadowProtection)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowWordDeath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowWordPain)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowfiend)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowguard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShadowguard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSmite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStarshards)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSymbolOfHope)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTouchOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownTouchOfWeakness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlackout)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCircleOfHealing)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDivineSpirit)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDivineSpirit)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHolyNova)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInnerFocus)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownInnerFocus)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMindFlay)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPainSuppression)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPainSuppression)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPowerInfusion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPowerInfusion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShadowform)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownShadowform)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSilence)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundVampiricEmbrace)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundVampiricTouch)
end

function me.TestSoundAbolishDisease()
  mod.testHelper.TestSoundSuccess(
    "TestSoundAbolishDisease",
    testCategory,
    "abolish_disease"
  )
end

function me.TestSoundBindingHeal()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBindingHeal",
    testCategory,
    "binding_heal"
  )
end

function me.TestSoundChastise()
  mod.testHelper.TestSoundSuccess(
    "TestSoundChastise",
    testCategory,
    "chastise"
  )
end

function me.TestSoundConsumeMagic()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConsumeMagic",
    testCategory,
    "consume_magic"
  )
end

function me.TestSoundCureDisease()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCureDisease",
    testCategory,
    "cure_disease"
  )
end

function me.TestSoundDesperatePrayer()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDesperatePrayer",
    testCategory,
    "desperate_prayer"
  )
end

function me.TestSoundDevouringPlague()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDevouringPlague",
    testCategory,
    "devouring_plague"
  )
end

function me.TestSoundDispelMagic()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDispelMagic",
    testCategory,
    "dispel_magic"
  )
end

function me.TestSoundElunesGrace()
  mod.testHelper.TestSoundApplied(
    "TestSoundElunesGrace",
    testCategory,
    "elunes_grace"
  )
end

function me.TestSoundDownElunesGrace()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownElunesGrace",
    testCategory,
    "elunes_grace"
  )
end

function me.TestSoundFearWard()
  mod.testHelper.TestSoundApplied(
    "TestSoundFearWard",
    testCategory,
    "fear_ward"
  )
end

function me.TestSoundDownFearWard()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFearWard",
    testCategory,
    "fear_ward"
  )
end

function me.TestSoundFeedback()
  mod.testHelper.TestSoundApplied(
    "TestSoundFeedback",
    testCategory,
    "feedback"
  )
end

function me.TestSoundDownFeedback()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFeedback",
    testCategory,
    "feedback"
  )
end

function me.TestSoundFlashHeal()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFlashHeal",
    testCategory,
    "flash_heal"
  )
end

function me.TestSoundGreaterHeal()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGreaterHeal",
    testCategory,
    "greater_heal"
  )
end

function me.TestSoundHeal()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHeal",
    testCategory,
    "heal"
  )
end

function me.TestSoundHexOfWeakness()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHexOfWeakness",
    testCategory,
    "hex_of_weakness"
  )
end

function me.TestSoundHolyFire()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHolyFire",
    testCategory,
    "holy_fire"
  )
end

function me.TestSoundInnerFire()
  mod.testHelper.TestSoundApplied(
    "TestSoundInnerFire",
    testCategory,
    "inner_fire"
  )
end

function me.TestSoundDownInnerFire()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownInnerFire",
    testCategory,
    "inner_fire"
  )
end

function me.TestSoundLesserHeal()
  mod.testHelper.TestSoundSuccess(
    "TestSoundLesserHeal",
    testCategory,
    "lesser_heal"
  )
end

function me.TestSoundLevitate()
  mod.testHelper.TestSoundApplied(
    "TestSoundLevitate",
    testCategory,
    "levitate"
  )
end

function me.TestSoundDownLevitate()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownLevitate",
    testCategory,
    "levitate"
  )
end

function me.TestSoundManaBurn()
  mod.testHelper.TestSoundSuccess(
    "TestSoundManaBurn",
    testCategory,
    "mana_burn"
  )
end

function me.TestSoundMassDispel()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMassDispel",
    testCategory,
    "mass_dispel"
  )
end

function me.TestSoundMindBlast()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMindBlast",
    testCategory,
    "mind_blast"
  )
end

function me.TestSoundMindControl()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMindControl",
    testCategory,
    "mind_control"
  )
end

function me.TestSoundMindVision()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMindVision",
    testCategory,
    "mind_vision"
  )
end

function me.TestSoundPowerWordFortitude()
  mod.testHelper.TestSoundApplied(
    "TestSoundPowerWordFortitude",
    testCategory,
    "power_word_fortitude"
  )
end

function me.TestSoundDownPowerWordFortitude()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPowerWordFortitude",
    testCategory,
    "power_word_fortitude"
  )
end

function me.TestSoundPowerWordShield()
  mod.testHelper.TestSoundApplied(
    "TestSoundPowerWordShield",
    testCategory,
    "power_word_shield"
  )
end

function me.TestSoundDownPowerWordShield()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPowerWordShield",
    testCategory,
    "power_word_shield"
  )
end

function me.TestSoundPrayerOfFortitude()
  mod.testHelper.TestSoundApplied(
    "TestSoundPrayerOfFortitude",
    testCategory,
    "prayer_of_fortitude"
  )
end

function me.TestSoundDownPrayerOfFortitude()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPrayerOfFortitude",
    testCategory,
    "prayer_of_fortitude"
  )
end

function me.TestSoundPrayerOfHealing()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPrayerOfHealing",
    testCategory,
    "prayer_of_healing"
  )
end

function me.TestSoundPrayerOfMending()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPrayerOfMending",
    testCategory,
    "prayer_of_mending"
  )
end

function me.TestSoundPrayerOfShadowProtection()
  mod.testHelper.TestSoundApplied(
    "TestSoundPrayerOfShadowProtection",
    testCategory,
    "prayer_of_shadow_protection"
  )
end

function me.TestSoundDownPrayerOfShadowProtection()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPrayerOfShadowProtection",
    testCategory,
    "prayer_of_shadow_protection"
  )
end

function me.TestSoundPrayerOfSpirit()
  mod.testHelper.TestSoundApplied(
    "TestSoundPrayerOfSpirit",
    testCategory,
    "prayer_of_spirit"
  )
end

function me.TestSoundDownPrayerOfSpirit()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPrayerOfSpirit",
    testCategory,
    "prayer_of_spirit"
  )
end

function me.TestSoundPsychicScream()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPsychicScream",
    testCategory,
    "psychic_scream"
  )
end

function me.TestSoundRenew()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRenew",
    testCategory,
    "renew"
  )
end

function me.TestSoundResurrection()
  mod.testHelper.TestSoundSuccess(
    "TestSoundResurrection",
    testCategory,
    "resurrection"
  )
end

function me.TestSoundShadowProtection()
  mod.testHelper.TestSoundApplied(
    "TestSoundShadowProtection",
    testCategory,
    "shadow_protection"
  )
end

function me.TestSoundDownShadowProtection()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShadowProtection",
    testCategory,
    "shadow_protection"
  )
end

function me.TestSoundShadowWordDeath()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowWordDeath",
    testCategory,
    "shadow_word_death"
  )
end

function me.TestSoundShadowWordPain()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowWordPain",
    testCategory,
    "shadow_word_pain"
  )
end

function me.TestSoundShadowfiend()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShadowfiend",
    testCategory,
    "shadowfiend"
  )
end

function me.TestSoundShadowguard()
  mod.testHelper.TestSoundApplied(
    "TestSoundShadowguard",
    testCategory,
    "shadowguard"
  )
end

function me.TestSoundDownShadowguard()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShadowguard",
    testCategory,
    "shadowguard"
  )
end

function me.TestSoundSmite()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSmite",
    testCategory,
    "smite"
  )
end

function me.TestSoundStarshards()
  mod.testHelper.TestSoundSuccess(
    "TestSoundStarshards",
    testCategory,
    "starshards"
  )
end

function me.TestSoundSymbolOfHope()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSymbolOfHope",
    testCategory,
    "symbol_of_hope"
  )
end

function me.TestSoundTouchOfWeakness()
  mod.testHelper.TestSoundApplied(
    "TestSoundTouchOfWeakness",
    testCategory,
    "touch_of_weakness"
  )
end

function me.TestSoundDownTouchOfWeakness()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownTouchOfWeakness",
    testCategory,
    "touch_of_weakness"
  )
end

function me.TestSoundBlackout()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBlackout",
    testCategory,
    "blackout"
  )
end

function me.TestSoundCircleOfHealing()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCircleOfHealing",
    testCategory,
    "circle_of_healing"
  )
end

function me.TestSoundDivineSpirit()
  mod.testHelper.TestSoundApplied(
    "TestSoundDivineSpirit",
    testCategory,
    "divine_spirit"
  )
end

function me.TestSoundDownDivineSpirit()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDivineSpirit",
    testCategory,
    "divine_spirit"
  )
end

function me.TestSoundHolyNova()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHolyNova",
    testCategory,
    "holy_nova"
  )
end

function me.TestSoundInnerFocus()
  mod.testHelper.TestSoundApplied(
    "TestSoundInnerFocus",
    testCategory,
    "inner_focus"
  )
end

function me.TestSoundDownInnerFocus()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownInnerFocus",
    testCategory,
    "inner_focus"
  )
end

function me.TestSoundMindFlay()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMindFlay",
    testCategory,
    "mind_flay"
  )
end

function me.TestSoundPainSuppression()
  mod.testHelper.TestSoundApplied(
    "TestSoundPainSuppression",
    testCategory,
    "pain_suppression"
  )
end

function me.TestSoundDownPainSuppression()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPainSuppression",
    testCategory,
    "pain_suppression"
  )
end

function me.TestSoundPowerInfusion()
  mod.testHelper.TestSoundApplied(
    "TestSoundPowerInfusion",
    testCategory,
    "power_infusion"
  )
end

function me.TestSoundDownPowerInfusion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPowerInfusion",
    testCategory,
    "power_infusion"
  )
end

function me.TestSoundShadowform()
  mod.testHelper.TestSoundApplied(
    "TestSoundShadowform",
    testCategory,
    "shadowform"
  )
end

function me.TestSoundDownShadowform()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownShadowform",
    testCategory,
    "shadowform"
  )
end

function me.TestSoundSilence()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSilence",
    testCategory,
    "silence"
  )
end

function me.TestSoundVampiricEmbrace()
  mod.testHelper.TestSoundSuccess(
    "TestSoundVampiricEmbrace",
    testCategory,
    "vampiric_embrace"
  )
end

function me.TestSoundVampiricTouch()
  mod.testHelper.TestSoundSuccess(
    "TestSoundVampiricTouch",
    testCategory,
    "vampiric_touch"
  )
end
