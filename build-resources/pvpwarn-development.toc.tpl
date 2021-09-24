## Interface: ${addon.interface}
## Title: ${addon.name}
## Author: ${addon.author}
## Notes: ${addon.description}
## Version: ${addon.tag.version}
## SavedVariablesPerCharacter: ${addon.savedVariablesPerCharacter}

# constant values
code/PVPW_Constants.lua
# environment variables
code/PVPW_Environment.lua

# localization
localization/enUS.lua
localization/deDE.lua

# code
code/PVPW_Core.lua
code/PVPW_Logger.lua
code/PVPW_Filter.lua
code/PVPW_Ticker.lua
code/PVPW_Warn.lua
code/PVPW_Sound.lua
code/PVPW_Visual.lua
code/PVPW_CombatLog.lua
code/PVPW_SpellMap.lua
code/PVPW_SpellMetaMap.lua
code/PVPW_SpellAvoidMap.lua
code/PVPW_Common.lua
code/PVPW_Target.lua
code/PVPW_CombatState.lua
code/PVPW_Configuration.lua
code/PVPW_SpellConfiguration.lua
code/PVPW_Cmd.lua
code/PVPW_Tooltip.lua

# profiles
profiles/PVPW_Profile.lua
profiles/PVPW_DruidProfile.lua
profiles/PVPW_HunterProfile.lua
profiles/PVPW_MageProfile.lua
profiles/PVPW_PaladinProfile.lua
profiles/PVPW_PriestProfile.lua
profiles/PVPW_RogueProfile.lua
profiles/PVPW_ShamanProfile.lua
profiles/PVPW_WarlockProfile.lua
profiles/PVPW_WarriorProfile.lua

# debug
code/PVPW_Debug.lua

# custom blizzard dropdown impl
libs/LibUiDropDownMenu/LibUiDropDownMenu.lua
libs/LibUiDropDownMenu/LibUiDropDownMenu.xml
libs/LibUiDropDownMenu/LibUiDropDownMenuTemplates.lua
libs/LibUiDropDownMenu/LibUiDropDownMenuTemplates.xml

# gui
gui/PVPW_Frame.xml
gui/PVPW_AddonConfiguration.lua
gui/PVPW_AboutContent.lua
gui/PVPW_GeneralMenu.lua
gui/PVPW_ProfileMenu.lua
gui/PVPW_CategoryMenu.lua
gui/PVPW_CategoryMenuSpellsTab.lua
gui/PVPW_CategoryMenuAvoidTab.lua
gui/PVPW_EnemyAvoidMenu.lua
gui/PVPW_TargetFrame.lua
gui/PVPW_GuiHelper.lua
gui/PVPW_SpellStateHelper.lua

# test
test/PVPW_TestReporter.lua
test/PVPW_TestHelper.lua

# testbase
test/PVPW_TestSound.lua
test/PVPW_TestCombatEvent.lua

# druid
test/PVPW_TestSoundDruidEn.lua
test/PVPW_TestSoundSelfAvoidDruidEn.lua
test/PVPW_TestSoundEnemyAvoidDruidEn.lua
test/PVPW_TestCombatEventsDruid.lua
test/PVPW_TestCombatEventsSelfAvoidDruid.lua
test/PVPW_TestCombatEventsEnemyAvoidDruid.lua

# hunter
test/PVPW_TestSoundHunterEn.lua
test/PVPW_TestSoundSelfAvoidHunterEn.lua
test/PVPW_TestSoundEnemyAvoidHunterEn.lua
test/PVPW_TestCombatEventsHunter.lua
test/PVPW_TestCombatEventsSelfAvoidHunter.lua
test/PVPW_TestCombatEventsEnemyAvoidHunter.lua

# mage
test/PVPW_TestSoundMageEn.lua
test/PVPW_TestSoundSelfAvoidMageEn.lua
test/PVPW_TestSoundEnemyAvoidMageEn.lua
test/PVPW_TestCombatEventsMage.lua
test/PVPW_TestCombatEventsSelfAvoidMage.lua
test/PVPW_TestCombatEventsEnemyAvoidMage.lua

# paladin
test/PVPW_TestSoundPaladinEn.lua
test/PVPW_TestSoundSelfAvoidPaladinEn.lua
test/PVPW_TestSoundEnemyAvoidPaladinEn.lua
test/PVPW_TestCombatEventsPaladin.lua
test/PVPW_TestCombatEventsSelfAvoidPaladin.lua
test/PVPW_TestCombatEventsEnemyAvoidPaladin.lua

# priest
test/PVPW_TestSoundPriestEn.lua
test/PVPW_TestSoundSelfAvoidPriestEn.lua
test/PVPW_TestSoundEnemyAvoidPriestEn.lua
test/PVPW_TestCombatEventsPriest.lua
test/PVPW_TestCombatEventsSelfAvoidPriest.lua
test/PVPW_TestCombatEventsEnemyAvoidPriest.lua

# rogue
test/PVPW_TestSoundRogueEn.lua
test/PVPW_TestSoundSelfAvoidRogueEn.lua
test/PVPW_TestSoundEnemyAvoidRogueEn.lua
test/PVPW_TestCombatEventsRogue.lua
test/PVPW_TestCombatEventsSelfAvoidRogueEn.lua
test/PVPW_TestCombatEventsEnemyAvoidRogueEn.lua

# shaman
test/PVPW_TestSoundShamanEn.lua
test/PVPW_TestSoundSelfAvoidShamanEn.lua
test/PVPW_TestSoundEnemyAvoidShamanEn.lua
test/PVPW_TestCombatEventsShaman.lua
test/PVPW_TestCombatEventsSelfAvoidShamanEn.lua
test/PVPW_TestCombatEventsEnemyAvoidShamanEn.lua

# warlock
test/PVPW_TestSoundWarlockEn.lua
test/PVPW_TestSoundSelfAvoidWarlockEn.lua
test/PVPW_TestSoundEnemyAvoidWarlockEn.lua
test/PVPW_TestCombatEventsWarlock.lua
test/PVPW_TestCombatEventsSelfAvoidWarlockEn.lua
test/PVPW_TestCombatEventsEnemyAvoidWarlockEn.lua

# warrior
test/PVPW_TestSoundWarriorEn.lua
test/PVPW_TestSoundSelfAvoidWarriorEn.lua
test/PVPW_TestSoundEnemyAvoidWarriorEn.lua
test/PVPW_TestCombatEventsWarrior.lua
test/PVPW_TestCombatEventsSelfAvoidWarrior.lua
test/PVPW_TestCombatEventsEnemyAvoidWarrior.lua

# racials
test/PVPW_TestSoundRacialsEn.lua
test/PVPW_TestCombatEventsRacials.lua

# items
test/PVPW_TestSoundItemsEn.lua
test/PVPW_TestCombatEventsItems.lua

# misc
test/PVPW_TestSoundMiscEn.lua
test/PVPW_TestCombatEventsMisc.lua

# test all
test/PVPW_TestAllEn.lua
