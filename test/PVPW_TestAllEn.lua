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

--[[
  Run all tests:
    /run rgpvpw.testAllEn.TestAllEn()
]]--

local mod = rgpvpw
local me = {}
mod.testAllEn = me

me.tag = "TestAllEn"

local testGroupName = "TestAllEn"

function me.TestAllEn()
  local language = mod.testHelper.GetLanguage("enUS")

  mod.testReporter.StartTestGroup(testGroupName)

  me.TestAllSoundTestsPresent(language)
  me.TestAllSoundDownTestsPresent(language)
  me.TestAllSoundCastTestsPresent(language)
  me.TestAllSoundSelfAvoidTestsPresent(language)
  me.TestAllSoundEnemyAvoidTestsPresent(language)
  me.TestAllCombatEventsPresent()
  me.TestAllCombatEventsCastPresent()
  me.TestAllCombatEventsSelfAvoidPresent()
  me.TestAllCombatEventsEnemyAvoidPresent()

  me.TestAllSoundEn()
  me.TestAllSoundCastEn()
  me.TestAllSoundSelfAvoidEn()
  me.TestAllSoundEnemyAvoidEn()
  me.TestAllCombatEvents()
  me.TestAllCombatEventsCast()
  me.TestAllCombatEventsSelfAvoid()
  me.TestAllCombatEventsEnemyAvoid()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.TestAllSoundTestsPresent(language)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.DRUID)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.HUNTER)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.MAGE)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.PALADIN)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.PRIEST)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.ROGUE)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.SHAMAN)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.WARLOCK)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.WARRIOR)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.RACIALS)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.ITEMS)
  mod.testSound.ShouldHaveSoundTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.MISC)
end

function me.TestAllSoundDownTestsPresent(language)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.DRUID)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.HUNTER)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.MAGE)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.PALADIN)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.PRIEST)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.ROGUE)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.SHAMAN)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.WARLOCK)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.WARRIOR)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.RACIALS)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.ITEMS)
  mod.testSound.ShouldHaveSoundDownTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.MISC)
end

function me.TestAllSoundCastTestsPresent(language)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.DRUID)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.HUNTER)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.MAGE)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.PALADIN)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.PRIEST)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.ROGUE)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.SHAMAN)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.WARLOCK)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.WARRIOR)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.RACIALS)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.ITEMS)
  mod.testSound.ShouldHaveSoundCastTestForAllSpells(language, RGPVPW_CONSTANTS.CATEGORIES.MISC)
end

function me.TestAllSoundSelfAvoidTestsPresent(language)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.DRUID, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.HUNTER, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.MAGE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.PALADIN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.PRIEST, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.ROGUE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.SHAMAN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.WARLOCK, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.WARRIOR, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.RACIALS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.ITEMS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.MISC, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
end

function me.TestAllSoundEnemyAvoidTestsPresent(language)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.DRUID, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.HUNTER, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.MAGE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.PALADIN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.PRIEST, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.ROGUE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.SHAMAN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.WARLOCK, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.WARRIOR, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.RACIALS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.ITEMS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testSound.ShouldHaveSoundAvoidTestForAllSpells(
    language, RGPVPW_CONSTANTS.CATEGORIES.MISC, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
end


function me.TestAllCombatEventsPresent()
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.DRUID)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.HUNTER)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.MAGE)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.PALADIN)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.PRIEST)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.ROGUE)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.SHAMAN)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.WARLOCK)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.WARRIOR)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.RACIALS)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.ITEMS)
  mod.testCombatEvent.ShouldHaveCombatEventTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.MISC)
end

function me.TestAllCombatEventsCastPresent()
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.DRUID)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.HUNTER)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.MAGE)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.PALADIN)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.PRIEST)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.ROGUE)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.SHAMAN)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.WARLOCK)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.WARRIOR)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.RACIALS)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.ITEMS)
  mod.testCombatEvent.ShouldHaveCombatEventCastTestForAllSpells(RGPVPW_CONSTANTS.CATEGORIES.MISC)
end

function me.TestAllCombatEventsSelfAvoidPresent()
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.DRUID, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.HUNTER, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.MAGE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.PALADIN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.PRIEST, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.ROGUE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.SHAMAN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.WARLOCK, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.WARRIOR, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.RACIALS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.ITEMS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.MISC, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
end

function me.TestAllCombatEventsEnemyAvoidPresent()
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.DRUID, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.HUNTER, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.MAGE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.PALADIN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.PRIEST, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.ROGUE, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.SHAMAN, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.WARLOCK, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.WARRIOR, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.RACIALS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.ITEMS, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
  mod.testCombatEvent.ShouldHaveCombatEventAvoidTestForAllSpells(
    RGPVPW_CONSTANTS.CATEGORIES.MISC, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)
end

function me.TestAllSoundEn()
  mod.testSoundWarriorEn.CollectTestCases()
  mod.testSoundPriestEn.CollectTestCases()
  mod.testSoundRogueEn.CollectTestCases()
  mod.testSoundMageEn.CollectTestCases()
  mod.testSoundHunterEn.CollectTestCases()
  mod.testSoundWarlockEn.CollectTestCases()
  mod.testSoundPaladinEn.CollectTestCases()
  mod.testSoundDruidEn.CollectTestCases()
  mod.testSoundShamanEn.CollectTestCases()
  mod.testSoundRacialsEn.CollectTestCases()
  mod.testSoundItemsEn.CollectTestCases()
  mod.testSoundMiscEn.CollectTestCases()
