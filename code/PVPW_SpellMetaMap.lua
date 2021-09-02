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
  [categories.DRUID.id] = {
    ["abolish_poison"] = {
      ["name"] = "Abolish Poison",
      ["soundFileName"] = "abolish_poison",
      ["spellIconId"] = 136068,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["barkskin"] = {
      ["name"] = "Barkskin",
      ["soundFileName"] = "barkskin",
      ["spellIconId"] = 136097,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["bash"] = {
      ["name"] = "Bash",
      ["soundFileName"] = "bash",
      ["spellIconId"] = 132114,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["bear_form"] = {
      ["name"] = "Bear Form",
      ["soundFileName"] = "bear_form",
      ["spellIconId"] = 132276,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["cat_form"] = {
      ["name"] = "Cat Form",
      ["soundFileName"] = "cat_form",
      ["spellIconId"] = 132115,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["claw"] = {
      ["name"] = "Claw",
      ["soundFileName"] = "claw",
      ["spellIconId"] = 132140,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cower"] = {
      ["name"] = "Cower",
      ["soundFileName"] = "cower",
      ["spellIconId"] = 132118,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cure_poison"] = {
      ["name"] = "Cure Poison",
      ["soundFileName"] = "cure_poison",
      ["spellIconId"] = 136067,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["dash"] = {
      ["name"] = "Dash",
      ["soundFileName"] = "dash",
      ["spellIconId"] = 132120,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["demoralizing_roar"] = {
      ["name"] = "Demoralizing Roar",
      ["soundFileName"] = "demoralizing_roar",
      ["spellIconId"] = 132121,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["dire_bear_form"] = {
      ["name"] = "Dire Bear Form",
      ["soundFileName"] = "dire_bear_form",
      ["spellIconId"] = 132276,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["enrage"] = {
      ["name"] = "Enrage",
      ["soundFileName"] = "enrage",
      ["spellIconId"] = 132126,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["entangling_roots"] = {
      ["name"] = "Entangling Roots",
      ["soundFileName"] = "entangling_roots",
      ["spellIconId"] = 136100,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["faerie_fire"] = {
      ["name"] = "Faerie Fire",
      ["soundFileName"] = "faerie_fire",
      ["spellIconId"] = 136033,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ferocious_bite"] = {
      ["name"] = "Ferocious Bite",
      ["soundFileName"] = "ferocious_bite",
      ["spellIconId"] = 132127,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flight_form"] = {
      ["name"] = "Flight Form",
      ["soundFileName"] = "flight_form",
      ["spellIconId"] = 132128,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["frenzied_regeneration"] = {
      ["name"] = "Frenzied Regeneration",
      ["soundFileName"] = "frenzied_regeneration",
      ["spellIconId"] = 132091,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["gift_of_the_wild"] = {
      ["name"] = "Gift of the Wild",
      ["soundFileName"] = "gift_of_the_wild",
      ["spellIconId"] = 136038,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["healing_touch"] = {
      ["name"] = "Healing Touch",
      ["soundFileName"] = "healing_touch",
      ["spellIconId"] = 136041,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hibernate"] = {
      ["name"] = "Hibernate",
      ["soundFileName"] = "hibernate",
      ["spellIconId"] = 136090,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hurricane"] = {
      ["name"] = "Hurricane",
      ["soundFileName"] = "hurricane",
      ["spellIconId"] = 136018,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["innervate"] = {
      ["name"] = "Innervate",
      ["soundFileName"] = "innervate",
      ["spellIconId"] = 136048,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["lacerate"] = {
      ["name"] = "Lacerate",
      ["soundFileName"] = "lacerate",
      ["spellIconId"] = 132131,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["lifebloom"] = {
      ["name"] = "Lifebloom",
      ["soundFileName"] = "lifebloom",
      ["spellIconId"] = 134206,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["maim"] = {
      ["name"] = "Maim",
      ["soundFileName"] = "maim",
      ["spellIconId"] = 132134,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mangle_bear"] = {
      ["name"] = "Mangle (Bear)",
      ["soundFileName"] = "mangle",
      ["spellIconId"] = 132135,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mangle_cat"] = {
      ["name"] = "Mangle (Cat)",
      ["soundFileName"] = "mangle",
      ["spellIconId"] = 132135,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mark_of_the_wild"] = {
      ["name"] = "Mark of the Wild",
      ["soundFileName"] = "mark_of_the_wild",
      ["spellIconId"] = 136078,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["moonfire"] = {
      ["name"] = "Moonfire",
      ["soundFileName"] = "moonfire",
      ["spellIconId"] = 136096,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["pounce"] = {
      ["name"] = "Pounce",
      ["soundFileName"] = "pounce",
      ["spellIconId"] = 132142,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["prowl"] = {
      ["name"] = "Prowl",
      ["soundFileName"] = "prowl",
      ["spellIconId"] = 132089,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rake"] = {
      ["name"] = "Rake",
      ["soundFileName"] = "rake",
      ["spellIconId"] = 132122,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ravage"] = {
      ["name"] = "Ravage",
      ["soundFileName"] = "ravage",
      ["spellIconId"] = 132141,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rebirth"] = {
      ["name"] = "Rebirth",
      ["soundFileName"] = "rebirth",
      ["spellIconId"] = 136080,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["regrowth"] = {
      ["name"] = "Regrowth",
      ["soundFileName"] = "regrowth",
      ["spellIconId"] = 136085,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rejuvenation"] = {
      ["name"] = "Rejuvenation",
      ["soundFileName"] = "rejuvenation",
      ["spellIconId"] = 136081,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["remove_curse"] = {
      ["name"] = "Remove Curse",
      ["soundFileName"] = "remove_curse",
      ["spellIconId"] = 135952,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rip"] = {
      ["name"] = "Rip",
      ["soundFileName"] = "rip",
      ["spellIconId"] = 132152,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shred"] = {
      ["name"] = "Shred",
      ["soundFileName"] = "shred",
      ["spellIconId"] = 136231,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["starfire"] = {
      ["name"] = "Starfire",
      ["soundFileName"] = "starfire",
      ["spellIconId"] = 135753,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["swift_flight_form"] = {
      ["name"] = "Swift Flight Form",
      ["soundFileName"] = "swift_flight_form",
      ["spellIconId"] = 132128,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["swipe"] = {
      ["name"] = "Swipe",
      ["soundFileName"] = "swipe",
      ["spellIconId"] = 134296,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["thorns"] = {
      ["name"] = "Thorns",
      ["soundFileName"] = "thorns",
      ["spellIconId"] = 136104,
      ["hasFade"] = false,
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
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["travel_form"] = {
      ["name"] = "Travel Form",
      ["soundFileName"] = "travel_form",
      ["spellIconId"] = 132144,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["wrath"] = {
      ["name"] = "Wrath",
      ["soundFileName"] = "wrath",
      ["spellIconId"] = 136006,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["faerie_fire_feral"] = {
      ["name"] = "Faerie Fire (Feral)",
      ["soundFileName"] = "faerie_fire",
      ["spellIconId"] = 136033,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["feral_charge"] = {
      ["name"] = "Feral Charge",
      ["soundFileName"] = "feral_charge",
      ["spellIconId"] = 132183,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["force_of_nature"] = {
      ["name"] = "Force of Nature",
      ["soundFileName"] = "force_of_nature",
      ["spellIconId"] = 132129,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["insect_swarm"] = {
      ["name"] = "Insect Swarm",
      ["soundFileName"] = "insect_swarm",
      ["spellIconId"] = 136045,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["moonkin_form"] = {
      ["name"] = "Moonkin Form",
      ["soundFileName"] = "moonkin_form",
      ["spellIconId"] = 136036,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED"
      }
    },
    ["natures_grasp"] = {
      ["name"] = "Nature's Grasp",
      ["soundFileName"] = "natures_grasp",
      ["spellIconId"] = 136063,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["natures_swiftness"] = {
      ["name"] = "Nature's Swiftness",
      ["soundFileName"] = "natures_swiftness",
      ["spellIconId"] = 136076,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["omen_of_clarity"] = {
      ["name"] = "Omen of Clarity",
      ["soundFileName"] = "omen_of_clarity",
      ["spellIconId"] = 136017,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["swiftmend"] = {
      ["name"] = "Swiftmend",
      ["soundFileName"] = "swiftmend",
      ["spellIconId"] = 134914,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["tree_of_life"] = {
      ["name"] = "Tree of Life",
      ["soundFileName"] = "tree_of_life",
      ["spellIconId"] = 132145,
      ["hasFade"] = false,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_beast"] = {
      ["name"] = "Aspect of the Beast",
      ["soundFileName"] = "aspect_of_the_beast",
      ["spellIconId"] = 132252,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_cheetah"] = {
      ["name"] = "Aspect of the Cheetah",
      ["soundFileName"] = "aspect_of_the_cheetah",
      ["spellIconId"] = 132242,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_hawk"] = {
      ["name"] = "Aspect of the Hawk",
      ["soundFileName"] = "aspect_of_the_hawk",
      ["spellIconId"] = 136076,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_monkey"] = {
      ["name"] = "Aspect of the Monkey",
      ["soundFileName"] = "aspect_of_the_monkey",
      ["spellIconId"] = 132159,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_pack"] = {
      ["name"] = "Aspect of the Pack",
      ["soundFileName"] = "aspect_of_the_pack",
      ["spellIconId"] = 132267,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_viper"] = {
      ["name"] = "Aspect of the Viper",
      ["soundFileName"] = "aspect_of_the_viper",
      ["spellIconId"] = 132160,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aspect_of_the_wild"] = {
      ["name"] = "Aspect of the Wild",
      ["soundFileName"] = "aspect_of_the_wild",
      ["spellIconId"] = 136074,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["concussive_shot"] = {
      ["name"] = "Concussive Shot",
      ["soundFileName"] = "concussive_shot",
      ["spellIconId"] = 135860,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["disengage"] = {
      ["name"] = "Disengage",
      ["soundFileName"] = "disengage",
      ["spellIconId"] = 132294,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["explosive_trap"] = {
      ["name"] = "Explosive Trap",
      ["soundFileName"] = "explosive_trap",
      ["spellIconId"] = 135826,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flare"] = {
      ["name"] = "Flare",
      ["soundFileName"] = "flare",
      ["spellIconId"] = 135815,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["freezing_trap"] = {
      ["name"] = "Freezing Trap",
      ["soundFileName"] = "freezing_trap",
      ["spellIconId"] = 135834,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_trap"] = {
      ["name"] = "Frost Trap",
      ["soundFileName"] = "frost_trap",
      ["spellIconId"] = 135840,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hunters_mark"] = {
      ["name"] = "Hunter's Mark",
      ["soundFileName"] = "hunters_mark",
      ["spellIconId"] = 132212,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["immolation_trap"] = {
      ["name"] = "Immolation Trap",
      ["soundFileName"] = "immolation_trap",
      ["spellIconId"] = 135813,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mend_pet"] = {
      ["name"] = "Mend Pet",
      ["soundFileName"] = "mend_pet",
      ["spellIconId"] = 132179,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mongoose_bite"] = {
      ["name"] = "Mongoose Bite",
      ["soundFileName"] = "mongoose_bite",
      ["spellIconId"] = 132215,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["multi_shot"] = {
      ["name"] = "Multi-Shot",
      ["soundFileName"] = "multi_shot",
      ["spellIconId"] = 132330,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rapid_fire"] = {
      ["name"] = "Rapid Fire",
      ["soundFileName"] = "rapid_fire",
      ["spellIconId"] = 132208,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["raptor_strike"] = {
      ["name"] = "Raptor Strike",
      ["soundFileName"] = "raptor_strike",
      ["spellIconId"] = 132223,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["revive_pet"] = {
      ["name"] = "Revive Pet",
      ["soundFileName"] = "revive_pet",
      ["spellIconId"] = 132163,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["scare_beast"] = {
      ["name"] = "Scare Beast",
      ["soundFileName"] = "scare_beast",
      ["spellIconId"] = 132118,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["scorpid_sting"] = {
      ["name"] = "Scorpid Sting",
      ["soundFileName"] = "scorpid_sting",
      ["spellIconId"] = 132169,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["serpent_sting"] = {
      ["name"] = "Serpent Sting",
      ["soundFileName"] = "serpent_sting",
      ["spellIconId"] = 132204,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["snake_trap"] = {
      ["name"] = "Snake Trap",
      ["soundFileName"] = "snake_trap",
      ["spellIconId"] = 132211,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_beasts"] = {
      ["name"] = "Track Beasts",
      ["soundFileName"] = "track_beasts",
      ["spellIconId"] = 132328,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_demons"] = {
      ["name"] = "Track Demons",
      ["soundFileName"] = "track_demons",
      ["spellIconId"] = 136217,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_dragonkin"] = {
      ["name"] = "Track Dragonkin",
      ["soundFileName"] = "track_dragonkin",
      ["spellIconId"] = 134153,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_elementals"] = {
      ["name"] = "Track Elementals",
      ["soundFileName"] = "track_elementals",
      ["spellIconId"] = 135861,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_giants"] = {
      ["name"] = "Track Giants",
      ["soundFileName"] = "track_giants",
      ["spellIconId"] = 132275,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_hidden"] = {
      ["name"] = "Track Hidden",
      ["soundFileName"] = "track_hidden",
      ["spellIconId"] = 132320,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_humanoids"] = {
      ["name"] = "Track Humanoids",
      ["soundFileName"] = "track_humanoids",
      ["spellIconId"] = 135942,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["track_undead"] = {
      ["name"] = "Track Undead",
      ["soundFileName"] = "track_undead",
      ["spellIconId"] = 136142,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["viper_sting"] = {
      ["name"] = "Viper Sting",
      ["soundFileName"] = "viper_sting",
      ["spellIconId"] = 132157,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["volley"] = {
      ["name"] = "Volley",
      ["soundFileName"] = "volley",
      ["spellIconId"] = 132222,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["wing_clip"] = {
      ["name"] = "Wing Clip",
      ["soundFileName"] = "wing_clip",
      ["spellIconId"] = 132309,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["aimed_shot"] = {
      ["name"] = "Aimed Shot",
      ["soundFileName"] = "aimed_shot",
      ["spellIconId"] = 135130,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["bestial_wrath"] = {
      ["name"] = "Bestial Wrath",
      ["soundFileName"] = "bestial_wrath",
      ["spellIconId"] = 132127,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["counterattack"] = {
      ["name"] = "Counterattack",
      ["soundFileName"] = "counterattack",
      ["spellIconId"] = 132336,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["deterrence"] = {
      ["name"] = "Deterrence",
      ["soundFileName"] = "deterrence",
      ["spellIconId"] = 132369,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["intimidation"] = {
      ["name"] = "Intimidation",
      ["soundFileName"] = "intimidation",
      ["spellIconId"] = 132111,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["readiness"] = {
      ["name"] = "Readiness",
      ["soundFileName"] = "readiness",
      ["spellIconId"] = 132206,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["scatter_shot"] = {
      ["name"] = "Scatter Shot",
      ["soundFileName"] = "scatter_shot",
      ["spellIconId"] = 132153,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["silencing_shot"] = {
      ["name"] = "Silencing Shot",
      ["soundFileName"] = "silencing_shot",
      ["spellIconId"] = 132323,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["the_beast_within"] = {
      ["name"] = "The Beast Within",
      ["soundFileName"] = "the_beast_within",
      ["spellIconId"] = 132166,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["trueshot_aura"] = {
      ["name"] = "Trueshot Aura",
      ["soundFileName"] = "trueshot_aura",
      ["spellIconId"] = 132329,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["wyvern_sting"] = {
      ["name"] = "Wyvern Sting",
      ["soundFileName"] = "wyvern_sting",
      ["spellIconId"] = 135125,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    }
  },
  [categories.MAGE.id] = {
    ["amplify_magic"] = {
      ["name"] = "Amplify Magic",
      ["soundFileName"] = "amplify_magic",
      ["spellIconId"] = 135907,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["arcane_brilliance"] = {
      ["name"] = "Arcane Brilliance",
      ["soundFileName"] = "arcane_brilliance",
      ["spellIconId"] = 135869,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["arcane_intellect"] = {
      ["name"] = "Arcane Intellect",
      ["soundFileName"] = "arcane_intellect",
      ["spellIconId"] = 135932,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["blink"] = {
      ["name"] = "Blink",
      ["soundFileName"] = "blink",
      ["spellIconId"] = 135736,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["blizzard"] = {
      ["name"] = "Blizzard",
      ["soundFileName"] = "blizzard",
      ["spellIconId"] = 135857,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cone_of_cold"] = {
      ["name"] = "Cone of Cold",
      ["soundFileName"] = "cone_of_cold",
      ["spellIconId"] = 135852,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["conjure_food"] = {
      ["name"] = "Conjure Food",
      ["soundFileName"] = "conjure_food",
      ["spellIconId"] = 133988,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["conjure_mana_agate"] = {
      ["name"] = "Conjure Mana Agate",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134104,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["conjure_mana_citrine"] = {
      ["name"] = "Conjure Mana Citrine",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134116,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["conjure_mana_emerald"] = {
      ["name"] = "Conjure Mana Emerald",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134134,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["conjure_mana_jade"] = {
      ["name"] = "Conjure Mana Jade",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134105,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["conjure_mana_ruby"] = {
      ["name"] = "Conjure Mana Ruby",
      ["soundFileName"] = "conjure_mana",
      ["spellIconId"] = 134128,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["conjure_water"] = {
      ["name"] = "Conjure Water",
      ["soundFileName"] = "conjure_water",
      ["spellIconId"] = 132803,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["counterspell"] = {
      ["name"] = "Counterspell",
      ["soundFileName"] = "counterspell",
      ["spellIconId"] = 135856,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["dampen_magic"] = {
      ["name"] = "Dampen Magic",
      ["soundFileName"] = "dampen_magic",
      ["spellIconId"] = 136006,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED",
      }
    },
    ["fire_blast"] = {
      ["name"] = "Fire Blast",
      ["soundFileName"] = "fire_blast",
      ["spellIconId"] = 135807,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fire_ward"] = {
      ["name"] = "Fire Ward",
      ["soundFileName"] = "fire_ward",
      ["spellIconId"] = 135806,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flamestrike"] = {
      ["name"] = "Flamestrike",
      ["soundFileName"] = "flamestrike",
      ["spellIconId"] = 135826,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_armor"] = {
      ["name"] = "Frost Armor",
      ["soundFileName"] = "frost_armor",
      ["spellIconId"] = 135843,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_ward"] = {
      ["name"] = "Frost Ward",
      ["soundFileName"] = "frost_ward",
      ["spellIconId"] = 135850,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ice_armor"] = {
      ["name"] = "Ice Armor",
      ["soundFileName"] = "ice_armor",
      ["spellIconId"] = 135843,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ice_lance"] = {
      ["name"] = "Ice Lance",
      ["soundFileName"] = "ice_lance",
      ["spellIconId"] = 135844,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["invisibility"] = {
      ["name"] = "Invisibility",
      ["soundFileName"] = "invisibility",
      ["spellIconId"] = 132220,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mage_armor"] = {
      ["name"] = "Mage Armor",
      ["soundFileName"] = "mage_armor",
      ["spellIconId"] = 135991,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["polymorph_pig"] = {
      ["name"] = "Polymorph: Pig",
      ["soundFileName"] = "polymorph",
      ["spellIconId"] = 135997,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["polymorph_turtle"] = {
      ["name"] = "Polymorph: Turtle",
      ["soundFileName"] = "polymorph",
      ["spellIconId"] = 132199,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["remove_lesser_curse"] = {
      ["name"] = "Remove Lesser Curse",
      ["soundFileName"] = "remove_curse",
      ["spellIconId"] = 136082,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["scorch"] = {
      ["name"] = "Scorch",
      ["soundFileName"] = "scorch",
      ["spellIconId"] = 135827,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["slow_fall"] = {
      ["name"] = "Slow Fall",
      ["soundFileName"] = "slow_fall",
      ["spellIconId"] = 135992,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["arcane_power"] = {
      ["name"] = "Arcane Power",
      ["soundFileName"] = "arcane_power",
      ["spellIconId"] = 136048,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blast_wave"] = {
      ["name"] = "Blast Wave",
      ["soundFileName"] = "blast_wave",
      ["spellIconId"] = 135903,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cold_snap"] = {
      ["name"] = "Cold Snap",
      ["soundFileName"] = "cold_snap",
      ["spellIconId"] = 135865,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["combustion"] = {
      ["name"] = "Combustion",
      ["soundFileName"] = "combustion",
      ["spellIconId"] = 135824,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["dragons_breath"] = {
      ["name"] = "Dragon's Breath",
      ["soundFileName"] = "dragons_breath",
      ["spellIconId"] = 134153,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ice_barrier"] = {
      ["name"] = "Ice Barrier",
      ["soundFileName"] = "ice_barrier",
      ["spellIconId"] = 135988,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["presence_of_mind"] = {
      ["name"] = "Presence of Mind",
      ["soundFileName"] = "presence_of_mind",
      ["spellIconId"] = 136031,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["pyroblast"] = {
      ["name"] = "Pyroblast",
      ["soundFileName"] = "pyroblast",
      ["spellIconId"] = 135808,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["slow"] = {
      ["name"] = "Slow",
      ["soundFileName"] = "slow",
      ["spellIconId"] = 136091,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["summon_water_elemental"] = {
      ["name"] = "Summon Water Elemental",
      ["soundFileName"] = "summon_water_elemental",
      ["spellIconId"] = 135862,
      ["hasFade"] = false,
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
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blessing_of_freedom"] = {
      ["name"] = "Blessing of Freedom",
      ["soundFileName"] = "blessing_of_freedom",
      ["spellIconId"] = 135968,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blessing_of_light"] = {
      ["name"] = "Blessing of Light",
      ["soundFileName"] = "blessing_of_light",
      ["spellIconId"] = 135943,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blessing_of_sacrifice"] = {
      ["name"] = "Blessing of Sacrifice",
      ["soundFileName"] = "blessing_of_sacrifice",
      ["spellIconId"] = 135966,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["concentration_aura"] = {
      ["name"] = "Concentration Aura",
      ["soundFileName"] = "concentration_aura",
      ["spellIconId"] = 135933,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["consecration"] = {
      ["name"] = "Consecration",
      ["soundFileName"] = "consecration",
      ["spellIconId"] = 135926,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["crusader_aura"] = {
      ["name"] = "Crusader Aura",
      ["soundFileName"] = "crusader_aura",
      ["spellIconId"] = 135890,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["devotion_aura"] = {
      ["name"] = "Devotion Aura",
      ["soundFileName"] = "devotion_aura",
      ["spellIconId"] = 135893,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_intervention"] = {
      ["name"] = "Divine Intervention",
      ["soundFileName"] = "divine_intervention",
      ["spellIconId"] = 136106,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_protection"] = {
      ["name"] = "Divine Protection",
      ["soundFileName"] = "divine_protection",
      ["spellIconId"] = 135954,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["divine_shield"] = {
      ["name"] = "Divine Shield",
      ["soundFileName"] = "divine_shield",
      ["spellIconId"] = 135896,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["fire_resistance_aura"] = {
      ["name"] = "Fire Resistance Aura",
      ["soundFileName"] = "fire_resistance_aura",
      ["spellIconId"] = 135824,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flash_of_light"] = {
      ["name"] = "Flash of Light",
      ["soundFileName"] = "flash_of_light",
      ["spellIconId"] = 135907,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_resistance_aura"] = {
      ["name"] = "Frost Resistance Aura",
      ["soundFileName"] = "frost_resistance_aura",
      ["spellIconId"] = 135865,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["greater_blessing_of_kings"] = {
      ["name"] = "Greater Blessing of Kings",
      ["soundFileName"] = "greater_blessing_of_kings",
      ["spellIconId"] = 135993,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["hammer_of_wrath"] = {
      ["name"] = "Hammer of Wrath",
      ["soundFileName"] = "hammer_of_wrath",
      ["spellIconId"] = 132326,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["holy_light"] = {
      ["name"] = "Holy Light",
      ["soundFileName"] = "holy_light",
      ["spellIconId"] = 135920,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["judgement"] = {
      ["name"] = "Judgement",
      ["soundFileName"] = "judgement",
      ["spellIconId"] = 135959,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["lay_on_hands"] = {
      ["name"] = "Lay on Hands",
      ["soundFileName"] = "lay_on_hands",
      ["spellIconId"] = 135928,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["purify"] = {
      ["name"] = "Purify",
      ["soundFileName"] = "purify",
      ["spellIconId"] = 135949,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["redemption"] = {
      ["name"] = "Redemption",
      ["soundFileName"] = "redemption",
      ["spellIconId"] = 135955,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["retribution_aura"] = {
      ["name"] = "Retribution Aura",
      ["soundFileName"] = "retribution_aura",
      ["spellIconId"] = 135873,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_blood"] = {
      ["name"] = "Seal of Blood",
      ["soundFileName"] = "seal_of_blood",
      ["spellIconId"] = 135961,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_corruption"] = {
      ["name"] = "Seal of Corruption",
      ["soundFileName"] = "seal_of_corruption",
      ["spellIconId"] = 135969,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_justice"] = {
      ["name"] = "Seal of Justice",
      ["soundFileName"] = "seal_of_justice",
      ["spellIconId"] = 135971,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_light"] = {
      ["name"] = "Seal of Light",
      ["soundFileName"] = "seal_of_light",
      ["spellIconId"] = 135917,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_righteousness"] = {
      ["name"] = "Seal of Righteousness",
      ["soundFileName"] = "seal_of_righteousness",
      ["spellIconId"] = 132325,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_the_crusader"] = {
      ["name"] = "Seal of the Crusader",
      ["soundFileName"] = "seal_of_the_crusader",
      ["spellIconId"] = 135924,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_the_martyr"] = {
      ["name"] = "Seal of the Martyr",
      ["soundFileName"] = "seal_of_the_martyr",
      ["spellIconId"] = 135961,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_vengeance"] = {
      ["name"] = "Seal of Vengeance",
      ["soundFileName"] = "seal_of_vengeance",
      ["spellIconId"] = 135969,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_wisdom"] = {
      ["name"] = "Seal of Wisdom",
      ["soundFileName"] = "seal_of_wisdom",
      ["spellIconId"] = 135960,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadow_resistance_aura"] = {
      ["name"] = "Shadow Resistance Aura",
      ["soundFileName"] = "shadow_resistance_aura",
      ["spellIconId"] = 136192,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["avengers_shield"] = {
      ["name"] = "Avenger's Shield",
      ["soundFileName"] = "avengers_shield",
      ["spellIconId"] = 135874,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["blessing_of_kings"] = {
      ["name"] = "Blessing of Kings",
      ["soundFileName"] = "blessing_of_kings",
      ["spellIconId"] = 135995,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["divine_favor"] = {
      ["name"] = "Divine Favor",
      ["soundFileName"] = "divine_favor",
      ["spellIconId"] = 135915,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["holy_shock"] = {
      ["name"] = "Holy Shock",
      ["soundFileName"] = "holy_shock",
      ["spellIconId"] = 135972,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["repentance"] = {
      ["name"] = "Repentance",
      ["soundFileName"] = "repentance",
      ["spellIconId"] = 135942,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["seal_of_command"] = {
      ["name"] = "Seal of Command",
      ["soundFileName"] = "seal_of_command",
      ["spellIconId"] = 132347,
      ["hasFade"] = false,
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
  [categories.ROGUE.id] = {
    ["ambush"] = {
      ["name"] = "Ambush",
      ["soundFileName"] = "ambush",
      ["spellIconId"] = 132282,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["anesthetic_poison"] = {
      ["name"] = "Anesthetic Poison",
      ["soundFileName"] = "anesthetic_poison",
      ["spellIconId"] = 136093,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["backstab"] = {
      ["name"] = "Backstab",
      ["soundFileName"] = "backstab",
      ["spellIconId"] = 132090,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["blind"] = {
      ["name"] = "Blind",
      ["soundFileName"] = "blind",
      ["spellIconId"] = 136175,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cheap_shot"] = {
      ["name"] = "Cheap Shot",
      ["soundFileName"] = "cheap_shot",
      ["spellIconId"] = 132092,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cloak_of_shadows"] = {
      ["name"] = "Cloak of Shadows",
      ["soundFileName"] = "cloak_of_shadows",
      ["spellIconId"] = 136177,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["crippling_poison"] = {
      ["name"] = "Crippling Poison",
      ["soundFileName"] = "crippling_poison",
      ["spellIconId"] = 132274,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["deadly_poison"] = {
      ["name"] = "Deadly Poison",
      ["soundFileName"] = "deadly_poison",
      ["spellIconId"] = 132290,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["deadly_throw"] = {
      ["name"] = "Deadly Throw",
      ["soundFileName"] = "deadly_throw",
      ["spellIconId"] = 135430,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["distract"] = {
      ["name"] = "Distract",
      ["soundFileName"] = "distract",
      ["spellIconId"] = 132289,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["envenom"] = {
      ["name"] = "Envenom",
      ["soundFileName"] = "envenom",
      ["spellIconId"] = 132287,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["evasion"] = {
      ["name"] = "Evasion",
      ["soundFileName"] = "evasion",
      ["spellIconId"] = 136205,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["eviscerate"] = {
      ["name"] = "Eviscerate",
      ["soundFileName"] = "eviscerate",
      ["spellIconId"] = 132292,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["expose_armor"] = {
      ["name"] = "Expose Armor",
      ["soundFileName"] = "expose_armor",
      ["spellIconId"] = 132354,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["garrote"] = {
      ["name"] = "Garrote",
      ["soundFileName"] = "garrote",
      ["spellIconId"] = 132297,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["gouge"] = {
      ["name"] = "Gouge",
      ["soundFileName"] = "gouge",
      ["spellIconId"] = 132155,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["instant_poison"] = {
      ["name"] = "Instant Poison",
      ["soundFileName"] = "instant_poison",
      ["spellIconId"] = 132273,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["kick"] = {
      ["name"] = "Kick",
      ["soundFileName"] = "kick",
      ["spellIconId"] = 132219,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["kidney_shot"] = {
      ["name"] = "Kidney Shot",
      ["soundFileName"] = "kidney_shot",
      ["spellIconId"] = 132298,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mind_numbing_poison"] = {
      ["name"] = "Mind-numbing Poison",
      ["soundFileName"] = "mind_numbing_poison",
      ["spellIconId"] = 136066,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rupture"] = {
      ["name"] = "Rupture",
      ["soundFileName"] = "rupture",
      ["spellIconId"] = 132302,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["sap"] = {
      ["name"] = "Sap",
      ["soundFileName"] = "sap",
      ["spellIconId"] = 132310,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shiv"] = {
      ["name"] = "Shiv",
      ["soundFileName"] = "shiv",
      ["spellIconId"] = 135428,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["sinister_strike"] = {
      ["name"] = "Sinister Strike",
      ["soundFileName"] = "sinister_strike",
      ["spellIconId"] = 136189,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["slice_and_dice"] = {
      ["name"] = "Slice and Dice",
      ["soundFileName"] = "slice_and_dice",
      ["spellIconId"] = 132306,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["vanish"] = {
      ["name"] = "Vanish",
      ["soundFileName"] = "vanish",
      ["spellIconId"] = 132331,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["wound_poison"] = {
      ["name"] = "Wound Poison",
      ["soundFileName"] = "wound_poison",
      ["spellIconId"] = 134197,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["adrenaline_rush"] = {
      ["name"] = "Adrenaline Rush",
      ["soundFileName"] = "adrenaline_rush",
      ["spellIconId"] = 136206,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["blade_flurry"] = {
      ["name"] = "Blade Flurry",
      ["soundFileName"] = "blade_flurry",
      ["spellIconId"] = 132350,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["cheat_death"] = {
      ["name"] = "Cheat Death",
      ["soundFileName"] = "cheat_death",
      ["spellIconId"] = 132285,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cold_blood"] = {
      ["name"] = "Cold Blood",
      ["soundFileName"] = "cold_blood",
      ["spellIconId"] = 135988,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["ghostly_strike"] = {
      ["name"] = "Ghostly Strike",
      ["soundFileName"] = "ghostly_strike",
      ["spellIconId"] = 136136,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["hemorrhage"] = {
      ["name"] = "Hemorrhage",
      ["soundFileName"] = "hemorrhage",
      ["spellIconId"] = 136168,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mutilate"] = {
      ["name"] = "Mutilate",
      ["soundFileName"] = "mutilate",
      ["spellIconId"] = 132304,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["premeditation"] = {
      ["name"] = "Premeditation",
      ["soundFileName"] = "premeditation",
      ["spellIconId"] = 136183,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["preparation"] = {
      ["name"] = "Preparation",
      ["soundFileName"] = "preparation",
      ["spellIconId"] = 136121,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["riposte"] = {
      ["name"] = "Riposte",
      ["soundFileName"] = "riposte",
      ["spellIconId"] = 132336,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["shadowstep"] = {
      ["name"] = "Shadowstep",
      ["soundFileName"] = "shadowstep",
      ["spellIconId"] = 132303,
      ["hasFade"] = false,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["bloodlust"] = {
      ["name"] = "Bloodlust",
      ["soundFileName"] = "bloodlust",
      ["spellIconId"] = 2825,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["chain_lightning"] = {
      ["name"] = "Chain Lightning",
      ["soundFileName"] = "chain_lightning",
      ["spellIconId"] = 136015,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cure_disease"] = {
      ["name"] = "Cure Disease",
      ["soundFileName"] = "cure_disease",
      ["spellIconId"] = 136083,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["cure_poison"] = {
      ["name"] = "Cure Poison",
      ["soundFileName"] = "cure_poison",
      ["spellIconId"] = 136067,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["disease_cleansing_totem"] = {
      ["name"] = "Disease Cleansing Totem",
      ["soundFileName"] = "disease_cleansing_totem",
      ["spellIconId"] = 136019,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["earth_elemental_totem"] = {
      ["name"] = "Earth Elemental Totem",
      ["soundFileName"] = "earth_elemental_totem",
      ["spellIconId"] = 136024,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["earth_shock"] = {
      ["name"] = "Earth Shock",
      ["soundFileName"] = "earth_shock",
      ["spellIconId"] = 136026,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["earthbind_totem"] = {
      ["name"] = "Earthbind Totem",
      ["soundFileName"] = "earthbind_totem",
      ["spellIconId"] = 136102,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fire_elemental_totem"] = {
      ["name"] = "Fire  Elemental Totem",
      ["soundFileName"] = "fire_elemental_totem",
      ["spellIconId"] = 135790,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fire_nova_totem"] = {
      ["name"] = "Fire Nova Totem",
      ["soundFileName"] = "fire_nova_totem",
      ["spellIconId"] = 135824,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["fire_resistance_totem"] = {
      ["name"] = "Fire Resistance Totem",
      ["soundFileName"] = "fire_resistance_totem",
      ["spellIconId"] = 135832,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flame_shock"] = {
      ["name"] = "Flame Shock",
      ["soundFileName"] = "flame_shock",
      ["spellIconId"] = 135813,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flametongue_totem"] = {
      ["name"] = "Flametongue Totem",
      ["soundFileName"] = "flametongue_totem",
      ["spellIconId"] = 136040,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["flametongue_weapon"] = {
      ["name"] = "Flametongue Weapon",
      ["soundFileName"] = "flametongue_weapon",
      ["spellIconId"] = 135814,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_resistance_totem"] = {
      ["name"] = "Frost Resistance Totem",
      ["soundFileName"] = "frost_resistance_totem",
      ["spellIconId"] = 135866,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frost_shock"] = {
      ["name"] = "Frost Shock",
      ["soundFileName"] = "frost_shock",
      ["spellIconId"] = 135849,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["frostbrand_weapon"] = {
      ["name"] = "Frostbrand Weapon",
      ["soundFileName"] = "frostbrand_weapon",
      ["spellIconId"] = 135847,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["ghost_wolf"] = {
      ["name"] = "Ghost Wolf",
      ["soundFileName"] = "ghost_wolf",
      ["spellIconId"] = 136095,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["grace_of_air_totem"] = {
      ["name"] = "Grace of Air Totem",
      ["soundFileName"] = "grace_of_air_totem",
      ["spellIconId"] = 136046,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["grounding_totem"] = {
      ["name"] = "Grounding Totem",
      ["soundFileName"] = "grounding_totem",
      ["spellIconId"] = 136039,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["healing_stream_totem"] = {
      ["name"] = "Healing Stream Totem",
      ["soundFileName"] = "healing_stream_totem",
      ["spellIconId"] = 135127,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["healing_wave"] = {
      ["name"] = "Healing Wave",
      ["soundFileName"] = "healing_wave",
      ["spellIconId"] = 136052,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["heroism"] = {
      ["name"] = "Heroism",
      ["soundFileName"] = "heroism",
      ["spellIconId"] = 132313,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["lightning_bolt"] = {
      ["name"] = "Lightning Bolt",
      ["soundFileName"] = "lightning_bolt",
      ["spellIconId"] = 136048,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["lightning_shield"] = {
      ["name"] = "Lightning Shield",
      ["soundFileName"] = "lightning_shield",
      ["spellIconId"] = 136051,
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["mana_spring_totem"] = {
      ["name"] = "Mana Spring Totem",
      ["soundFileName"] = "mana_spring_totem",
      ["spellIconId"] = 136053,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["nature_resistance_totem"] = {
      ["name"] = "Nature Resistance Totem",
      ["soundFileName"] = "nature_resistance_totem",
      ["spellIconId"] = 136061,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["poison_cleansing_totem"] = {
      ["name"] = "Poison Cleansing Totem",
      ["soundFileName"] = "poison_cleansing_totem",
      ["spellIconId"] = 136070,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["purge"] = {
      ["name"] = "Purge",
      ["soundFileName"] = "purge",
      ["spellIconId"] = 136075,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["reincarnation"] = {
      ["name"] = "Reincarnation",
      ["soundFileName"] = "reincarnation",
      ["spellIconId"] = 136080,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["rockbiter_weapon"] = {
      ["name"] = "Rockbiter Weapon",
      ["soundFileName"] = "rockbiter_weapon",
      ["spellIconId"] = 136086,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["searing_totem"] = {
      ["name"] = "Searing Totem",
      ["soundFileName"] = "searing_totem",
      ["spellIconId"] = 135825,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["stoneclaw_totem"] = {
      ["name"] = "Stoneclaw Totem",
      ["soundFileName"] = "stoneclaw_totem",
      ["spellIconId"] = 136097,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["stoneskin_totem"] = {
      ["name"] = "Stoneskin Totem",
      ["soundFileName"] = "stoneskin_totem",
      ["spellIconId"] = 136098,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["strength_of_earth_totem"] = {
      ["name"] = "Strength of Earth Totem",
      ["soundFileName"] = "strength_of_earth_totem",
      ["spellIconId"] = 136023,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["tremor_totem"] = {
      ["name"] = "Tremor Totem",
      ["soundFileName"] = "tremor_totem",
      ["spellIconId"] = 136108,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["water_breathing"] = {
      ["name"] = "Water Breathing",
      ["soundFileName"] = "water_breathing",
      ["spellIconId"] = 136148,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
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
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["windfury_weapon"] = {
      ["name"] = "Windfury Weapon",
      ["soundFileName"] = "windfury_weapon",
      ["spellIconId"] = 136018,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["windwall_totem"] = {
      ["name"] = "Windwall Totem",
      ["soundFileName"] = "windwall_totem",
      ["spellIconId"] = 136022,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["wrath_of_air_totem"] = {
      ["name"] = "Wrath of Air Totem",
      ["soundFileName"] = "wrath_of_air_totem",
      ["spellIconId"] = 136092,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["earth_shield"] = {
      ["name"] = "Earth Shield",
      ["soundFileName"] = "earth_shield",
      ["spellIconId"] = 136089,
      ["hasFade"] = true,
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
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["mana_tide_totem"] = {
      ["name"] = "Mana Tide Totem",
      ["soundFileName"] = "mana_tide_totem",
      ["spellIconId"] = 135861,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["natures_swiftness"] = {
      ["name"] = "Nature's Swiftness",
      ["soundFileName"] = "natures_swiftness",
      ["spellIconId"] = 136076,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["shamanistic_rage"] = {
      ["name"] = "Shamanistic Rage",
      ["soundFileName"] = "shamanistic_rage",
      ["spellIconId"] = 136088,
      ["hasFade"] = true,
      ["trackedEvents"] = {
        "SPELL_AURA_APPLIED",
        "SPELL_AURA_REMOVED"
      }
    },
    ["stormstrike"] = {
      ["name"] = "Stormstrike",
      ["soundFileName"] = "stormstrike",
      ["spellIconId"] = 132314,
      ["hasFade"] = false,
      ["trackedEvents"] = {
        "SPELL_CAST_SUCCESS"
      }
    },
    ["totem_of_wrath"] = {
      ["name"] = "Totem of Wrath",
      ["soundFileName"] = "totem_of_wrath",
      ["spellIconId"] = 135829,
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
