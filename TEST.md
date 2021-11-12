# Test

> PVPWarn has an extensive testsuite for all supported spells. Testing in the World of Warcraft client is limited though.

Note: Tests are only available in the development version of the addon

### Test Log

Logs are constantly written to `PVPWarnTestLog` an addon variable. Once a testset is done use /reload or logout and check the logs for more details.
This is mostly helpful when you want to have a look at the complete log. The log is usually way to big for the ingame chatlog and will quickly disappear.

### Language Support

The combat log is matching the clients language and thus support for spells has to be added separately for every language. This includes different tests and a different spell map for different languages.

### Category Test Setup

Every testmodule should have a `Test` function that starts a new TestGroup, collects all testcases, runs them and ultimately stops the testgroup when done.

```lua
function me.Test()
  mod.testReporter.StartTestGroup(testGroupName) -- start a new testgroup

  me.CollectTestCases() -- function to collect all testcases

  --[[
    Play through all testcases. There is a delay between the testcases because playing a soundfile
    takes some time and we need to make sure to play one after another. Once where done the callback is invoked
    and finishes the testgroup.
  ]]--
  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end
```

### Sound Test

Sound tests have the goal of testing whether playing a certain sound is working. This catches issues such as a missing sound file or typos in those.

#####  Filename pattern to follow when adding categories or other languages

```
PVPW_TestSound[category][language].lua
```

##### Manual execution of a specific category and language testmodule

```lua
/run rgpvpw.testSound[category][language].Test()
```

#### Sound Test Base

The `testSound(PVPW_TestSound.lua)` module is testing whether there is a required testcase for every spell that is found in the spellmap.

#### Run Tests

```lua
-- language e.g. "En", category e.g. "priest"
/run rgpvpw.testSound.ShouldHaveSoundTestForAllSpells(language [, categoryName])
-- language e.g. "En", category e.g. "priest"
/run rgpvpw.testSound.ShouldHaveSoundDownTestForAllSpells(language [, categoryName])
```

##### Sound Test

A soundtest is required for all spells that are found in the spellmap.

```lua
function me.TestSound[spellname]() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestSoundSuccess(
    "TestSound[spellname]", -- without whitespace e.g. BerserkerRage
    testCategory,
    "[spellname]" -- as displayed e.g. Berserker Rage
  )
end
```

##### Sound Start Test

```lua
function me.TestSoundCast[spellName]() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestSoundStart(
    "TestSoundCast[spellname]",  -- without whitespace e.g. BerserkerRage
    testCategory,
    "[spellname]" -- normalized e.g. berserker_rage
  )
end
```
##### Sound Fade Test

A soundfadetest is optional and only required if the spell has `hasFade` set to true in the spellmap.

```lua
function me.TestSoundDown[spellname]() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestSoundRemoved(
    "TestSoundDown[spellname]", -- without whitespace e.g. BerserkerRage
    testCategory,
    "[spellname]" -- normalized e.g. berserker_rage
  )
end
```

##### Sound Self Avoid Test

A soundselfavoid may be optional (if the spell only supports enemy avoid).

```lua
function me.TestSoundSelfAvoid[spellname]() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestSoundSpellMissedSelf(
    "TestSoundSelfAvoid[spellname]", -- without whitespace e.g. BerserkerRage
    testCategory,
    "[spellname]" -- normalized e.g. berserker_rage
  )
end
```

##### Sound Enemy Avoid Test

A soundenemyavoid may be optional (if the spell only supports self avoid).

```lua
function me.TestSoundEnemyAvoid[spellname]() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestSoundSpellMissedEnemy(
    "TestSoundEnemyAvoid[spellname]", -- without whitespace e.g. BerserkerRage
    testCategory,
    "[spellname]" -- normalized e.g. berserker_rage
  )
end
```

### Combat Event Test

Combat event test are testing whether the addon is able to handle certain expected events for a specific spell found in the spellmap. Different events might be relevant to some spells or not depending on the type of the spell.