end

function me.TestAllSoundCastEn()
  mod.testSoundCastWarriorEn.CollectTestCases()
  mod.testSoundCastPriestEn.CollectTestCases()
  mod.testSoundCastRogueEn.CollectTestCases()
  mod.testSoundCastMageEn.CollectTestCases()
  mod.testSoundCastHunterEn.CollectTestCases()
  mod.testSoundCastWarlockEn.CollectTestCases()
  mod.testSoundCastPaladinEn.CollectTestCases()
  mod.testSoundCastDruidEn.CollectTestCases()
  mod.testSoundCastShamanEn.CollectTestCases()
end

function me.TestAllSoundSelfAvoidEn()
  mod.testSoundSelfAvoidWarriorEn.CollectTestCases()
  mod.testSoundSelfAvoidPriestEn.CollectTestCases()
  mod.testSoundSelfAvoidRogueEn.CollectTestCases()
  mod.testSoundSelfAvoidMageEn.CollectTestCases()
  mod.testSoundSelfAvoidHunterEn.CollectTestCases()
  mod.testSoundSelfAvoidWarlockEn.CollectTestCases()
  mod.testSoundSelfAvoidPaladinEn.CollectTestCases()
  mod.testSoundSelfAvoidDruidEn.CollectTestCases()
  mod.testSoundSelfAvoidShamanEn.CollectTestCases()
end

function me.TestAllSoundEnemyAvoidEn()
  mod.testSoundEnemyAvoidWarriorEn.CollectTestCases()
  mod.testSoundEnemyAvoidPriestEn.CollectTestCases()
  mod.testSoundEnemyAvoidRogueEn.CollectTestCases()
  mod.testSoundEnemyAvoidMageEn.CollectTestCases()
  mod.testSoundEnemyAvoidHunterEn.CollectTestCases()
  mod.testSoundEnemyAvoidWarlockEn.CollectTestCases()
  mod.testSoundEnemyAvoidPaladinEn.CollectTestCases()
  mod.testSoundEnemyAvoidDruidEn.CollectTestCases()
  mod.testSoundEnemyAvoidShamanEn.CollectTestCases()
end

function me.TestAllCombatEvents()
  mod.testCombatEventsWarrior.CollectTestCases()
  mod.testCombatEventsPriest.CollectTestCases()
  mod.testCombatEventsRogue.CollectTestCases()
  mod.testCombatEventsMage.CollectTestCases()
  mod.testCombatEventsHunter.CollectTestCases()
  mod.testCombatEventsWarlock.CollectTestCases()
  mod.testCombatEventsPaladin.CollectTestCases()
  mod.testCombatEventsDruid.CollectTestCases()
  mod.testCombatEventsShaman.CollectTestCases()
  mod.testCombatEventsRacials.CollectTestCases()
  mod.testCombatEventsItems.CollectTestCases()
  mod.testCombatEventsMisc.CollectTestCases()
end

function me.TestAllCombatEventsCast()
  mod.testCombatEventsCastWarrior.CollectTestCases()
  mod.testCombatEventsCastPriest.CollectTestCases()
  mod.testCombatEventsCastRogue.CollectTestCases()
  mod.testCombatEventsCastMage.CollectTestCases()
  mod.testCombatEventsCastHunter.CollectTestCases()
  mod.testCombatEventsCastWarlock.CollectTestCases()
  mod.testCombatEventsCastPaladin.CollectTestCases()
  mod.testCombatEventsCastDruid.CollectTestCases()
  mod.testCombatEventsCastShaman.CollectTestCases()
end

function me.TestAllCombatEventsSelfAvoid()
  mod.testCombatEventsSelfAvoidWarrior.CollectTestCases()
  mod.testCombatEventsSelfAvoidPriest.CollectTestCases()
  mod.testCombatEventsSelfAvoidRogue.CollectTestCases()
  mod.testCombatEventsSelfAvoidMage.CollectTestCases()
  mod.testCombatEventsSelfAvoidHunter.CollectTestCases()
  mod.testCombatEventsSelfAvoidWarlock.CollectTestCases()
  mod.testCombatEventsSelfAvoidPaladin.CollectTestCases()
  mod.testCombatEventsSelfAvoidDruid.CollectTestCases()
  mod.testCombatEventsSelfAvoidShaman.CollectTestCases()
end

function me.TestAllCombatEventsEnemyAvoid()
  mod.testCombatEventsEnemyAvoidWarrior.CollectTestCases()
  mod.testCombatEventsEnemyAvoidPriest.CollectTestCases()
  mod.testCombatEventsEnemyAvoidRogue.CollectTestCases()
  mod.testCombatEventsEnemyAvoidMage.CollectTestCases()
  mod.testCombatEventsEnemyAvoidHunter.CollectTestCases()
  mod.testCombatEventsEnemyAvoidWarlock.CollectTestCases()
  mod.testCombatEventsEnemyAvoidPaladin.CollectTestCases()
  mod.testCombatEventsEnemyAvoidDruid.CollectTestCases()
  mod.testCombatEventsEnemyAvoidShaman.CollectTestCases()
end
