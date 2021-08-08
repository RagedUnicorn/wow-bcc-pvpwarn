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
  [categories.PRIEST.id] = {
    ["abolish_disease"] = {
      ["name"] = "Abolish Disease",
      ["soundFileName"] = "abolish_disease",
      ["spellIconId"] = 136066,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["binding_heal"] = {
      ["name"] = "Binding Heal",
      ["soundFileName"] = "binding_heal",
      ["spellIconId"] = 135883,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["chastise"] = {
      ["name"] = "Chastise",
      ["soundFileName"] = "chastise",
      ["spellIconId"] = 135886,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["consume_magic"] = {
      ["name"] = "Consume Magic",
      ["soundFileName"] = "consume_magic",
      ["spellIconId"] = 135754,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cure_disease"] = {
      ["name"] = "Cure Disease",
      ["soundFileName"] = "cure_disease",
      ["spellIconId"] = 135935,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["desperate_prayer"] = {
      ["name"] = "Desperate Prayer",
      ["soundFileName"] = "desperate_prayer",
      ["spellIconId"] = 135954,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["devouring_plague"] = {
      ["name"] = "Devouring Plague",
      ["soundFileName"] = "devouring_plague",
      ["spellIconId"] = 136123,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["dispel_magic"] = {
      ["name"] = "Dispel Magic",
      ["soundFileName"] = "dispel_magic",
      ["spellIconId"] = 135894,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["elunes_grace"] = {
      ["name"] = "Elune's Grace",
      ["soundFileName"] = "elunes_grace",
      ["spellIconId"] = 135900,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["fear_ward"] = {
      ["name"] = "Fear Ward",
      ["soundFileName"] = "fear_ward",
      ["spellIconId"] = 135902,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["feedback"] = {
      ["name"] = "Feedback",
      ["soundFileName"] = "feedback",
      ["spellIconId"] = 136189,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["flash_heal"] = {
      ["name"] = "Flash Heal",
      ["soundFileName"] = "flash_heal",
      ["spellIconId"] = 135907,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["greater_heal"] = {
      ["name"] = "Greater Heal",
      ["soundFileName"] = "greater_heal",
      ["spellIconId"] = 135913,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["heal"] = {
      ["name"] = "Heal",
      ["soundFileName"] = "heal",
      ["spellIconId"] = 135916,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hex_of_weakness"] = {
      ["name"] = "Hex of Weakness",
      ["soundFileName"] = "hex_of_weakness",
      ["spellIconId"] = 136157,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["holy_fire"] = {
      ["name"] = "Holy Fire",
      ["soundFileName"] = "holy_fire",
      ["spellIconId"] = 135972,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["inner_fire"] = {
      ["name"] = "Inner Fire",
      ["soundFileName"] = "inner_fire",
      ["spellIconId"] = 135926,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["lesser_heal"] = {
      ["name"] = "Lesser Heal",
      ["soundFileName"] = "lesser_heal",
      ["spellIconId"] = 135929,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["levitate"] = {
      ["name"] = "Levitate",
      ["soundFileName"] = "levitate",
      ["spellIconId"] = 135928,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["mana_burn"] = {
      ["name"] = "Mana Burn",
      ["soundFileName"] = "mana_burn",
      ["spellIconId"] = 136170,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mass_dispel"] = {
      ["name"] = "Mass Dispel",
      ["soundFileName"] = "mass_dispel",
      ["spellIconId"] = 135739,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mind_blast"] = {
      ["name"] = "Mind Blast",
      ["soundFileName"] = "mind_blast",
      ["spellIconId"] = 136224,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mind_control"] = {
      ["name"] = "Mind Control",
      ["soundFileName"] = "mind_control",
      ["spellIconId"] = 136206,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mind_vision"] = {
      ["name"] = "Mind Vision",
      ["soundFileName"] = "mind_vision",
      ["spellIconId"] = 135934,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["power_word_fortitude"] = {
      ["name"] = "Power Word: Fortitude",
      ["soundFileName"] = "power_word_fortitude",
      ["spellIconId"] = 135987,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["power_word_shield"] = {
      ["name"] = "Power Word: Shield",
      ["soundFileName"] = "power_word_shield",
      ["spellIconId"] = 135940,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["prayer_of_fortitude"] = {
      ["name"] = "Prayer of Fortitude",
      ["soundFileName"] = "prayer_of_fortitude",
      ["spellIconId"] = 135941,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["prayer_of_healing"] = {
      ["name"] = "Prayer of Healing",
      ["soundFileName"] = "prayer_of_healing",
      ["spellIconId"] = 135943,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["prayer_of_mending"] = {
      ["name"] = "Prayer of Mending",
      ["soundFileName"] = "prayer_of_mending",
      ["spellIconId"] = 135944,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["prayer_of_shadow_protection"] = {
      ["name"] = "Prayer of Shadow Protection",
      ["soundFileName"] = "prayer_of_shadow_protection",
      ["spellIconId"] = 135945,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["prayer_of_spirit"] = {
      ["name"] = "Prayer of Spirit",
      ["soundFileName"] = "prayer_of_spirit",
      ["spellIconId"] = 135946,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["psychic_scream"] = {
      ["name"] = "Psychic Scream",
      ["soundFileName"] = "psychic_scream",
      ["spellIconId"] = 136184,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["renew"] = {
      ["name"] = "Renew",
      ["soundFileName"] = "renew",
      ["spellIconId"] = 135953,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["resurrection"] = {
      ["name"] = "Resurrection",
      ["soundFileName"] = "resurrection",
      ["spellIconId"] = 135955,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadow_protection"] = {
      ["name"] = "Shadow Protection",
      ["soundFileName"] = "shadow_protection",
      ["spellIconId"] = 136121,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["shadow_word_death"] = {
      ["name"] = "Shadow Word: Death",
      ["soundFileName"] = "shadow_word_death",
      ["spellIconId"] = 136149,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadow_word_pain"] = {
      ["name"] = "Shadow Word: Pain",
      ["soundFileName"] = "shadow_word_pain",
      ["spellIconId"] = 136207,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadowfiend"] = {
      ["name"] = "Shadowfiend",
      ["soundFileName"] = "shadowfiend",
      ["spellIconId"] = 136199,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadowguard"] = {
      ["name"] = "Shadowguard",
      ["soundFileName"] = "shadowguard",
      ["spellIconId"] = 136051,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["smite"] = {
      ["name"] = "Smite",
      ["soundFileName"] = "smite",
      ["spellIconId"] = 135924,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["starshards"] = {
      ["name"] = "Starshards",
      ["soundFileName"] = "starshards",
      ["spellIconId"] = 135753,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["symbol_of_hope"] = {
      ["name"] = "Symbol of Hope",
      ["soundFileName"] = "symbol_of_hope",
      ["spellIconId"] = 135982,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["touch_of_weakness"] = {
      ["name"] = "Touch of Weakness",
      ["soundFileName"] = "touch_of_weakness",
      ["spellIconId"] = 136143,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["blackout"] = {
      ["name"] = "Blackout",
      ["soundFileName"] = "blackout",
      ["spellIconId"] = 136160,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["circle_of_healing"] = {
      ["name"] = "Circle of Healing",
      ["soundFileName"] = "circle_of_healing",
      ["spellIconId"] = 135887,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_spirit"] = {
      ["name"] = "Divine Spirit",
      ["soundFileName"] = "divine_spirit",
      ["spellIconId"] = 135898,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["holy_nova"] = {
      ["name"] = "Holy Nova",
      ["soundFileName"] = "holy_nova",
      ["spellIconId"] = 135922,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["inner_focus"] = {
      ["name"] = "Inner Focus",
      ["soundFileName"] = "inner_focus",
      ["spellIconId"] = 135863,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mind_flay"] = {
      ["name"] = "Mind Flay",
      ["soundFileName"] = "mind_flay",
      ["spellIconId"] = 136208,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["pain_suppression"] = {
      ["name"] = "Pain Suppression",
      ["soundFileName"] = "pain_suppression",
      ["spellIconId"] = 135936,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["power_infusion"] = {
      ["name"] = "Power Infusion",
      ["soundFileName"] = "power_infusion",
      ["spellIconId"] = 135939,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shadowform"] = {
      ["name"] = "Shadowform",
      ["soundFileName"] = "shadowform",
      ["spellIconId"] = 136200,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["silence"] = {
      ["name"] = "Silence",
      ["soundFileName"] = "silence",
      ["spellIconId"] = 136164,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["vampiric_embrace"] = {
      ["name"] = "Vampiric Embrace",
      ["soundFileName"] = "vampiric_embrace",
      ["spellIconId"] = 136230,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["vampiric_touch"] = {
      ["name"] = "Vampiric Touch",
      ["soundFileName"] = "vampiric_touch",
      ["spellIconId"] = 135978,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    }
  },
  [categories.WARRIOR.id] = {
    ["battle_stance"] = {
      ["name"] = "Battle Stance",
      ["soundFileName"] = "battle_stance",
      ["spellIconId"] = 132349,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["berserker_rage"] = {
      ["name"] = "Berserker Rage",
      ["soundFileName"] = "berserker_rage",
      ["spellIconId"] = 136009,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["berserker_stance"] = {
      ["name"] = "Berserker Stance",
      ["soundFileName"] = "berserker_stance",
      ["spellIconId"] = "132275",
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["bloodrage"] = {
      ["name"] = "Bloodrage",
      ["soundFileName"] = "bloodrage",
      ["spellIconId"] = 132277,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["charge"] = {
      ["name"] = "Charge",
      ["soundFileName"] = "charge",
      ["spellIconId"] = 132337,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["defensive_stance"] = {
      ["name"] = "Defensive Stance",
      ["soundFileName"] = "defensive_stance",
      ["spellIconId"] = 132341,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["demoralizing_shout"] = {
      ["name"] = "Demoralizing Shout",
      ["soundFileName"] = "demoralizing_shout",
      ["spellIconId"] = 132366,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["disarm"] = {
      ["name"] = "Disarm",
      ["soundFileName"] = "disarm",
      ["spellIconId"] = 132343,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hamstring"] = {
      ["name"] = "Hamstring",
      ["soundFileName"] = "hamstring",
      ["spellIconId"] = 132316,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intercept"] = {
      ["name"] = "Intercept",
      ["soundFileName"] = "intercept",
      ["spellIconId"] = 132307,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intervene"] = {
      ["name"] = "Intervene",
      ["soundFileName"] = "intervene",
      ["spellIconId"] = 132365,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intimidating_shout"] = {
      ["name"] = "Intimidating Shout",
      ["soundFileName"] = "intimidating_shout",
      ["spellIconId"] = 132154,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["overpower"] = {
      ["name"] = "Overpower",
      ["soundFileName"] = "overpower",
      ["spellIconId"] = 132223,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["pummel"] = {
      ["name"] = "Pummel",
      ["soundFileName"] = "pummel",
      ["spellIconId"] = 132938,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["recklessness"] = {
      ["name"] = "Recklessness",
      ["soundFileName"] = "recklessness",
      ["spellIconId"] = 132109,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["retaliation"] = {
      ["name"] = "Retaliation",
      ["soundFileName"] = "retaliation",
      ["spellIconId"] = 132336,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_bash"] = {
      ["name"] = "Shield Bash",
      ["soundFileName"] = "shield_bash",
      ["spellIconId"] = 132357,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shield_block"] = {
      ["name"] = "Shield Block",
      ["soundFileName"] = "shield_block",
      ["spellIconId"] = 132110,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_wall"] = {
      ["name"] = "Shield Wall",
      ["soundFileName"] = "shield_wall",
      ["spellIconId"] = 132362,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["spell_reflection"] = {
      ["name"] = "Spell Reflection",
      ["soundFileName"] = "spell_reflection",
      ["spellIconId"] = 132361,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["sunder_armor"] = {
      ["name"] = "Sunder Armor",
      ["soundFileName"] = "sunder_armor",
      ["spellIconId"] = 132363,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["whirlwind"] = {
      ["name"] = "Whirlwind",
      ["soundFileName"] = "whirlwind",
      ["spellIconId"] = 132369,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["concussion_blow"] = {
      ["name"] = "Concussion Blow",
      ["soundFileName"] = "concussion_blow",
      ["spellIconId"] = 132325,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["death_wish"] = {
      ["name"] = "Death Wish",
      ["soundFileName"] = "death_wish",
      ["spellIconId"] = 136146,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["last_stand"] = {
      ["name"] = "Last Stand",
      ["soundFileName"] = "last_stand",
      ["spellIconId"] = 135871,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mortal_strike"] = {
      ["name"] = "Mortal Strike",
      ["soundFileName"] = "mortal_strike",
      ["spellIconId"] = 132355,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["piercing_howl"] = {
      ["name"] = "Piercing Howl",
      ["soundFileName"] = "piercing_howl",
      ["spellIconId"] = 136147,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rampage"] = {
      ["name"] = "Rampage",
      ["soundFileName"] = "rampage",
      ["spellIconId"] = 132352,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["second_wind"] = {
      ["name"] = "Second Wind",
      ["soundFileName"] = "second_wind",
      ["spellIconId"] = 132175,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_slam"] = {
      ["name"] = "Shield Slam",
      ["soundFileName"] = "shield_slam",
      ["spellIconId"] = 134951,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["sweeping_strikes"] = {
      ["name"] = "Sweeping Strikes",
      ["soundFileName"] = "sweeping_strikes",
      ["spellIconId"] = 132306,
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