Sound tests have the goal of testing whether playing a certain sound is working. This catches issues such as a missing sound file or typos in those.

#####  Filename pattern to follow
Note: That combat tests are independent of language because they do not work with localized spellnames but with spellids instead.

```
PVPW_TestCombatEvents[category].lua
```
##### Manual execution of a specific category and language testmodule

```lua
/run rgpvpw.testCombatEvents[category].Test()
```

#### Combat Events Test Base

The `testCombatEvent(PVPW_TestCombatEvent.lua)` module is testing whether there is a required testcase for every spell found in the spellmap and its tracked events.

#### Run Tests

```lua
-- See RGPVPW_CONSTANTS.CATEGORIES
/run rgpvpw.testCombatEvent.Test(RGPVPW_CONSTANTS.CATEGORIES.[category])
```

##### Combat Event Aura Applied Test

Combat event `SPELL_AURA_APPLIED`

```lua
function me.TestCombatEvent[spellname][rank(number)]Applied() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestCombatEventApplied(
    "TestCombatEvent[spellname][rank(number)]Applied", -- without whitespace e.g. BerserkerRage
    testCategory,
    [spellId] -- as in PVPW_SpellMap.lua
  )
end
```

##### Combat Event Aura Removed Test

Combat event `SPELL_AURA_REMOVED`

```lua
function me.TestCombatEvent[spellname][rank(number)]Removed() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestCombatEventRemoved(
    "TestCombatEvent[spellname][rank(number)]Removed", -- without whitespace e.g. BerserkerRage
    testCategory,
    [spellId] -- as in PVPW_SpellMap.lua
  )
end
```

##### Combat Event Aura Refresh Test

Combat event `SPELL_AURA_REFRESH`

```lua
function me.TestCombatEvent[spellname][rank(number)]Refresh() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestCombatEventRefresh(
    "TestCombatEvent[spellname][rank(number)]Refresh", -- without whitespace e.g. BerserkerRage
    testCategory,
    [spellId] -- as in PVPW_SpellMap.lua
  )
end
```

##### Combat Event Spellcast Success Test

Combat event `SPELL_CAST_SUCCESS`

```lua
function me.TestCombatEvent[spellname][rank(number)]Success() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestCombatEventSuccess(
    "TestCombatEvent[spellname][rank(number)]Success", -- without whitespace e.g. BerserkerRage
    testCategory,
    [spellId] -- as in PVPW_SpellMap.lua
  )
end
```

##### Combat Event Spellcast Start Test

Combat event `SPELL_CAST_START`

```lua
function me.TestCombatEvent[spellname][rank(number)]Start() -- without whitespace e.g. BerserkerRage
  mod.testHelper.TestCombatEventStart(
    "TestCombatEvent[spellname][rank(number)]Start", -- without whitespace e.g. BerserkerRage
    testCategory,
    [spellId] -- as in PVPW_SpellMap.lua
  )
end
```

##### Combat Event Self/Enemy Avoid

Combat event `SPELL_MISSED`

Misstype one of:

* DODGE (dodged)
* PARRY (parried)
* IMMUNE (immune)
* MISS (missed)
* BLOCK (blocked)
* RESIST (resisted)
* REFLECT (reflected)

```lua
function me.TestCombatEvent[Self/Enemy]Avoid[spellname][rank(number)][misstype]() -- without whitespace e.g. BerserkerRage / misstype e.g immune
  mod.testHelper.TestCombatEventSpellMissed(
    "TestCombatEvent[Self/Enemy]Avoid[spellname][rank(number)][misstype]", -- without whitespace e.g. BerserkerRage / misstype e.g immune
    testCategory,
    [spellId] -- as in PVPW_SpellMap.lua
    RGPVPW_CONSTANTS.SPELL_TYPES.[enemy or self avoid] -- MISSED_SELF / MISSED_ENEMY
  )
end
```

### Run all Tests

To run all english tests use:

```lua
/run rgpvpw.testAllEn.TestAllEn()
```
