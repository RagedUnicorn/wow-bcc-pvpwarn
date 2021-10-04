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

-- luacheck: globals UnitFactionGroup tContains

local mod = rgpvpw
local me = {}
mod.spellMetaMap = me

me.tag = "SpellMetaMap"

local categories = RGPVPW_CONSTANTS.CATEGORIES

--[[
  ["normalized_spell_name"] = { -- string
    ["name"] = "spell_name", -- string
    ["soundFileName"] = "sound_file_name", -- string
    ["spellIcon"] =  00000, -- number
    ["trackedEvents"] = {
      A list of events that are relevant for this spell

      SPELL_CAST_SUCCESS -- a spell that was casted
      SPELL_AURA_APPLIED -- a buff that was applied
      SPELL_AURA_REMOVED -- a buff that was removed or ran out
      SPELL_MISSED -- a spell was missed/avoided
      SPELL_CAST_START -- started to cast a spell

      Note: A spell cannot support both SPELL_CAST_START and SPELL_AURA_REMOVED
    }
  }
}
]]--
local spellMetaMap = {
  [categories.DRUID.id] = {
    ["abolish_poison"] = {
      ["name"] = "Abolish Poison",
      ["soundFileName"] = "abolish_poison",
      ["spellIconId"] = 136068,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["aquatic_form"] = {
      ["name"] = "Aquatic Form",
      ["soundFileName"] = "aquatic_form",
      ["spellIconId"] = 132112,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["barkskin"] = {
      ["name"] = "Barkskin",
      ["soundFileName"] = "barkskin",
      ["spellIconId"] = 136097,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["bash"] = {
      ["name"] = "Bash",
      ["soundFileName"] = "bash",
      ["spellIconId"] = 132114,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["bear_form"] = {
      ["name"] = "Bear Form",
      ["soundFileName"] = "bear_form",
      ["spellIconId"] = 132276,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["cat_form"] = {
      ["name"] = "Cat Form",
      ["soundFileName"] = "cat_form",
      ["spellIconId"] = 132115,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["claw"] = {
      ["name"] = "Claw",
      ["soundFileName"] = "claw",
      ["spellIconId"] = 132140,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["cower"] = {
      ["name"] = "Cower",
      ["soundFileName"] = "cower",
      ["spellIconId"] = 132118,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cure_poison"] = {
      ["name"] = "Cure Poison",
      ["soundFileName"] = "cure_poison",
      ["spellIconId"] = 136067,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["cyclone"] = {
      ["name"] = "Cyclone",
      ["soundFileName"] = "cyclone",
      ["spellIconId"] = 136022,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["dash"] = {
      ["name"] = "Dash",
      ["soundFileName"] = "dash",
      ["spellIconId"] = 132120,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["demoralizing_roar"] = {
      ["name"] = "Demoralizing Roar",
      ["soundFileName"] = "demoralizing_roar",
      ["spellIconId"] = 132121,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["dire_bear_form"] = {
      ["name"] = "Dire Bear Form",
      ["soundFileName"] = "dire_bear_form",
      ["spellIconId"] = 132276,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["enrage"] = {
      ["name"] = "Enrage",
      ["soundFileName"] = "enrage",
      ["spellIconId"] = 132126,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["entangling_roots"] = {
      ["name"] = "Entangling Roots",
      ["soundFileName"] = "entangling_roots",
      ["spellIconId"] = 136100,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["faerie_fire"] = {
      ["name"] = "Faerie Fire",
      ["soundFileName"] = "faerie_fire",
      ["spellIconId"] = 136033,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["ferocious_bite"] = {
      ["name"] = "Ferocious Bite",
      ["soundFileName"] = "ferocious_bite",
      ["spellIconId"] = 132127,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["flight_form"] = {
      ["name"] = "Flight Form",
      ["soundFileName"] = "flight_form",
      ["spellIconId"] = 132128,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["frenzied_regeneration"] = {
      ["name"] = "Frenzied Regeneration",
      ["soundFileName"] = "frenzied_regeneration",
      ["spellIconId"] = 132091,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["gift_of_the_wild"] = {
      ["name"] = "Gift of the Wild",
      ["soundFileName"] = "gift_of_the_wild",
      ["spellIconId"] = 136038,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["healing_touch"] = {
      ["name"] = "Healing Touch",
      ["soundFileName"] = "healing_touch",
      ["spellIconId"] = 136041,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["hibernate"] = {
      ["name"] = "Hibernate",
      ["soundFileName"] = "hibernate",
      ["spellIconId"] = 136090,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["hurricane"] = {
      ["name"] = "Hurricane",
      ["soundFileName"] = "hurricane",
      ["spellIconId"] = 136018,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["innervate"] = {
      ["name"] = "Innervate",
      ["soundFileName"] = "innervate",
      ["spellIconId"] = 136048,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["lacerate"] = {
      ["name"] = "Lacerate",
      ["soundFileName"] = "lacerate",
      ["spellIconId"] = 132131,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["lifebloom"] = {
      ["name"] = "Lifebloom",
      ["soundFileName"] = "lifebloom",
      ["spellIconId"] = 134206,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["maim"] = {
      ["name"] = "Maim",
      ["soundFileName"] = "maim",
      ["spellIconId"] = 132134,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["mangle_bear"] = {
      ["name"] = "Mangle (Bear)",
      ["soundFileName"] = "mangle",
      ["spellIconId"] = 132135,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["mangle_cat"] = {
      ["name"] = "Mangle (Cat)",
      ["soundFileName"] = "mangle",
      ["spellIconId"] = 132135,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["mark_of_the_wild"] = {
      ["name"] = "Mark of the Wild",
      ["soundFileName"] = "mark_of_the_wild",
      ["spellIconId"] = 136078,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["moonfire"] = {
      ["name"] = "Moonfire",
      ["soundFileName"] = "moonfire",
      ["spellIconId"] = 136096,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["pounce"] = {
      ["name"] = "Pounce",
      ["soundFileName"] = "pounce",
      ["spellIconId"] = 132142,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["prowl"] = {
      ["name"] = "Prowl",
      ["soundFileName"] = "prowl",
      ["spellIconId"] = 132089,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rake"] = {
      ["name"] = "Rake",
      ["soundFileName"] = "rake",
      ["spellIconId"] = 132122,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["ravage"] = {
      ["name"] = "Ravage",
      ["soundFileName"] = "ravage",
      ["spellIconId"] = 132141,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["rebirth"] = {
      ["name"] = "Rebirth",
      ["soundFileName"] = "rebirth",
      ["spellIconId"] = 136080,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["regrowth"] = {
      ["name"] = "Regrowth",
      ["soundFileName"] = "regrowth",
      ["spellIconId"] = 136085,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["rejuvenation"] = {
      ["name"] = "Rejuvenation",
      ["soundFileName"] = "rejuvenation",
      ["spellIconId"] = 136081,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["remove_curse"] = {
      ["name"] = "Remove Curse",
      ["soundFileName"] = "remove_curse",
      ["spellIconId"] = 135952,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rip"] = {
      ["name"] = "Rip",
      ["soundFileName"] = "rip",
      ["spellIconId"] = 132152,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shred"] = {
      ["name"] = "Shred",
      ["soundFileName"] = "shred",
      ["spellIconId"] = 136231,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["starfire"] = {
      ["name"] = "Starfire",
      ["soundFileName"] = "starfire",
      ["spellIconId"] = 135753,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["swift_flight_form"] = {
      ["name"] = "Swift Flight Form",
      ["soundFileName"] = "swift_flight_form",
      ["spellIconId"] = 132128,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["swipe"] = {
      ["name"] = "Swipe",
      ["soundFileName"] = "swipe",
      ["spellIconId"] = 134296,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["thorns"] = {
      ["name"] = "Thorns",
      ["soundFileName"] = "thorns",
      ["spellIconId"] = 136104,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["tigers_fury"] = {
      ["name"] = "Tiger's Fury",
      ["soundFileName"] = "tigers_fury",
      ["spellIconId"] = 132242,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["tranquility"] = {
      ["name"] = "Tranquility",
      ["soundFileName"] = "tranquility",
      ["spellIconId"] = 136107,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["travel_form"] = {
      ["name"] = "Travel Form",
      ["soundFileName"] = "travel_form",
      ["spellIconId"] = 132144,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["wrath"] = {
      ["name"] = "Wrath",
      ["soundFileName"] = "wrath",
      ["spellIconId"] = 136006,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["faerie_fire_feral"] = {
      ["name"] = "Faerie Fire (Feral)",
      ["soundFileName"] = "faerie_fire",
      ["spellIconId"] = 136033,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["feral_charge"] = {
      ["name"] = "Feral Charge",
      ["soundFileName"] = "feral_charge",
      ["spellIconId"] = 132183,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["force_of_nature"] = {
      ["name"] = "Force of Nature",
      ["soundFileName"] = "force_of_nature",
      ["spellIconId"] = 132129,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["insect_swarm"] = {
      ["name"] = "Insect Swarm",
      ["soundFileName"] = "insect_swarm",
      ["spellIconId"] = 136045,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["moonkin_form"] = {
      ["name"] = "Moonkin Form",
      ["soundFileName"] = "moonkin_form",
      ["spellIconId"] = 136036,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["natures_grasp"] = {
      ["name"] = "Nature's Grasp",
      ["soundFileName"] = "natures_grasp",
      ["spellIconId"] = 136063,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["natures_swiftness"] = {
      ["name"] = "Nature's Swiftness",
      ["soundFileName"] = "natures_swiftness",
      ["spellIconId"] = 136076,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["omen_of_clarity"] = {
      ["name"] = "Omen of Clarity",
      ["soundFileName"] = "omen_of_clarity",
      ["spellIconId"] = 136017,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["swiftmend"] = {
      ["name"] = "Swiftmend",
      ["soundFileName"] = "swiftmend",
      ["spellIconId"] = 134914,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["tree_of_life"] = {
      ["name"] = "Tree of Life",
      ["soundFileName"] = "tree_of_life",
      ["spellIconId"] = 132145,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    }
  },
  [categories.HUNTER.id] = {
    ["arcane_shot"] = {
      ["name"] = "Arcane Shot",
      ["soundFileName"] = "arcane_shot",
      ["spellIconId"] = 132218,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["aspect_of_the_beast"] = {
      ["name"] = "Aspect of the Beast",
      ["soundFileName"] = "aspect_of_the_beast",
      ["spellIconId"] = 132252,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_cheetah"] = {
      ["name"] = "Aspect of the Cheetah",
      ["soundFileName"] = "aspect_of_the_cheetah",
      ["spellIconId"] = 132242,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_hawk"] = {
      ["name"] = "Aspect of the Hawk",
      ["soundFileName"] = "aspect_of_the_hawk",
      ["spellIconId"] = 136076,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_monkey"] = {
      ["name"] = "Aspect of the Monkey",
      ["soundFileName"] = "aspect_of_the_monkey",
      ["spellIconId"] = 132159,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_pack"] = {
      ["name"] = "Aspect of the Pack",
      ["soundFileName"] = "aspect_of_the_pack",
      ["spellIconId"] = 132267,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_viper"] = {
      ["name"] = "Aspect of the Viper",
      ["soundFileName"] = "aspect_of_the_viper",
      ["spellIconId"] = 132160,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_wild"] = {
      ["name"] = "Aspect of the Wild",
      ["soundFileName"] = "aspect_of_the_wild",
      ["spellIconId"] = 136074,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["concussive_shot"] = {
      ["name"] = "Concussive Shot",
      ["soundFileName"] = "concussive_shot",
      ["spellIconId"] = 135860,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["disengage"] = {
      ["name"] = "Disengage",
      ["soundFileName"] = "disengage",
      ["spellIconId"] = 132294,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["explosive_trap"] = {
      ["name"] = "Explosive Trap",
      ["soundFileName"] = "explosive_trap",
      ["spellIconId"] = 135826,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["flare"] = {
      ["name"] = "Flare",
      ["soundFileName"] = "flare",
      ["spellIconId"] = 135815,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["freezing_trap"] = {
      ["name"] = "Freezing Trap",
      ["soundFileName"] = "freezing_trap",
      ["spellIconId"] = 135834,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["frost_trap"] = {
      ["name"] = "Frost Trap",
      ["soundFileName"] = "frost_trap",
      ["spellIconId"] = 135840,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["hunters_mark"] = {
      ["name"] = "Hunter's Mark",
      ["soundFileName"] = "hunters_mark",
      ["spellIconId"] = 132212,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["immolation_trap"] = {
      ["name"] = "Immolation Trap",
      ["soundFileName"] = "immolation_trap",
      ["spellIconId"] = 135813,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["mend_pet"] = {
      ["name"] = "Mend Pet",
      ["soundFileName"] = "mend_pet",
      ["spellIconId"] = 132179,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mongoose_bite"] = {
      ["name"] = "Mongoose Bite",
      ["soundFileName"] = "mongoose_bite",
      ["spellIconId"] = 132215,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["multi_shot"] = {
      ["name"] = "Multi-Shot",
      ["soundFileName"] = "multi_shot",
      ["spellIconId"] = 132330,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["rapid_fire"] = {
      ["name"] = "Rapid Fire",
      ["soundFileName"] = "rapid_fire",
      ["spellIconId"] = 132208,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["raptor_strike"] = {
      ["name"] = "Raptor Strike",
      ["soundFileName"] = "raptor_strike",
      ["spellIconId"] = 132223,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["revive_pet"] = {
      ["name"] = "Revive Pet",
      ["soundFileName"] = "revive_pet",
      ["spellIconId"] = 132163,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["scare_beast"] = {
      ["name"] = "Scare Beast",
      ["soundFileName"] = "scare_beast",
      ["spellIconId"] = 132118,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["scorpid_sting"] = {
      ["name"] = "Scorpid Sting",
      ["soundFileName"] = "scorpid_sting",
      ["spellIconId"] = 132169,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["serpent_sting"] = {
      ["name"] = "Serpent Sting",
      ["soundFileName"] = "serpent_sting",
      ["spellIconId"] = 132204,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["snake_trap"] = {
      ["name"] = "Snake Trap",
      ["soundFileName"] = "snake_trap",
      ["spellIconId"] = 132211,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_beasts"] = {
      ["name"] = "Track Beasts",
      ["soundFileName"] = "track_beasts",
      ["spellIconId"] = 132328,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_demons"] = {
      ["name"] = "Track Demons",
      ["soundFileName"] = "track_demons",
      ["spellIconId"] = 136217,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_dragonkin"] = {
      ["name"] = "Track Dragonkin",
      ["soundFileName"] = "track_dragonkin",
      ["spellIconId"] = 134153,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_elementals"] = {
      ["name"] = "Track Elementals",
      ["soundFileName"] = "track_elementals",
      ["spellIconId"] = 135861,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_giants"] = {
      ["name"] = "Track Giants",
      ["soundFileName"] = "track_giants",
      ["spellIconId"] = 132275,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_hidden"] = {
      ["name"] = "Track Hidden",
      ["soundFileName"] = "track_hidden",
      ["spellIconId"] = 132320,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_humanoids"] = {
      ["name"] = "Track Humanoids",
      ["soundFileName"] = "track_humanoids",
      ["spellIconId"] = 135942,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_undead"] = {
      ["name"] = "Track Undead",
      ["soundFileName"] = "track_undead",
      ["spellIconId"] = 136142,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["viper_sting"] = {
      ["name"] = "Viper Sting",
      ["soundFileName"] = "viper_sting",
      ["spellIconId"] = 132157,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["volley"] = {
      ["name"] = "Volley",
      ["soundFileName"] = "volley",
      ["spellIconId"] = 132222,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["wing_clip"] = {
      ["name"] = "Wing Clip",
      ["soundFileName"] = "wing_clip",
      ["spellIconId"] = 132309,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["aimed_shot"] = {
      ["name"] = "Aimed Shot",
      ["soundFileName"] = "aimed_shot",
      ["spellIconId"] = 135130,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["bestial_wrath"] = {
      ["name"] = "Bestial Wrath",
      ["soundFileName"] = "bestial_wrath",
      ["spellIconId"] = 132127,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["counterattack"] = {
      ["name"] = "Counterattack",
      ["soundFileName"] = "counterattack",
      ["spellIconId"] = 132336,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["deterrence"] = {
      ["name"] = "Deterrence",
      ["soundFileName"] = "deterrence",
      ["spellIconId"] = 132369,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["intimidation"] = {
      ["name"] = "Intimidation",
      ["soundFileName"] = "intimidation",
      ["spellIconId"] = 132111,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["readiness"] = {
      ["name"] = "Readiness",
      ["soundFileName"] = "readiness",
      ["spellIconId"] = 132206,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["scatter_shot"] = {
      ["name"] = "Scatter Shot",
      ["soundFileName"] = "scatter_shot",
      ["spellIconId"] = 132153,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["silencing_shot"] = {
      ["name"] = "Silencing Shot",
      ["soundFileName"] = "silencing_shot",
      ["spellIconId"] = 132323,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["the_beast_within"] = {
      ["name"] = "The Beast Within",
      ["soundFileName"] = "the_beast_within",
      ["spellIconId"] = 132166,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["trueshot_aura"] = {
      ["name"] = "Trueshot Aura",
      ["soundFileName"] = "trueshot_aura",
      ["spellIconId"] = 132329,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["wyvern_sting"] = {
      ["name"] = "Wyvern Sting",
      ["soundFileName"] = "wyvern_sting",
      ["spellIconId"] = 135125,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    }
  },
  [categories.MAGE.id] = {
    ["amplify_magic"] = {
      ["name"] = "Amplify Magic",
      ["soundFileName"] = "amplify_magic",
      ["spellIconId"] = 135907,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["arcane_blast"] = {
      ["name"] = "Arcane Blast",
      ["soundFileName"] = "arcane_blast",
      ["spellIconId"] = 135735,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["arcane_brilliance"] = {
      ["name"] = "Arcane Brilliance",
      ["soundFileName"] = "arcane_brilliance",
      ["spellIconId"] = 135869,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["arcane_explosion"] = {
      ["name"] = "Arcane Explosion",
      ["soundFileName"] = "arcane_explosion",
      ["spellIconId"] = 136116,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["arcane_intellect"] = {
      ["name"] = "Arcane Intellect",
      ["soundFileName"] = "arcane_intellect",
      ["spellIconId"] = 135932,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["arcane_missiles"] = {
      ["name"] = "Arcane Missiles",
      ["soundFileName"] = "arcane_missiles",
      ["spellIconId"] = 136096,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["blink"] = {
      ["name"] = "Blink",
      ["soundFileName"] = "blink",
      ["spellIconId"] = 135736,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["blizzard"] = {
      ["name"] = "Blizzard",
      ["soundFileName"] = "blizzard",
      ["spellIconId"] = 135857,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cone_of_cold"] = {
      ["name"] = "Cone of Cold",
      ["soundFileName"] = "cone_of_cold",
      ["spellIconId"] = 135852,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["conjure_food"] = {
      ["name"] = "Conjure Food",
      ["soundFileName"] = "conjure_food",
      ["spellIconId"] = 133988,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["conjure_mana_agate"] = {
      ["name"] = "Conjure Mana Agate",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134104,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["conjure_mana_citrine"] = {
      ["name"] = "Conjure Mana Citrine",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134116,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["conjure_mana_emerald"] = {
      ["name"] = "Conjure Mana Emerald",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134134,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["conjure_mana_jade"] = {
      ["name"] = "Conjure Mana Jade",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134105,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["conjure_mana_ruby"] = {
      ["name"] = "Conjure Mana Ruby",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134128,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["conjure_water"] = {
      ["name"] = "Conjure Water",
      ["soundFileName"] = "conjure_water",
      ["spellIconId"] = 132803,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["counterspell"] = {
      ["name"] = "Counterspell",
      ["soundFileName"] = "counterspell",
      ["spellIconId"] = 135856,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["dampen_magic"] = {
      ["name"] = "Dampen Magic",
      ["soundFileName"] = "dampen_magic",
      ["spellIconId"] = 136006,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["evocation"] = {
      ["name"] = "Evocation",
      ["soundFileName"] = "evocation",
      ["spellIconId"] = 136075,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
      }
    },
    ["fire_blast"] = {
      ["name"] = "Fire Blast",
      ["soundFileName"] = "fire_blast",
      ["spellIconId"] = 135807,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["fire_ward"] = {
      ["name"] = "Fire Ward",
      ["soundFileName"] = "fire_ward",
      ["spellIconId"] = 135806,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["fireball"] = {
      ["name"] = "Fireball",
      ["soundFileName"] = "fireball",
      ["spellIconId"] = 135812,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["flamestrike"] = {
      ["name"] = "Flamestrike",
      ["soundFileName"] = "flamestrike",
      ["spellIconId"] = 135826,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["frost_armor"] = {
      ["name"] = "Frost Armor",
      ["soundFileName"] = "frost_armor",
      ["spellIconId"] = 135843,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["frost_nova"] = {
      ["name"] = "Frost Nova",
      ["soundFileName"] = "frost_nova",
      ["spellIconId"] = 135848,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["frost_ward"] = {
      ["name"] = "Frost Ward",
      ["soundFileName"] = "frost_ward",
      ["spellIconId"] = 135850,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["frostbolt"] = {
      ["name"] = "Frostbolt",
      ["soundFileName"] = "frostbolt",
      ["spellIconId"] = 135846,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["ice_armor"] = {
      ["name"] = "Ice Armor",
      ["soundFileName"] = "ice_armor",
      ["spellIconId"] = 135843,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["ice_block"] = {
      ["name"] = "Ice Block",
      ["soundFileName"] = "ice_block",
      ["spellIconId"] = 135841,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ice_lance"] = {
      ["name"] = "Ice Lance",
      ["soundFileName"] = "ice_lance",
      ["spellIconId"] = 135844,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["invisibility"] = {
      ["name"] = "Invisibility",
      ["soundFileName"] = "invisibility",
      ["spellIconId"] = 132220,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mage_armor"] = {
      ["name"] = "Mage Armor",
      ["soundFileName"] = "mage_armor",
      ["spellIconId"] = 135991,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["mana_shield"] = {
      ["name"] = "Mana Shield",
      ["soundFileName"] = "mana_shield",
      ["spellIconId"] = 136153,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["molten_armor"] = {
      ["name"] = "Molten Armor",
      ["soundFileName"] = "molten_armor",
      ["spellIconId"] = 135991,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["polymorph"] = {
      ["name"] = "Polymorph",
      ["soundFileName"] = "polymorph",
      ["spellIconId"] = 136071,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["polymorph_pig"] = {
      ["name"] = "Polymorph: Pig",
      ["soundFileName"] = "polymorph",
      ["spellIconId"] = 135997,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["polymorph_turtle"] = {
      ["name"] = "Polymorph: Turtle",
      ["soundFileName"] = "polymorph",
      ["spellIconId"] = 132199,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["remove_lesser_curse"] = {
      ["name"] = "Remove Lesser Curse",
      ["soundFileName"] = "remove_curse",
      ["spellIconId"] = 136082,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["scorch"] = {
      ["name"] = "Scorch",
      ["soundFileName"] = "scorch",
      ["spellIconId"] = 135827,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["slow_fall"] = {
      ["name"] = "Slow Fall",
      ["soundFileName"] = "slow_fall",
      ["spellIconId"] = 135992,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["spellsteal"] = {
      ["name"] = "Spellsteal",
      ["soundFileName"] = "spellsteal",
      ["spellIconId"] = 135729,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["arcane_power"] = {
      ["name"] = "Arcane Power",
      ["soundFileName"] = "arcane_power",
      ["spellIconId"] = 136048,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blast_wave"] = {
      ["name"] = "Blast Wave",
      ["soundFileName"] = "blast_wave",
      ["spellIconId"] = 135903,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["cold_snap"] = {
      ["name"] = "Cold Snap",
      ["soundFileName"] = "cold_snap",
      ["spellIconId"] = 135865,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["combustion"] = {
      ["name"] = "Combustion",
      ["soundFileName"] = "combustion",
      ["spellIconId"] = 135824,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["dragons_breath"] = {
      ["name"] = "Dragon's Breath",
      ["soundFileName"] = "dragons_breath",
      ["spellIconId"] = 134153,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["ice_barrier"] = {
      ["name"] = "Ice Barrier",
      ["soundFileName"] = "ice_barrier",
      ["spellIconId"] = 135988,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["icy_veins"] = {
      ["name"] = "Icy Veins",
      ["soundFileName"] = "icy_veins",
      ["spellIconId"] = 135838,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["presence_of_mind"] = {
      ["name"] = "Presence of Mind",
      ["soundFileName"] = "presence_of_mind",
      ["spellIconId"] = 136031,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["pyroblast"] = {
      ["name"] = "Pyroblast",
      ["soundFileName"] = "pyroblast",
      ["spellIconId"] = 135808,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["slow"] = {
      ["name"] = "Slow",
      ["soundFileName"] = "slow",
      ["spellIconId"] = 136091,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["summon_water_elemental"] = {
      ["name"] = "Summon Water Elemental",
      ["soundFileName"] = "summon_water_elemental",
      ["spellIconId"] = 135862,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    }
  },
  [categories.PALADIN.id] = {
    ["avenging_wrath"] = {
      ["name"] = "Avenging Wrath",
      ["soundFileName"] = "avenging_wrath",
      ["spellIconId"] = 135875,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blessing_of_freedom"] = {
      ["name"] = "Blessing of Freedom",
      ["soundFileName"] = "blessing_of_freedom",
      ["spellIconId"] = 135968,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blessing_of_light"] = {
      ["name"] = "Blessing of Light",
      ["soundFileName"] = "blessing_of_light",
      ["spellIconId"] = 135943,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["blessing_of_might"] = {
      ["name"] = "Blessing of Might",
      ["soundFileName"] = "blessing_of_might",
      ["spellIconId"] = 135906,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["blessing_of_protection"] = {
      ["name"] = "Blessing of Protection",
      ["soundFileName"] = "blessing_of_protection",
      ["spellIconId"] = 135964,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blessing_of_sacrifice"] = {
      ["name"] = "Blessing of Sacrifice",
      ["soundFileName"] = "blessing_of_sacrifice",
      ["spellIconId"] = 135966,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["blessing_of_wisdom"] = {
      ["name"] = "Blessing of Wisdom",
      ["soundFileName"] = "blessing_of_wisdom",
      ["spellIconId"] = 135970,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["cleanse"] = {
      ["name"] = "Cleanse",
      ["soundFileName"] = "cleanse",
      ["spellIconId"] = 135953,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["concentration_aura"] = {
      ["name"] = "Concentration Aura",
      ["soundFileName"] = "concentration_aura",
      ["spellIconId"] = 135933,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["consecration"] = {
      ["name"] = "Consecration",
      ["soundFileName"] = "consecration",
      ["spellIconId"] = 135926,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["crusader_aura"] = {
      ["name"] = "Crusader Aura",
      ["soundFileName"] = "crusader_aura",
      ["spellIconId"] = 135890,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["devotion_aura"] = {
      ["name"] = "Devotion Aura",
      ["soundFileName"] = "devotion_aura",
      ["spellIconId"] = 135893,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_intervention"] = {
      ["name"] = "Divine Intervention",
      ["soundFileName"] = "divine_intervention",
      ["spellIconId"] = 136106,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_protection"] = {
      ["name"] = "Divine Protection",
      ["soundFileName"] = "divine_protection",
      ["spellIconId"] = 135954,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["divine_shield"] = {
      ["name"] = "Divine Shield",
      ["soundFileName"] = "divine_shield",
      ["spellIconId"] = 135896,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["fire_resistance_aura"] = {
      ["name"] = "Fire Resistance Aura",
      ["soundFileName"] = "fire_resistance_aura",
      ["spellIconId"] = 135824,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flash_of_light"] = {
      ["name"] = "Flash of Light",
      ["soundFileName"] = "flash_of_light",
      ["spellIconId"] = 135907,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["frost_resistance_aura"] = {
      ["name"] = "Frost Resistance Aura",
      ["soundFileName"] = "frost_resistance_aura",
      ["spellIconId"] = 135865,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["greater_blessing_of_kings"] = {
      ["name"] = "Greater Blessing of Kings",
      ["soundFileName"] = "greater_blessing_of_kings",
      ["spellIconId"] = 135993,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["greater_blessing_of_light"] = {
      ["name"] = "Greater Blessing of Light",
      ["soundFileName"] = "greater_blessing_of_light",
      ["spellIconId"] = 135909,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["greater_blessing_of_might"] = {
      ["name"] = "Greater Blessing of Might",
      ["soundFileName"] = "greater_blessing_of_might",
      ["spellIconId"] = 135908,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["greater_blessing_of_wisdom"] = {
      ["name"] = "Greater Blessing of Wisdom",
      ["soundFileName"] = "greater_blessing_of_wisdom",
      ["spellIconId"] = 135912,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["hammer_of_justice"] = {
      ["name"] = "Hammer of Justice",
      ["soundFileName"] = "hammer_of_justice",
      ["spellIconId"] = 135963,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["hammer_of_wrath"] = {
      ["name"] = "Hammer of Wrath",
      ["soundFileName"] = "hammer_of_wrath",
      ["spellIconId"] = 132326,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["holy_light"] = {
      ["name"] = "Holy Light",
      ["soundFileName"] = "holy_light",
      ["spellIconId"] = 135920,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["judgement"] = {
      ["name"] = "Judgement",
      ["soundFileName"] = "judgement",
      ["spellIconId"] = 135959,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["lay_on_hands"] = {
      ["name"] = "Lay on Hands",
      ["soundFileName"] = "lay_on_hands",
      ["spellIconId"] = 135928,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["purify"] = {
      ["name"] = "Purify",
      ["soundFileName"] = "purify",
      ["spellIconId"] = 135949,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["redemption"] = {
      ["name"] = "Redemption",
      ["soundFileName"] = "redemption",
      ["spellIconId"] = 135955,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["retribution_aura"] = {
      ["name"] = "Retribution Aura",
      ["soundFileName"] = "retribution_aura",
      ["spellIconId"] = 135873,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_blood"] = {
      ["name"] = "Seal of Blood",
      ["soundFileName"] = "seal_of_blood",
      ["spellIconId"] = 135961,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_corruption"] = {
      ["name"] = "Seal of Corruption",
      ["soundFileName"] = "seal_of_corruption",
      ["spellIconId"] = 135969,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_justice"] = {
      ["name"] = "Seal of Justice",
      ["soundFileName"] = "seal_of_justice",
      ["spellIconId"] = 135971,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_light"] = {
      ["name"] = "Seal of Light",
      ["soundFileName"] = "seal_of_light",
      ["spellIconId"] = 135917,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_righteousness"] = {
      ["name"] = "Seal of Righteousness",
      ["soundFileName"] = "seal_of_righteousness",
      ["spellIconId"] = 132325,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_the_crusader"] = {
      ["name"] = "Seal of the Crusader",
      ["soundFileName"] = "seal_of_the_crusader",
      ["spellIconId"] = 135924,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_the_martyr"] = {
      ["name"] = "Seal of the Martyr",
      ["soundFileName"] = "seal_of_the_martyr",
      ["spellIconId"] = 135961,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_vengeance"] = {
      ["name"] = "Seal of Vengeance",
      ["soundFileName"] = "seal_of_vengeance",
      ["spellIconId"] = 135969,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_wisdom"] = {
      ["name"] = "Seal of Wisdom",
      ["soundFileName"] = "seal_of_wisdom",
      ["spellIconId"] = 135960,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadow_resistance_aura"] = {
      ["name"] = "Shadow Resistance Aura",
      ["soundFileName"] = "shadow_resistance_aura",
      ["spellIconId"] = 136192,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["avengers_shield"] = {
      ["name"] = "Avenger's Shield",
      ["soundFileName"] = "avengers_shield",
      ["spellIconId"] = 135874,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["blessing_of_kings"] = {
      ["name"] = "Blessing of Kings",
      ["soundFileName"] = "blessing_of_kings",
      ["spellIconId"] = 135995,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["blessing_of_sanctuary"] = {
      ["name"] = "Blessing of Sanctuary",
      ["soundFileName"] = "blessing_of_sanctuary",
      ["spellIconId"] = 136051,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["crusader_strike"] = {
      ["name"] = "Crusader Strike",
      ["soundFileName"] = "crusader_strike",
      ["spellIconId"] = 135891,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_favor"] = {
      ["name"] = "Divine Favor",
      ["soundFileName"] = "divine_favor",
      ["spellIconId"] = 135915,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["holy_shock"] = {
      ["name"] = "Holy Shock",
      ["soundFileName"] = "holy_shock",
      ["spellIconId"] = 135972,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["repentance"] = {
      ["name"] = "Repentance",
      ["soundFileName"] = "repentance",
      ["spellIconId"] = 135942,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["seal_of_command"] = {
      ["name"] = "Seal of Command",
      ["soundFileName"] = "seal_of_command",
      ["spellIconId"] = 132347,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    }
  },
  [categories.PRIEST.id] = {
    ["abolish_disease"] = {
      ["name"] = "Abolish Disease",
      ["soundFileName"] = "abolish_disease",
      ["spellIconId"] = 136066,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["binding_heal"] = {
      ["name"] = "Binding Heal",
      ["soundFileName"] = "binding_heal",
      ["spellIconId"] = 135883,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["chastise"] = {
      ["name"] = "Chastise",
      ["soundFileName"] = "chastise",
      ["spellIconId"] = 135886,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["consume_magic"] = {
      ["name"] = "Consume Magic",
      ["soundFileName"] = "consume_magic",
      ["spellIconId"] = 135754,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cure_disease"] = {
      ["name"] = "Cure Disease",
      ["soundFileName"] = "cure_disease",
      ["spellIconId"] = 135935,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["desperate_prayer"] = {
      ["name"] = "Desperate Prayer",
      ["soundFileName"] = "desperate_prayer",
      ["spellIconId"] = 135954,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["devouring_plague"] = {
      ["name"] = "Devouring Plague",
      ["soundFileName"] = "devouring_plague",
      ["spellIconId"] = 136123,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["dispel_magic"] = {
      ["name"] = "Dispel Magic",
      ["soundFileName"] = "dispel_magic",
      ["spellIconId"] = 135894,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["elunes_grace"] = {
      ["name"] = "Elune's Grace",
      ["soundFileName"] = "elunes_grace",
      ["spellIconId"] = 135900,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["greater_heal"] = {
      ["name"] = "Greater Heal",
      ["soundFileName"] = "greater_heal",
      ["spellIconId"] = 135913,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["heal"] = {
      ["name"] = "Heal",
      ["soundFileName"] = "heal",
      ["spellIconId"] = 135916,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["hex_of_weakness"] = {
      ["name"] = "Hex of Weakness",
      ["soundFileName"] = "hex_of_weakness",
      ["spellIconId"] = 136157,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["holy_fire"] = {
      ["name"] = "Holy Fire",
      ["soundFileName"] = "holy_fire",
      ["spellIconId"] = 135972,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["inner_fire"] = {
      ["name"] = "Inner Fire",
      ["soundFileName"] = "inner_fire",
      ["spellIconId"] = 135926,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["levitate"] = {
      ["name"] = "Levitate",
      ["soundFileName"] = "levitate",
      ["spellIconId"] = 135928,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["mass_dispel"] = {
      ["name"] = "Mass Dispel",
      ["soundFileName"] = "mass_dispel",
      ["spellIconId"] = 135739,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["mind_blast"] = {
      ["name"] = "Mind Blast",
      ["soundFileName"] = "mind_blast",
      ["spellIconId"] = 136224,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["mind_control"] = {
      ["name"] = "Mind Control",
      ["soundFileName"] = "mind_control",
      ["spellIconId"] = 136206,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["mind_vision"] = {
      ["name"] = "Mind Vision",
      ["soundFileName"] = "mind_vision",
      ["spellIconId"] = 135934,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["power_word_fortitude"] = {
      ["name"] = "Power Word: Fortitude",
      ["soundFileName"] = "power_word_fortitude",
      ["spellIconId"] = 135987,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["prayer_of_mending"] = {
      ["name"] = "Prayer of Mending",
      ["soundFileName"] = "prayer_of_mending",
      ["spellIconId"] = 135944,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["prayer_of_shadow_protection"] = {
      ["name"] = "Prayer of Shadow Protection",
      ["soundFileName"] = "prayer_of_shadow_protection",
      ["spellIconId"] = 135945,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["renew"] = {
      ["name"] = "Renew",
      ["soundFileName"] = "renew",
      ["spellIconId"] = 135953,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["resurrection"] = {
      ["name"] = "Resurrection",
      ["soundFileName"] = "resurrection",
      ["spellIconId"] = 135955,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["shadow_protection"] = {
      ["name"] = "Shadow Protection",
      ["soundFileName"] = "shadow_protection",
      ["spellIconId"] = 136121,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shadow_word_pain"] = {
      ["name"] = "Shadow Word: Pain",
      ["soundFileName"] = "shadow_word_pain",
      ["spellIconId"] = 136207,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shadowfiend"] = {
      ["name"] = "Shadowfiend",
      ["soundFileName"] = "shadowfiend",
      ["spellIconId"] = 136199,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadowguard"] = {
      ["name"] = "Shadowguard",
      ["soundFileName"] = "shadowguard",
      ["spellIconId"] = 136051,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["starshards"] = {
      ["name"] = "Starshards",
      ["soundFileName"] = "starshards",
      ["spellIconId"] = 135753,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["symbol_of_hope"] = {
      ["name"] = "Symbol of Hope",
      ["soundFileName"] = "symbol_of_hope",
      ["spellIconId"] = 135982,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["touch_of_weakness"] = {
      ["name"] = "Touch of Weakness",
      ["soundFileName"] = "touch_of_weakness",
      ["spellIconId"] = 136143,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["circle_of_healing"] = {
      ["name"] = "Circle of Healing",
      ["soundFileName"] = "circle_of_healing",
      ["spellIconId"] = 135887,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_spirit"] = {
      ["name"] = "Divine Spirit",
      ["soundFileName"] = "divine_spirit",
      ["spellIconId"] = 135898,
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
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["inner_focus"] = {
      ["name"] = "Inner Focus",
      ["soundFileName"] = "inner_focus",
      ["spellIconId"] = 135863,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mind_flay"] = {
      ["name"] = "Mind Flay",
      ["soundFileName"] = "mind_flay",
      ["spellIconId"] = 136208,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["pain_suppression"] = {
      ["name"] = "Pain Suppression",
      ["soundFileName"] = "pain_suppression",
      ["spellIconId"] = 135936,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["power_infusion"] = {
      ["name"] = "Power Infusion",
      ["soundFileName"] = "power_infusion",
      ["spellIconId"] = 135939,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shadowform"] = {
      ["name"] = "Shadowform",
      ["soundFileName"] = "shadowform",
      ["spellIconId"] = 136200,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["silence"] = {
      ["name"] = "Silence",
      ["soundFileName"] = "silence",
      ["spellIconId"] = 136164,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["vampiric_embrace"] = {
      ["name"] = "Vampiric Embrace",
      ["soundFileName"] = "vampiric_embrace",
      ["spellIconId"] = 136230,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["vampiric_touch"] = {
      ["name"] = "Vampiric Touch",
      ["soundFileName"] = "vampiric_touch",
      ["spellIconId"] = 135978,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    }
  },
  [categories.ROGUE.id] = {
    ["ambush"] = {
      ["name"] = "Ambush",
      ["soundFileName"] = "ambush",
      ["spellIconId"] = 132282,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["anesthetic_poison_effect"] = {
      ["name"] = "Anesthetic Poison (Effect)",
      ["soundFileName"] = "anesthetic_poison",
      ["spellIconId"] = 136093,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_MISSED"
      }
    },
    ["anesthetic_poison"] = {
      ["name"] = "Anesthetic Poison (Applied)",
      ["soundFileName"] = "anesthetic_poison_applied",
      ["spellIconId"] = 136093,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["backstab"] = {
      ["name"] = "Backstab",
      ["soundFileName"] = "backstab",
      ["spellIconId"] = 132090,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["blind"] = {
      ["name"] = "Blind",
      ["soundFileName"] = "blind",
      ["spellIconId"] = 136175,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["cheap_shot"] = {
      ["name"] = "Cheap Shot",
      ["soundFileName"] = "cheap_shot",
      ["spellIconId"] = 132092,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["cloak_of_shadows"] = {
      ["name"] = "Cloak of Shadows",
      ["soundFileName"] = "cloak_of_shadows",
      ["spellIconId"] = 136177,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["crippling_poison_effect"] = {
      ["name"] = "Crippling Poison (Effect)",
      ["soundFileName"] = "crippling_poison",
      ["spellIconId"] = 132274,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_MISSED"
      }
    },
    ["crippling_poison"] = {
      ["name"] = "Crippling Poison (Applied)",
      ["soundFileName"] = "crippling_poison_applied",
      ["spellIconId"] = 132274,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["deadly_poison_effect"] = {
      ["name"] = "Deadly Poison (Effect)",
      ["soundFileName"] = "deadly_poison",
      ["spellIconId"] = 132290,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_MISSED"
      }
    },
    ["deadly_poison"] = {
      ["name"] = "Deadly Poison (Applied)",
      ["soundFileName"] = "deadly_poison_applied",
      ["spellIconId"] = 132290,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["deadly_throw"] = {
      ["name"] = "Deadly Throw",
      ["soundFileName"] = "deadly_throw",
      ["spellIconId"] = 135430,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["distract"] = {
      ["name"] = "Distract",
      ["soundFileName"] = "distract",
      ["spellIconId"] = 132289,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["envenom"] = {
      ["name"] = "Envenom",
      ["soundFileName"] = "envenom",
      ["spellIconId"] = 132287,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["evasion"] = {
      ["name"] = "Evasion",
      ["soundFileName"] = "evasion",
      ["spellIconId"] = 136205,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["eviscerate"] = {
      ["name"] = "Eviscerate",
      ["soundFileName"] = "eviscerate",
      ["spellIconId"] = 132292,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["expose_armor"] = {
      ["name"] = "Expose Armor",
      ["soundFileName"] = "expose_armor",
      ["spellIconId"] = 132354,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["garrote"] = {
      ["name"] = "Garrote",
      ["soundFileName"] = "garrote",
      ["spellIconId"] = 132297,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["gouge"] = {
      ["name"] = "Gouge",
      ["soundFileName"] = "gouge",
      ["spellIconId"] = 132155,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["instant_poison_effect"] = {
      ["name"] = "Instant Poison (Effect)",
      ["soundFileName"] = "instant_poison",
      ["spellIconId"] = 132273,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_MISSED"
      }
    },
    ["instant_poison"] = {
      ["name"] = "Instant Poison (Applied)",
      ["soundFileName"] = "instant_poison_applied",
      ["spellIconId"] = 132273,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["kick"] = {
      ["name"] = "Kick",
      ["soundFileName"] = "kick",
      ["spellIconId"] = 132219,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["kidney_shot"] = {
      ["name"] = "Kidney Shot",
      ["soundFileName"] = "kidney_shot",
      ["spellIconId"] = 132298,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["mind_numbing_poison_effect"] = {
      ["name"] = "Mind-numbing Poison (Effect)",
      ["soundFileName"] = "mind_numbing_poison",
      ["spellIconId"] = 136066,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_MISSED"
      }
    },
    ["mind_numbing_poison"] = {
      ["name"] = "Mind-numbing Poison (Applied)",
      ["soundFileName"] = "mind_numbing_poison_applied",
      ["spellIconId"] = 136066,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["rupture"] = {
      ["name"] = "Rupture",
      ["soundFileName"] = "rupture",
      ["spellIconId"] = 132302,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["sap"] = {
      ["name"] = "Sap",
      ["soundFileName"] = "sap",
      ["spellIconId"] = 132310,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shiv"] = {
      ["name"] = "Shiv",
      ["soundFileName"] = "shiv",
      ["spellIconId"] = 135428,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["sinister_strike"] = {
      ["name"] = "Sinister Strike",
      ["soundFileName"] = "sinister_strike",
      ["spellIconId"] = 136189,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["slice_and_dice"] = {
      ["name"] = "Slice and Dice",
      ["soundFileName"] = "slice_and_dice",
      ["spellIconId"] = 132306,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["sprint"] = {
      ["name"] = "Sprint",
      ["soundFileName"] = "sprint",
      ["spellIconId"] = 132307,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["stealth"] = {
      ["name"] = "Stealth",
      ["soundFileName"] = "stealth",
      ["spellIconId"] = 132320,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["vanish"] = {
      ["name"] = "Vanish",
      ["soundFileName"] = "vanish",
      ["spellIconId"] = 132331,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["wound_poison_effect"] = {
      ["name"] = "Wound Poison (Effect)",
      ["soundFileName"] = "wound_poison",
      ["spellIconId"] = 134197,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_MISSED"
      }
    },
    ["wound_poison"] = {
      ["name"] = "Wound Poison (Applied)",
      ["soundFileName"] = "wound_poison_applied",
      ["spellIconId"] = 134197,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["adrenaline_rush"] = {
      ["name"] = "Adrenaline Rush",
      ["soundFileName"] = "adrenaline_rush",
      ["spellIconId"] = 136206,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blade_flurry"] = {
      ["name"] = "Blade Flurry",
      ["soundFileName"] = "blade_flurry",
      ["spellIconId"] = 132350,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["cheat_death"] = {
      ["name"] = "Cheat Death",
      ["soundFileName"] = "cheat_death",
      ["spellIconId"] = 132285,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cold_blood"] = {
      ["name"] = "Cold Blood",
      ["soundFileName"] = "cold_blood",
      ["spellIconId"] = 135988,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ghostly_strike"] = {
      ["name"] = "Ghostly Strike",
      ["soundFileName"] = "ghostly_strike",
      ["spellIconId"] = 136136,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["hemorrhage"] = {
      ["name"] = "Hemorrhage",
      ["soundFileName"] = "hemorrhage",
      ["spellIconId"] = 136168,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["mutilate"] = {
      ["name"] = "Mutilate",
      ["soundFileName"] = "mutilate",
      ["spellIconId"] = 132304,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["premeditation"] = {
      ["name"] = "Premeditation",
      ["soundFileName"] = "premeditation",
      ["spellIconId"] = 136183,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["preparation"] = {
      ["name"] = "Preparation",
      ["soundFileName"] = "preparation",
      ["spellIconId"] = 136121,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["riposte"] = {
      ["name"] = "Riposte",
      ["soundFileName"] = "riposte",
      ["spellIconId"] = 132336,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shadowstep"] = {
      ["name"] = "Shadowstep",
      ["soundFileName"] = "shadowstep",
      ["spellIconId"] = 132303,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    }
  },
  [categories.SHAMAN.id] = {
    ["ancestral_spirit"] = {
      ["name"] = "Ancestral Spirit",
      ["soundFileName"] = "ancestral_spirit",
      ["spellIconId"] = 136077,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["bloodlust"] = {
      ["name"] = "Bloodlust",
      ["soundFileName"] = "bloodlust",
      ["spellIconId"] = 136012,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["chain_heal"] = {
      ["name"] = "Chain Heal",
      ["soundFileName"] = "chain_heal",
      ["spellIconId"] = 136042,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["chain_lightning"] = {
      ["name"] = "Chain Lightning",
      ["soundFileName"] = "chain_lightning",
      ["spellIconId"] = 136015,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["cure_disease"] = {
      ["name"] = "Cure Disease",
      ["soundFileName"] = "cure_disease",
      ["spellIconId"] = 136083,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cure_poison"] = {
      ["name"] = "Cure Poison",
      ["soundFileName"] = "cure_poison",
      ["spellIconId"] = 136067,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["disease_cleansing_totem"] = {
      ["name"] = "Disease Cleansing Totem",
      ["soundFileName"] = "disease_cleansing_totem",
      ["spellIconId"] = 136019,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["earth_elemental_totem"] = {
      ["name"] = "Earth Elemental Totem",
      ["soundFileName"] = "earth_elemental_totem",
      ["spellIconId"] = 136024,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["earth_shock"] = {
      ["name"] = "Earth Shock",
      ["soundFileName"] = "earth_shock",
      ["spellIconId"] = 136026,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["earthbind_totem"] = {
      ["name"] = "Earthbind Totem",
      ["soundFileName"] = "earthbind_totem",
      ["spellIconId"] = 136102,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fire_elemental_totem"] = {
      ["name"] = "Fire  Elemental Totem",
      ["soundFileName"] = "fire_elemental_totem",
      ["spellIconId"] = 135790,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fire_nova_totem"] = {
      ["name"] = "Fire Nova Totem",
      ["soundFileName"] = "fire_nova_totem",
      ["spellIconId"] = 135824,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fire_resistance_totem"] = {
      ["name"] = "Fire Resistance Totem",
      ["soundFileName"] = "fire_resistance_totem",
      ["spellIconId"] = 135832,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flame_shock"] = {
      ["name"] = "Flame Shock",
      ["soundFileName"] = "flame_shock",
      ["spellIconId"] = 135813,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["flametongue_totem"] = {
      ["name"] = "Flametongue Totem",
      ["soundFileName"] = "flametongue_totem",
      ["spellIconId"] = 136040,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flametongue_weapon"] = {
      ["name"] = "Flametongue Weapon",
      ["soundFileName"] = "flametongue_weapon",
      ["spellIconId"] = 135814,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_resistance_totem"] = {
      ["name"] = "Frost Resistance Totem",
      ["soundFileName"] = "frost_resistance_totem",
      ["spellIconId"] = 135866,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_shock"] = {
      ["name"] = "Frost Shock",
      ["soundFileName"] = "frost_shock",
      ["spellIconId"] = 135849,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["frostbrand_weapon"] = {
      ["name"] = "Frostbrand Weapon",
      ["soundFileName"] = "frostbrand_weapon",
      ["spellIconId"] = 135847,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ghost_wolf"] = {
      ["name"] = "Ghost Wolf",
      ["soundFileName"] = "ghost_wolf",
      ["spellIconId"] = 136095,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["grace_of_air_totem"] = {
      ["name"] = "Grace of Air Totem",
      ["soundFileName"] = "grace_of_air_totem",
      ["spellIconId"] = 136046,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["grounding_totem"] = {
      ["name"] = "Grounding Totem",
      ["soundFileName"] = "grounding_totem",
      ["spellIconId"] = 136039,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["healing_stream_totem"] = {
      ["name"] = "Healing Stream Totem",
      ["soundFileName"] = "healing_stream_totem",
      ["spellIconId"] = 135127,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["healing_wave"] = {
      ["name"] = "Healing Wave",
      ["soundFileName"] = "healing_wave",
      ["spellIconId"] = 136052,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["heroism"] = {
      ["name"] = "Heroism",
      ["soundFileName"] = "heroism",
      ["spellIconId"] = 132313,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["lesser_healing_wave"] = {
      ["name"] = "Lesser Healing Wave",
      ["soundFileName"] = "lesser_healing_wave",
      ["spellIconId"] = 136043,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_CAST_START"
      }
    },
    ["lightning_bolt"] = {
      ["name"] = "Lightning Bolt",
      ["soundFileName"] = "lightning_bolt",
      ["spellIconId"] = 136048,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED",
        "SPELL_CAST_START"
      }
    },
    ["lightning_shield"] = {
      ["name"] = "Lightning Shield",
      ["soundFileName"] = "lightning_shield",
      ["spellIconId"] = 136051,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["magma_totem"] = {
      ["name"] = "Magma Totem",
      ["soundFileName"] = "magma_totem",
      ["spellIconId"] = 135826,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mana_spring_totem"] = {
      ["name"] = "Mana Spring Totem",
      ["soundFileName"] = "mana_spring_totem",
      ["spellIconId"] = 136053,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["nature_resistance_totem"] = {
      ["name"] = "Nature Resistance Totem",
      ["soundFileName"] = "nature_resistance_totem",
      ["spellIconId"] = 136061,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["poison_cleansing_totem"] = {
      ["name"] = "Poison Cleansing Totem",
      ["soundFileName"] = "poison_cleansing_totem",
      ["spellIconId"] = 136070,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["purge"] = {
      ["name"] = "Purge",
      ["soundFileName"] = "purge",
      ["spellIconId"] = 136075,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["reincarnation"] = {
      ["name"] = "Reincarnation",
      ["soundFileName"] = "reincarnation",
      ["spellIconId"] = 136080,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rockbiter_weapon"] = {
      ["name"] = "Rockbiter Weapon",
      ["soundFileName"] = "rockbiter_weapon",
      ["spellIconId"] = 136086,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["searing_totem"] = {
      ["name"] = "Searing Totem",
      ["soundFileName"] = "searing_totem",
      ["spellIconId"] = 135825,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["stoneclaw_totem"] = {
      ["name"] = "Stoneclaw Totem",
      ["soundFileName"] = "stoneclaw_totem",
      ["spellIconId"] = 136097,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["stoneskin_totem"] = {
      ["name"] = "Stoneskin Totem",
      ["soundFileName"] = "stoneskin_totem",
      ["spellIconId"] = 136098,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["strength_of_earth_totem"] = {
      ["name"] = "Strength of Earth Totem",
      ["soundFileName"] = "strength_of_earth_totem",
      ["spellIconId"] = 136023,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["tremor_totem"] = {
      ["name"] = "Tremor Totem",
      ["soundFileName"] = "tremor_totem",
      ["spellIconId"] = 136108,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["water_breathing"] = {
      ["name"] = "Water Breathing",
      ["soundFileName"] = "water_breathing",
      ["spellIconId"] = 136148,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["water_shield"] = {
      ["name"] = "Water Shield",
      ["soundFileName"] = "water_shield",
      ["spellIconId"] = 132315,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["windfury_totem"] = {
      ["name"] = "Windfury Totem",
      ["soundFileName"] = "windfury_totem",
      ["spellIconId"] = 136114,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["windfury_weapon"] = {
      ["name"] = "Windfury Weapon",
      ["soundFileName"] = "windfury_weapon",
      ["spellIconId"] = 136018,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["windwall_totem"] = {
      ["name"] = "Windwall Totem",
      ["soundFileName"] = "windwall_totem",
      ["spellIconId"] = 136022,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["wrath_of_air_totem"] = {
      ["name"] = "Wrath of Air Totem",
      ["soundFileName"] = "wrath_of_air_totem",
      ["spellIconId"] = 136092,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["earth_shield"] = {
      ["name"] = "Earth Shield",
      ["soundFileName"] = "earth_shield",
      ["spellIconId"] = 136089,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["elemental_mastery"] = {
      ["name"] = "Elemental Mastery",
      ["soundFileName"] = "elemental_mastery",
      ["spellIconId"] = 136115,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mana_tide_totem"] = {
      ["name"] = "Mana Tide Totem",
      ["soundFileName"] = "mana_tide_totem",
      ["spellIconId"] = 135861,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["natures_swiftness"] = {
      ["name"] = "Nature's Swiftness",
      ["soundFileName"] = "natures_swiftness",
      ["spellIconId"] = 136076,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shamanistic_rage"] = {
      ["name"] = "Shamanistic Rage",
      ["soundFileName"] = "shamanistic_rage",
      ["spellIconId"] = 136088,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["stormstrike"] = {
      ["name"] = "Stormstrike",
      ["soundFileName"] = "stormstrike",
      ["spellIconId"] = 132314,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["totem_of_wrath"] = {
      ["name"] = "Totem of Wrath",
      ["soundFileName"] = "totem_of_wrath",
      ["spellIconId"] = 135829,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    }
  },
  [categories.WARLOCK.id] = {
    ["banish"] = {
      ["name"] = "Banish",
      ["soundFileName"] = "banish",
      ["spellIconId"] = 136135,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["corruption"] = {
      ["name"] = "Corruption",
      ["soundFileName"] = "corruption",
      ["spellIconId"] = 136118,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["create_firestone"] = {
      ["name"] = "Create Firestone",
      ["soundFileName"] = "create_firestone",
      ["spellIconId"] = 134085,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["create_soulstone"] = {
      ["name"] = "Create Soulstone",
      ["soundFileName"] = "create_soulstone",
      ["spellIconId"] = 134336,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["soulstone_resurrection"] = {
      ["name"] = "Soulstone Resurrection",
      ["soundFileName"] = "soulstone_resurrection",
      ["spellIconId"] = 136210,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["create_spellstone"] = {
      ["name"] = "Create Spellstone",
      ["soundFileName"] = "create_spellstone",
      ["spellIconId"] = 134336,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["spellstone"] = {
      ["name"] = "Spellstone",
      ["soundFileName"] = "spellstone",
      ["spellIconId"] = 134131,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["curse_of_agony"] = {
      ["name"] = "Curse of Agony",
      ["soundFileName"] = "curse_of_agony",
      ["spellIconId"] = 136139,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["curse_of_recklessness"] = {
      ["name"] = "Curse of Recklessness",
      ["soundFileName"] = "curse_of_recklessness",
      ["spellIconId"] = 136225,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["curse_of_the_elements"] = {
      ["name"] = "Curse of the Elements",
      ["soundFileName"] = "curse_of_the_elements",
      ["spellIconId"] = 136130,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["curse_of_tongues"] = {
      ["name"] = "Curse of Tongues",
      ["soundFileName"] = "curse_of_tongues",
      ["spellIconId"] = 136140,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["curse_of_weakness"] = {
      ["name"] = "Curse of Weakness",
      ["soundFileName"] = "curse_of_weakness",
      ["spellIconId"] = 136138,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["death_coil"] = {
      ["name"] = "Death Coil",
      ["soundFileName"] = "death_coil",
      ["spellIconId"] = 136145,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["demon_armor"] = {
      ["name"] = "Demon Armor",
      ["soundFileName"] = "demon_armor",
      ["spellIconId"] = 136185,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["demon_skin"] = {
      ["name"] = "Demon Skin",
      ["soundFileName"] = "demon_skin",
      ["spellIconId"] = 136185,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["detect_invisibility"] = {
      ["name"] = "Detect Invisibility",
      ["soundFileName"] = "detect_invisibility",
      ["spellIconId"] = 136153,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["drain_life"] = {
      ["name"] = "Drain Life",
      ["soundFileName"] = "drain_life",
      ["spellIconId"] = 136169,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["drain_mana"] = {
      ["name"] = "Drain Mana",
      ["soundFileName"] = "drain_mana",
      ["spellIconId"] = 136208,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["drain_soul"] = {
      ["name"] = "Drain Soul",
      ["soundFileName"] = "drain_soul",
      ["spellIconId"] = 136163,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["eye_of_kilrogg"] = {
      ["name"] = "Eye of Kilrogg",
      ["soundFileName"] = "eye_of_kilrogg",
      ["spellIconId"] = 136155,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fear"] = {
      ["name"] = "Fear",
      ["soundFileName"] = "fear",
      ["spellIconId"] = 136183,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["fel_armor"] = {
      ["name"] = "Fel Armor",
      ["soundFileName"] = "fel_armor",
      ["spellIconId"] = 136156,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["health_funnel"] = {
      ["name"] = "Health Funnel",
      ["soundFileName"] = "health_funnel",
      ["spellIconId"] = 136168,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hellfire"] = {
      ["name"] = "Hellfire",
      ["soundFileName"] = "hellfire",
      ["spellIconId"] = 135818,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["howl_of_terror"] = {
      ["name"] = "Howl of Terror",
      ["soundFileName"] = "howl_of_terror",
      ["spellIconId"] = 136147,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["immolate"] = {
      ["name"] = "Immolate",
      ["soundFileName"] = "immolate",
      ["spellIconId"] = 135817,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["incinerate"] = {
      ["name"] = "Incinerate",
      ["soundFileName"] = "incinerate",
      ["spellIconId"] = 135789,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["life_tap"] = {
      ["name"] = "Life Tap",
      ["soundFileName"] = "life_tap",
      ["spellIconId"] = 136126,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rain_of_fire"] = {
      ["name"] = "Rain of Fire",
      ["soundFileName"] = "rain_of_fire",
      ["spellIconId"] = 136186,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ritual_of_souls"] = {
      ["name"] = "Ritual of Souls",
      ["soundFileName"] = "ritual_of_souls",
      ["spellIconId"] = 136194,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ritual_of_summoning"] = {
      ["name"] = "Ritual of Summoning",
      ["soundFileName"] = "ritual_of_summoning",
      ["spellIconId"] = 136223,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["searing_pain"] = {
      ["name"] = "Searing Pain",
      ["soundFileName"] = "searing_pain",
      ["spellIconId"] = 135827,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["seed_of_corruption"] = {
      ["name"] = "Seed of Corruption",
      ["soundFileName"] = "seed_of_corruption",
      ["spellIconId"] = 136193,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shadow_bolt"] = {
      ["name"] = "Shadow Bolt",
      ["soundFileName"] = "shadow_bolt",
      ["spellIconId"] = 136197,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shadow_ward"] = {
      ["name"] = "Shadow Ward",
      ["soundFileName"] = "shadow_ward",
      ["spellIconId"] = 136121,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["soul_fire"] = {
      ["name"] = "Soul Fire",
      ["soundFileName"] = "soul_fire",
      ["spellIconId"] = 135808,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["summon_felhunter"] = {
      ["name"] = "Summon Felhunter",
      ["soundFileName"] = "summon_felhunter",
      ["spellIconId"] = 136217,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["summon_imp"] = {
      ["name"] = "Summon Imp",
      ["soundFileName"] = "summon_imp",
      ["spellIconId"] = 136218,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["summon_succubus"] = {
      ["name"] = "Summon Succubus",
      ["soundFileName"] = "summon_succubus",
      ["spellIconId"] = 136220,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["summon_voidwalker"] = {
      ["name"] = "Summon Voidwalker",
      ["soundFileName"] = "summon_voidwalker",
      ["spellIconId"] = 136221,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["unending_breath"] = {
      ["name"] = "Unending Breath",
      ["soundFileName"] = "unending_breath",
      ["spellIconId"] = 136148,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["amplify_curse"] = {
      ["name"] = "Amplify Curse",
      ["soundFileName"] = "amplify_curse",
      ["spellIconId"] = 136132,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["conflagrate"] = {
      ["name"] = "Conflagrate",
      ["soundFileName"] = "conflagrate",
      ["spellIconId"] = 135807,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["curse_of_exhaustion"] = {
      ["name"] = "Curse of Exhaustion",
      ["soundFileName"] = "curse_of_exhaustion",
      ["spellIconId"] = 136162,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["dark_pact"] = {
      ["name"] = "Dark Pact",
      ["soundFileName"] = "dark_pact",
      ["spellIconId"] = 136141,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["demonic_sacrifice"] = {
      ["name"] = "Demonic Sacrifice",
      ["soundFileName"] = "demonic_sacrifice",
      ["spellIconId"] = 136184,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fel_domination"] = {
      ["name"] = "Fel Domination",
      ["soundFileName"] = "fel_domination",
      ["spellIconId"] = 136082,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["nether_protection"] = {
      ["name"] = "Nether Protection",
      ["soundFileName"] = "nether_protection",
      ["spellIconId"] = 136178,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["nightfall"] = {
      ["name"] = "Nightfall",
      ["soundFileName"] = "nightfall",
      ["spellIconId"] = 136223,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
        "SPELL_AURA_REFRESH"
      }
    },
    ["shadowburn"] = {
      ["name"] = "Shadowburn",
      ["soundFileName"] = "shadowburn",
      ["spellIconId"] = 136191,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shadowfury"] = {
      ["name"] = "Shadowfury",
      ["soundFileName"] = "shadowfury",
      ["spellIconId"] = 136201,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["siphon_life"] = {
      ["name"] = "Siphon Life",
      ["soundFileName"] = "siphon_life",
      ["spellIconId"] = 136188,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["soul_link"] = {
      ["name"] = "Soul Link",
      ["soundFileName"] = "soul_link",
      ["spellIconId"] = 136160,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["summon_felguard"] = {
      ["name"] = "Summon Felguard",
      ["soundFileName"] = "summon_felguard",
      ["spellIconId"] = 136216,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["unstable_affliction"] = {
      ["name"] = "Unstable Affliction",
      ["soundFileName"] = "unstable_affliction",
      ["spellIconId"] = 136228,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    }
  },
  [categories.WARRIOR.id] = {
    ["battle_stance"] = {
      ["name"] = "Battle Stance",
      ["soundFileName"] = "battle_stance",
      ["spellIconId"] = 132349,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["berserker_rage"] = {
      ["name"] = "Berserker Rage",
      ["soundFileName"] = "berserker_rage",
      ["spellIconId"] = 136009,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["berserker_stance"] = {
      ["name"] = "Berserker Stance",
      ["soundFileName"] = "berserker_stance",
      ["spellIconId"] = "132275",
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["bloodrage"] = {
      ["name"] = "Bloodrage",
      ["soundFileName"] = "bloodrage",
      ["spellIconId"] = 132277,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["charge"] = {
      ["name"] = "Charge",
      ["soundFileName"] = "charge",
      ["spellIconId"] = 132337,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["defensive_stance"] = {
      ["name"] = "Defensive Stance",
      ["soundFileName"] = "defensive_stance",
      ["spellIconId"] = 132341,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["demoralizing_shout"] = {
      ["name"] = "Demoralizing Shout",
      ["soundFileName"] = "demoralizing_shout",
      ["spellIconId"] = 132366,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["disarm"] = {
      ["name"] = "Disarm",
      ["soundFileName"] = "disarm",
      ["spellIconId"] = 132343,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["hamstring"] = {
      ["name"] = "Hamstring",
      ["soundFileName"] = "hamstring",
      ["spellIconId"] = 132316,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["intercept"] = {
      ["name"] = "Intercept",
      ["soundFileName"] = "intercept",
      ["spellIconId"] = 132307,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intervene"] = {
      ["name"] = "Intervene",
      ["soundFileName"] = "intervene",
      ["spellIconId"] = 132365,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["intimidating_shout"] = {
      ["name"] = "Intimidating Shout",
      ["soundFileName"] = "intimidating_shout",
      ["spellIconId"] = 132154,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["overpower"] = {
      ["name"] = "Overpower",
      ["soundFileName"] = "overpower",
      ["spellIconId"] = 132223,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["pummel"] = {
      ["name"] = "Pummel",
      ["soundFileName"] = "pummel",
      ["spellIconId"] = 132938,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["recklessness"] = {
      ["name"] = "Recklessness",
      ["soundFileName"] = "recklessness",
      ["spellIconId"] = 132109,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["retaliation"] = {
      ["name"] = "Retaliation",
      ["soundFileName"] = "retaliation",
      ["spellIconId"] = 132336,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_bash"] = {
      ["name"] = "Shield Bash",
      ["soundFileName"] = "shield_bash",
      ["spellIconId"] = 132357,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["shield_block"] = {
      ["name"] = "Shield Block",
      ["soundFileName"] = "shield_block",
      ["spellIconId"] = 132110,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_wall"] = {
      ["name"] = "Shield Wall",
      ["soundFileName"] = "shield_wall",
      ["spellIconId"] = 132362,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["spell_reflection"] = {
      ["name"] = "Spell Reflection",
      ["soundFileName"] = "spell_reflection",
      ["spellIconId"] = 132361,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["sunder_armor"] = {
      ["name"] = "Sunder Armor",
      ["soundFileName"] = "sunder_armor",
      ["spellIconId"] = 132363,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["whirlwind"] = {
      ["name"] = "Whirlwind",
      ["soundFileName"] = "whirlwind",
      ["spellIconId"] = 132369,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["concussion_blow"] = {
      ["name"] = "Concussion Blow",
      ["soundFileName"] = "concussion_blow",
      ["spellIconId"] = 132325,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["death_wish"] = {
      ["name"] = "Death Wish",
      ["soundFileName"] = "death_wish",
      ["spellIconId"] = 136146,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["last_stand"] = {
      ["name"] = "Last Stand",
      ["soundFileName"] = "last_stand",
      ["spellIconId"] = 135871,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mortal_strike"] = {
      ["name"] = "Mortal Strike",
      ["soundFileName"] = "mortal_strike",
      ["spellIconId"] = 132355,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["piercing_howl"] = {
      ["name"] = "Piercing Howl",
      ["soundFileName"] = "piercing_howl",
      ["spellIconId"] = 136147,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["rampage"] = {
      ["name"] = "Rampage",
      ["soundFileName"] = "rampage",
      ["spellIconId"] = 132352,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["second_wind"] = {
      ["name"] = "Second Wind",
      ["soundFileName"] = "second_wind",
      ["spellIconId"] = 132175,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shield_slam"] = {
      ["name"] = "Shield Slam",
      ["soundFileName"] = "shield_slam",
      ["spellIconId"] = 134951,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS",
        "SPELL_MISSED"
      }
    },
    ["sweeping_strikes"] = {
      ["name"] = "Sweeping Strikes",
      ["soundFileName"] = "sweeping_strikes",
      ["spellIconId"] = 132306,
      ["active"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    }
  },
  [categories.RACIALS.id] = {
    ["gift_of_the_naaru"] = {
      ["name"] = "Gift of the Naaru",
      ["soundFileName"] = "gift_of_the_naaru",
      ["spellIconId"] = 135923,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["stoneform"] = {
      ["name"] = "Stoneform",
      ["soundFileName"] = "stoneform",
      ["spellIconId"] = 136225,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["escape_artist"] = {
      ["name"] = "Escape Artist",
      ["soundFileName"] = "escape_artist",
      ["spellIconId"] = 132309,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["perception"] = {
      ["name"] = "Perception",
      ["soundFileName"] = "perception",
      ["spellIconId"] = 136090,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shadowmeld"] = {
      ["name"] = "Shadowmeld",
      ["soundFileName"] = "shadowmeld",
      ["spellIconId"] = 132089,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["arcane_torrent"] = {
      ["name"] = "Arcane Torrent",
      ["soundFileName"] = "arcane_torrent",
      ["spellIconId"] = 136222,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mana_tap"] = {
      ["name"] = "Mana Tap",
      ["soundFileName"] = "mana_tap",
      ["spellIconId"] = 135738,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["blood_fury"] = {
      ["name"] = "Blood Fury",
      ["soundFileName"] = "blood_fury",
      ["spellIconId"] = 135726,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["war_stomp"] = {
      ["name"] = "War Stomp",
      ["soundFileName"] = "war_stomp",
      ["spellIconId"] = 132368,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["berserking"] = {
      ["name"] = "Berserking",
      ["soundFileName"] = "berserking",
      ["spellIconId"] = 135727,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["cannibalize"] = {
      ["name"] = "Cannibalize",
      ["soundFileName"] = "cannibalize",
      ["spellIconId"] = 132278,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["will_of_the_forsaken"] = {
      ["name"] = "Will of the Forsaken",
      ["soundFileName"] = "will_of_the_forsaken",
      ["spellIconId"] = 136187,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    }
  },
  [categories.ITEMS.id] = {
    ["abacus_of_violent_odds"] = {
      ["name"] = "Abacus of Violent Odds",
      ["soundFileName"] = "abacus_of_violent_odds",
      ["spellIconId"] = 133876,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["adamantine_figurine"] = {
      ["name"] = "Adamantine Figurine",
      ["soundFileName"] = "adamantine_figurine",
      ["spellIconId"] = 134907,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ancient_aqir_artifact"] = {
      ["name"] = "Ancient Aqir Artifact",
      ["soundFileName"] = "ancient_aqir_artifact",
      ["spellIconId"] = 135443,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["battlemaster"] = {
      ["name"] = "Battlemaster Trinket",
      ["soundFileName"] = "battlemaster_trinket",
      ["spellIconId"] = 136035,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["berserkers_call"] = {
      ["name"] = "Berserker's Call",
      ["soundFileName"] = "berserkers_call",
      ["spellIconId"] = 135727,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["bloodlust_brooch"] = {
      ["name"] = "Bloodlust Brooch",
      ["soundFileName"] = "bloodlust_brooch",
      ["spellIconId"] = 134317,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["dark_iron_smoking_pipe"] = {
      ["name"] = "Dark Iron Smoking Pipe",
      ["soundFileName"] = "dark_iron_smoking_pipe",
      ["spellIconId"] = 134374,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["dimensional_ripper_area_52"] = {
      ["name"] = "Dimensional Ripper - Area 52",
      ["soundFileName"] = "dimensional_ripper_area_52",
      ["spellIconId"] = 133865,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["dimensional_ripper_everlook"] = {
      ["name"] = "Dimensional Ripper - Everlook",
      ["soundFileName"] = "dimensional_ripper_everlook",
      ["spellIconId"] = 133865,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["direbrew_hops"] = {
      ["name"] = "Direbrew Hops",
      ["soundFileName"] = "direbrew_hops",
      ["spellIconId"] = 134188,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["dragonspine_trophy"] = {
      ["name"] = "Dragonspine Trophy",
      ["soundFileName"] = "dragonspine_trophy",
      ["spellIconId"] = 133720,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["empty_mug_of_direbrew"] = {
      ["name"] = "Empty Mug of Direbrew",
      ["soundFileName"] = "empty_mug_of_direbrew",
      ["spellIconId"] = 132790,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["essence_of_the_martyr"] = {
      ["name"] = "Essence of the Martyr",
      ["soundFileName"] = "essence_of_the_martyr",
      ["spellIconId"] = 135447,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["figurine_crimson_serpent"] = {
      ["name"] = "Figurine - Crimson Serpent",
      ["soundFileName"] = "figurine_crimson_serpent",
      ["spellIconId"] = 133262,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["figurine_empyrean_tortoise"] = {
      ["name"] = "Figurine - Empyrean Tortoise",
      ["soundFileName"] = "figurine_empyrean_tortoise",
      ["spellIconId"] = 132199,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["figurine_felsteel_boar"] = {
      ["name"] = "Figurine - Felsteel Boar",
      ["soundFileName"] = "figurine_felsteel_boar",
      ["spellIconId"] = 133274,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["figurine_khorium_boar"] = {
      ["name"] = "Figurine - Khorium Boar",
      ["soundFileName"] = "figurine_khorium_boar",
      ["spellIconId"] = 133274,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["figurine_living_ruby_serpent"] = {
      ["name"] = "Figurine - Living Ruby Serpent",
      ["soundFileName"] = "figurine_living_ruby_serpent",
      ["spellIconId"] = 133262,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["figurine_nightseye_panther"] = {
      ["name"] = "Figurine - Nightseye Panther",
      ["soundFileName"] = "figurine_nightseye_panther",
      ["spellIconId"] = 133236,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["figurine_shadowsong_panther"] = {
      ["name"] = "Figurine - Shadowsong Panther",
      ["soundFileName"] = "figurine_shadowsong_panther",
      ["spellIconId"] = 133236,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["gnomish_poultryizer"] = {
      ["name"] = "Gnomish Poultryizer",
      ["soundFileName"] = "gnomish_poultryizer",
      ["spellIconId"] = 133864,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["goblin_rocket_launcher"] = {
      ["name"] = "Goblin Rocket Launcher",
      ["soundFileName"] = "goblin_rocket_launcher",
      ["spellIconId"] = 133032,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hex_shrunken_head"] = {
      ["name"] = "Hex Shrunken Head",
      ["soundFileName"] = "hex_shrunken_head",
      ["spellIconId"] = 134177,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["icon_of_the_silver_crescent"] = {
      ["name"] = "Icon of the Silver Crescent",
      ["soundFileName"] = "icon_of_the_silver_crescent",
      ["spellIconId"] = 135659,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["insignia_pvp_trinket"] = {
      ["name"] = (function()
        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_ALLIANCE then
          return "Medallion of the Alliance"
        end

        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_HORDE then
          return "Medallion of the Horde"
        end

        return nil
      end)(),
      ["soundFileName"] = "insignia_pvp_trinket",
      ["spellIconId"] = (function()
        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_ALLIANCE then
          return 133452
        end

        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_HORDE then
          return 133453
        end

        return nil
      end)(),
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mind_quickening_gem"] = {
      ["name"] = "Mind Quickening Gem",
      ["soundFileName"] = "mind_quickening_gem",
      ["spellIconId"] = 136115,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["moroes_lucky_pocket_watch"] = {
      ["name"] = "Moroes' Lucky Pocket Watch",
      ["soundFileName"] = "moroes_lucky_pocket_watch",
      ["spellIconId"] = 134377,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ribbon_of_sacrifice"] = {
      ["name"] = "Ribbon of Sacrifice",
      ["soundFileName"] = "ribbon_of_sacrifice",
      ["spellIconId"] = 133686,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shadowmoon_insignia"] = {
      ["name"] = "Shadowmoon Insignia",
      ["soundFileName"] = "shadowmoon_insignia",
      ["spellIconId"] = 133265,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shard_of_contempt"] = {
      ["name"] = "Shard of Contempt",
      ["soundFileName"] = "shard_of_contempt",
      ["spellIconId"] = 134417,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["spyglass_of_the_hidden_fleet"] = {
      ["name"] = "Spyglass of the Hidden Fleet",
      ["soundFileName"] = "spyglass_of_the_hidden_fleet",
      ["spellIconId"] = 134441,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["steely_naaru_sliver"] = {
      ["name"] = "Steely Naaru Sliver",
      ["soundFileName"] = "steely_naaru_sliver",
      ["spellIconId"] = 133451,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["talisman_trinket"] = {
      ["name"] = (function()
        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_ALLIANCE then
          return "Talisman of the Alliance"
        end

        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_HORDE then
          return "Talisman of the Horde"
        end

        return nil
      end)(),
      ["soundFileName"] = "talisman_trinket",
      ["spellIconId"] = (function()
        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_ALLIANCE then
          return 133443
        end

        if UnitFactionGroup(RGPVPW_CONSTANTS.UNIT_ID_PLAYER) == RGPVPW_CONSTANTS.FACTION_HORDE then
          return 133442
        end

        return nil
      end)(),
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["the_skull_of_guldan"] = {
      ["name"] = "The Skull of Gul'dan",
      ["soundFileName"] = "the_skull_of_guldan",
      ["spellIconId"] = 133729,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["tiny_voodoo_mask"] = {
      ["name"] = "Tiny Voodoo Mask",
      ["soundFileName"] = "tiny_voodoo_mask",
      ["spellIconId"] = 133067,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["tome_of_diabolic_remedy"] = {
      ["name"] = "Tome of Diabolic Remedy",
      ["soundFileName"] = "tome_of_diabolic_remedy",
      ["spellIconId"] = 134554,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["tsunami_talisman"] = {
      ["name"] = "Tsunami Talisman",
      ["soundFileName"] = "tsunami_talisman",
      ["spellIconId"] = 136111,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ultrasafe_transporter_gadgetzan"] = {
      ["name"] = "Ultrasafe Transporter: Gadgetzan",
      ["soundFileName"] = "ultrasafe_transporter_gadgetzan",
      ["spellIconId"] = 133870,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ultrasafe_transporter_toshleys_station"] = {
      ["name"] = "Ultrasafe Transporter: Toshley's Station",
      ["soundFileName"] = "ultrasafe_transporter_toshleys_station",
      ["spellIconId"] = 133870,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["vial_of_the_sunwell"] = {
      ["name"] = "Vial of the Sunwell",
      ["soundFileName"] = "vial_of_the_sunwell",
      ["spellIconId"] = 134728,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hyper_vision_goggles"] = {
      ["name"] = "Hyper-Vision Goggles",
      ["soundFileName"] = "hyper_vision_goggles",
      ["spellIconId"] = 133023,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["nigh_invulnerability_belt"] = {
      ["name"] = "Nigh-Invulnerability Belt",
      ["soundFileName"] = "nigh_invulnerability_belt",
      ["spellIconId"] = 132516,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["nigh_invulnerability_belt_backfire"] = {
      ["name"] = "Nigh-Invulnerability Belt (Backfire)",
      ["soundFileName"] = "nigh_invulnerability_belt_backfire",
      ["spellIconId"] = 132516,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["rocket_boots_xtreme"] = {
      ["name"] = "Rocket Boots Xtreme",
      ["soundFileName"] = "rocket_boots_xtreme",
      ["spellIconId"] = 133029,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["skull_of_impending_doom"] = {
      ["name"] = "Skull of Impending Doom",
      ["soundFileName"] = "flee",
      ["spellIconId"] = 133729,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["immune_root"] = {
      ["name"] = "Freedom (Spider Belt / Ornate Mithril Boots)",
      ["soundFileName"] = "immune_root",
      ["spellIconId"] = 136115,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    }
  },
  [categories.MISC.id] = {
    ["catseye_elixir"] = {
      ["name"] = "Catseye Elixir",
      ["soundFileName"] = "catseye_elixir",
      ["spellIconId"] = 134816,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["destruction_potion"] = {
      ["name"] = "Destruction Potion",
      ["soundFileName"] = "destruction_potion",
      ["spellIconId"] = 134729,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["free_action_potion"] = {
      ["name"] = "Free Action Potion",
      ["soundFileName"] = "free_action_potion",
      ["spellIconId"] = 134715,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["haste_potion"] = {
      ["name"] = "Haste Potion",
      ["soundFileName"] = "haste_potion",
      ["spellIconId"] = 134730,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["heroic_potion"] = {
      ["name"] = "Heroic Potion",
      ["soundFileName"] = "heroic_potion",
      ["spellIconId"] = 134728,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["insane_strength_potion"] = {
      ["name"] = "Insane Strength Potion",
      ["soundFileName"] = "insane_strength_potion",
      ["spellIconId"] = 134731,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["invisibility_potion"] = {
      ["name"] = "Invisibility Potion",
      ["soundFileName"] = "invisibility_potion",
      ["spellIconId"] = 134805,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ironshield_potion"] = {
      ["name"] = "Ironshield Potion",
      ["soundFileName"] = "ironshield_potion",
      ["spellIconId"] = 134758,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["lesser_invisibility_potion"] = {
      ["name"] = "Lesser Invisibility Potion",
      ["soundFileName"] = "lesser_invisibility_potion",
      ["spellIconId"] = 134798,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["living_action_potion"] = {
      ["name"] = "Living Action Potion",
      ["soundFileName"] = "living_action_potion",
      ["spellIconId"] = 134718,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["major_arcane_protection_potion"] = {
      ["name"] = "Major Arcane Protection Potion",
      ["soundFileName"] = "arcane_protection",
      ["spellIconId"] = 134752,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["major_fire_protection_potion"] = {
      ["name"] = "Major Fire Protection Potion",
      ["soundFileName"] = "fire_protection",
      ["spellIconId"] = 134748,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["major_frost_protection_potion"] = {
      ["name"] = "Major Frost Protection Potion",
      ["soundFileName"] = "frost_protection",
      ["spellIconId"] = 134750,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["major_holy_protection_potion"] = {
      ["name"] = "Major Holy Protection Potion",
      ["soundFileName"] = "holy_protection",
      ["spellIconId"] = 134749,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["major_nature_protection_potion"] = {
      ["name"] = "Major Nature Protection Potion",
      ["soundFileName"] = "nature_protection",
      ["spellIconId"] = 134751,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["major_shadow_protection_potion"] = {
      ["name"] = "Major Shadow Protection Potion",
      ["soundFileName"] = "shadow_protection",
      ["spellIconId"] = 134747,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mighty_rage_potion"] = {
      ["name"] = "Mighty Rage Potion",
      ["soundFileName"] = "mighty_rage_potion",
      ["spellIconId"] = 134821,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["rage_potion"] = {
      ["name"] = "Rage Potion",
      ["soundFileName"] = "rage_potion",
      ["spellIconId"] = 134804,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["restorative_potion"] = {
      ["name"] = "Restorative Potion",
      ["soundFileName"] = "restorative_potion",
      ["spellIconId"] = 134712,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["sneaking_potion"] = {
      ["name"] = "Sneaking Potion",
      ["soundFileName"] = "sneaking_potion",
      ["spellIconId"] = 134733,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["super_healing_potion"] = {
      ["name"] = "Super Healing Potion",
      ["soundFileName"] = "super_healing_potion",
      ["spellIconId"] = 134756,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["super_mana_potion"] = {
      ["name"] = "Super Mana Potion",
      ["soundFileName"] = "super_mana_potion",
      ["spellIconId"] = 134762,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["super_rejuvenation_potion"] = {
      ["name"] = "Super Rejuvenation Potion",
      ["soundFileName"] = "super_rejuvenation_potion",
      ["spellIconId"] = 134759,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["adamantite_grenade"] = {
      ["name"] = "Adamantite Grenade",
      ["soundFileName"] = "adamantite_grenade",
      ["spellIconId"] = 133716,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fel_iron_bomb"] = {
      ["name"] = "Fel Iron Bomb",
      ["soundFileName"] = "fel_iron_bomb",
      ["spellIconId"] = 133009,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_grenade"] = {
      ["name"] = "Frost Grenade",
      ["soundFileName"] = "frost_grenade",
      ["spellIconId"] = 135851,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["super_sapper_charge"] = {
      ["name"] = "Super Sapper Charge",
      ["soundFileName"] = "super_sapper_charge",
      ["spellIconId"] = 133035,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fel_blossom"] = {
      ["name"] = "Fel Blossom",
      ["soundFileName"] = "fel_blossom",
      ["spellIconId"] = 134206,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["nightmare_seed"] = {
      ["name"] = "Nightmare Seed",
      ["soundFileName"] = "nightmare_seed",
      ["spellIconId"] = 134217,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["thistle_tea"] = {
      ["name"] = "Thistle Tea",
      ["soundFileName"] = "thistle_tea",
      ["spellIconId"] = 132819,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["netherweave_net"] = {
      ["name"] = "Netherweave Net",
      ["soundFileName"] = "netherweave_net",
      ["spellIconId"] = 134325,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["first_aid"] = {
      ["name"] = "First Aid",
      ["soundFileName"] = "first_aid",
      ["spellIconId"] = 135966,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
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

  mod.logger.LogDebug(me.tag,
    "Searching for spell metadata with category {" .. spell.category .. "} and spellName {" .. spell.name .. "}")

  if spellMetaMap[spell.category] ~= nil and spellMetaMap[spell.category][spell.name] ~= nil then
    if me.SupportsEvent(spellMetaMap[spell.category][spell.name], event) then
      mod.logger.LogInfo(
        me.tag, "Found spell for category {" .. spell.category .. "} and spellName {" .. spell.name .. "}")

      return spellMetaMap[spell.category][spell.name]
    else
      return nil
    end
  end

  mod.logger.LogDebug(
    me.tag, "Spell with category {" .. spell.category .. "} and spellName {" .. spell.name .. "} not found")
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
  Get all spellMetaData for a specific category

  @param {number} category
  @param {table} eventFilter
    optional eventFilter such as SPELL_MISSED

  @return {table}
    table - the found spells and their respective spellMetaData
]]--
function me.GetSpellMetaDataByCategory(category, eventFilter)
  if not category then return nil end

  local spellList = {}

  for spellName, spellData in pairs(spellMetaMap[category]) do
    local shouldFilterSpell = false


    --[[
      If a filter was passed - filter the found spells for matching events
    ]]--
    if eventFilter ~= nil and type(eventFilter) == "table" then
      for i = 1, #eventFilter do
        if not tContains(spellData.trackedEvents, eventFilter[i]) then
          shouldFilterSpell = true
          mod.logger.LogDebug(
            me.tag,
            string.format(
              "Spell %s does not fulfill search criteria - missing supported event %s - disabling",
              spellName,
              eventFilter[i]
            )
          )
        end
      end
    end

    if not shouldFilterSpell then
      mod.logger.LogDebug(me.tag, string.format("Spell %s supports avoidEvent - enabling", spellName))
      local clonedSpell = mod.common.Clone(spellData)
      clonedSpell.normalizedSpellName = spellName
      table.insert(spellList, clonedSpell)
    end
  end

  return spellList
end

--[[
  Search for the spellData of a specific spell by its category and spellName

  @param {number} categoryId
  @param {string} spellName

  @return {table | nil}
    table - the found spellMetaData
    nil - if no data could be found
]]--
function me.GetSpellMetaDataByCategoryAndName(categoryId, spellName)
  if spellMetaMap[categoryId] ~= nil and spellMetaMap[categoryId][spellName] ~= nil then
    return spellMetaMap[categoryId][spellName]
  end

  mod.logger.LogDebug(
    me.tag, "Spell with categoryId {" .. categoryId .. "} and spellName {" .. spellName .. "} not found")
  return nil
end
