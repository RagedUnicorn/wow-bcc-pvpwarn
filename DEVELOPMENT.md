# Development

### Add a new Spell

#### Spell

- [ ] Create an entry and for each rank of the spell in /code/PVPW_SpellMap.lua
- [ ] Create an entry for the spell in /code/PVPW_SpellMetaMap.lua
- [ ] Create a sound file /assets/sounds/[language]/[category]/[spellName].mp3
- [ ] Add sound test /test/sound/PVPW_TestSound[category][language].lua
- [ ] Add combat test /test/combat-events/PVPW_TestCombatEvents[category].lua

#### Avoid Spell

- [ ] Add SPELL_MISSED event to trackedEvents in SpellMetaMap.lua
- [ ] Create enemy avoid sound file /assets/sounds/[language]/[category]/enemy_avoid/[enemy_avoided_spellName].mp3
- [ ] Create self avoid sound file /assets/sounds/[language]/[category]/self_avoid/[you_avoided_spellName].mp3
- [ ] Add enemy avoid sound test /test/sound-enemy-avoid/PVPW_TestSoundEnemyAvoid[category][language].lua
- [ ] Add self avoid sound test /test/sound-self-avoid/PVPW_TestSoundSelfAvoid[category][language].lua
- [ ] Add enemy avoid combat test /test/combat-events-enemy-avoid/PVPW_TestCombatEventsEnemyAvoid[category].lua
- [ ] Add self avoid combat test /test/combat-events-self-avoid/PVPW_TestCombatEventsSelfAvoid[category].lua

#### Cast Spell

- [ ] Add SPELL_CAST_START event to trackedEvents in SpellMetaMap.lua
- [ ] Create cast sound file /assets/sounds/[language]/[category]/cast/[cast_spellName].mp3
- [ ] Add cast sound test /test/sound-cast/PVPW_TestSoundCast[category][language].lua
- [ ] Add cast combat test /test/combat-events-cast/PVPW_TestCombatEventsCast[category].lua

### Avoid and How it Works

#### Self Avoid

To check if we as a player avoided an attack/spell we filter for hostile player combat log entries. Additionally we also need to check that the target of the spell is the player himself. Otherwise the event is not relevant and is getting ignored.

```lua
if CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS) then
  -- work
end
```

#### Enemy Avoid

For checking if an enemy avoided something from us we need to make sure to include `COMBATLOG_FILTER_MINE`. This filters for our own events.

```lua
if CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_MINE) then
  -- work
end
```

#### Event SPELL_MISSED

The name spell missed might be a bit misleading. It is important to know that even physical spells are considered spells and thus the event `SPELL_MISSED` is used for everything that is related to avoiding a spell in some way. WoW supports the following misstypes.

###### WoW full list missTypes

* ABSORB
* BLOCK
* DEFLECT
* DODGE
* EVADE
* IMMUNE
* MISS
* PARRY
* REFLECT
* RESIST

###### Filter Unwanted missType

PVPWarn filters unwanted missTypes. See above for supported missTypes. As an example completely absorbing a spell such as `Cone of Cold` with a `Power Word: Shield` is in the eyes of PVPWarn not an avoid event. By filtering `ABSORB` those events will not be processed.
