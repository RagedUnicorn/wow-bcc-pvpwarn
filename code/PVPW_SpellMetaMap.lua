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
mod.spellMetaMap = me

me.tag = "SpellMetaMap"

local categories = RGPVPW_CONSTANTS.CATEGORIES_NEW

local spellMetaMap = {
  [categories.WARRIOR.id] = {
    ["battle_stance"] = {
      ["name"] = "Battle Stance",
      ["soundFileName"] = "battle_stance",
      ["spellIcon"] = "ability_warrior_offensivestance",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["berserker_rage"] = {
      ["name"] = "Berserker Rage",
      ["soundFileName"] = "berserker_rage",
      ["spellIcon"] = "spell_nature_ancestralguardian",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["berserker_stance"] = {
      ["name"] = "Berserker Stance",
      ["soundFileName"] = "berserker_stance",
      ["spellIcon"] = "ability_racial_avatar",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["bloodrage"] = {
      ["name"] = "Bloodrage",
      ["soundFileName"] = "bloodrage",
      ["spellIcon"] = "ability_racial_bloodrage",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["charge"] = {
      ["name"] = "Charge",
      ["soundFileName"] = "charge",
      ["spellIcon"] = "ability_warrior_charge",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["defensive_stance"] = {
      ["name"] = "Defensive Stance",
      ["soundFileName"] = "defensive_stance",
      ["spellIcon"] = "ability_warrior_defensivestance",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["demoralizing_shout"] = {
      ["name"] = "Demoralizing Shout",
      ["soundFileName"] = "demoralizing_shout",
      ["spellIcon"] = "ability_warrior_warcry",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["disarm"] = {
      ["name"] = "Disarm",
      ["soundFileName"] = "disarm",
      ["spellIcon"] = "ability_warrior_disarm",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hamstring"] = {
      ["name"] = "Hamstring",
      ["soundFileName"] = "hamstring",
      ["spellIcon"] = "ability_shockwave",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intercept"] = {
      ["name"] = "Intercept",
      ["soundFileName"] = "intercept",
      ["spellIcon"] = "ability_rogue_sprint",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intervene"] = {
      ["name"] = "Intervene",
      ["soundFileName"] = "intervene",
      ["spellIcon"] = "ability_warrior_victoryrush",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intimidating_shout"] = {
      ["name"] = "Intimidating Shout",
      ["soundFileName"] = "intimidating_shout",
      ["spellIcon"] = "ability_golemthunderclap",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["overpower"] = {
      ["name"] = "Overpower",
      ["soundFileName"] = "overpower",
      ["spellIcon"] = "ability_meleedamage",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["pummel"] = {
      ["name"] = "Pummel",
      ["soundFileName"] = "pummel",
      ["spellIcon"] = "inv_gauntlets_04",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["recklessness"] = {
      ["name"] = "Recklessness",
      ["soundFileName"] = "recklessness",
      ["spellIcon"] = "ability_criticalstrike",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["retaliation"] = {
      ["name"] = "Retaliation",
      ["soundFileName"] = "retaliation",
      ["spellIcon"] = "ability_warrior_challange",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_bash"] = {
      ["name"] = "Shield Bash",
      ["soundFileName"] = "shield_bash",
      ["spellIcon"] = "ability_warrior_shieldbash",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shield_block"] = {
      ["name"] = "Shield Block",
      ["soundFileName"] = "shield_block",
      ["spellIcon"] = "ability_defend",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_wall"] = {
      ["name"] = "Shield Wall",
      ["soundFileName"] = "shield_wall",
      ["spellIcon"] = "ability_warrior_shieldwall",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["spell_reflection"] = {
      ["name"] = "Spell Reflection",
      ["soundFileName"] = "spell_reflection",
      ["spellIcon"] = "ability_warrior_shieldreflection",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["sunder_armor"] = {
      ["name"] = "Sunder Armor",
      ["soundFileName"] = "sunder_armor",
      ["spellIcon"] = "ability_warrior_sunder",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["whirlwind"] = {
      ["name"] = "Whirlwind",
      ["soundFileName"] = "whirlwind",
      ["spellIcon"] = "ability_whirlwind",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["concussion_blow"] = {
      ["name"] = "Concussion Blow",
      ["soundFileName"] = "concussion_blow",
      ["spellIcon"] = "ability_thunderbolt",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["death_wish"] = {
      ["name"] = "Death Wish",
      ["soundFileName"] = "death_wish",
      ["spellIcon"] = "spell_shadow_deathpact",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["last_stand"] = {
      ["name"] = "Last Stand",
      ["soundFileName"] = "last_stand",
      ["spellIcon"] = "spell_holy_ashestoashes",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mortal_strike"] = {
      ["name"] = "Mortal Strike",
      ["soundFileName"] = "mortal_strike",
      ["spellIcon"] = "ability_warrior_savageblow",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["piercing_howl"] = {
      ["name"] = "Piercing Howl",
      ["soundFileName"] = "piercing_howl",
      ["spellIcon"] = "spell_shadow_deathscream",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rampage"] = {
      ["name"] = "Rampage",
      ["soundFileName"] = "rampage",
      ["spellIcon"] = "ability_warrior_rampage",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["second_wind"] = {
      ["name"] = "Second Wind",
      ["soundFileName"] = "second_wind",
      ["spellIcon"] = "ability_hunter_harass",
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_slam"] = {
      ["name"] = "Shield Slam",
      ["soundFileName"] = "shield_slam",
      ["spellIcon"] = "inv_shield_05",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["sweeping_strikes"] = {
      ["name"] = "Sweeping Strikes",
      ["soundFileName"] = "sweeping_strikes",
      ["spellIcon"] = "ability_rogue_slicedice",
      ["hasFade"] = true,
      ["active"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    }
  }
}

--[[
  Search the SpellMetaMap filtering by a category and a spellname

  @param {table} spell
  @param {string} event

  @returns {nil | table}
    nil - if no spellMetaData could be found or no valid spell or event was provided
    table - metadata about the spell that was found
]]--
function me.GetSpellMetaDataForSupportedEvent(spell, event)
  if not spell or type(spell) ~= "table" then return nil end
  if not event or type(event) ~= "string" then return nil end

  local category = spell[1]
  local spellName = spell[2]

  mod.logger.LogDebug(me.tag,
    "Searching for spell metadata with category {" .. category .. "} and spellName {" .. spellName .. "}")

  if spellMetaMap[category] ~= nil and spellMetaMap[category][spellName] ~= nil then
    if me.SupportsEvent(spellMetaMap[category][spellName], event) then
      mod.logger.LogInfo(me.tag, "Found spell for category {" .. category .. "} and spellName {" .. spellName .. "}")

      return spellMetaMap[category][spellName]
    else
      return nil
    end
  end

  mod.logger.LogDebug(me.tag, "Spell with category {" .. category .. "} and spellName {" .. spellName .. "} not found")
  return nil
end

--[[
  Checks whether a specific spell supports a certain event

  @param {table} spellMetaData
  @param {string} event
]]--
function me.SupportsEvent(spellMetaData, event)
  for i = 1, #spellMetaData.trackedEvents do
    if event == spellMetaData.trackedEvents[i] then
      mod.logger.LogDebug(
        me.tag,
        "Found supported event {" .. spellMetaData.trackedEvents[i] .. "} for spell {" .. spellMetaData.name .. "}"
      )

      return true
    end
  end

  mod.logger.LogDebug(me.tag, "The spell {" .. spellMetaData.name .. "} does not support the event {" .. event .. "}")
  return false
end

--[[
  Search for the spellData of a specific spell by its category and spellName

  @param {string} spellName

  @return {table | nil}
    table - the found spellMetaData
    nil - if no data could be found
]]--
function me.GetSpellMetaDataByCategoryAndName(category, spellName)
  if spellMetaMap[category] ~= nil and spellMetaMap[category][spellName] ~= nil then
    return spellMetaMap[category][spellName]
  end

  mod.logger.LogDebug(me.tag, "Spell with category {" .. category .. "} and spellName {" .. spellName .. "} not found")
  return nil
end
