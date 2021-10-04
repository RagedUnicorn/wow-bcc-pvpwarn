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
mod.spellMap = me

me.tag = "SpellMap"

local categories = RGPVPW_CONSTANTS.CATEGORIES

--[[
  Additionaly sort spells by abilities (every character with max level has all abilites) and
  talents (learned through investing skill points in the skill tree)

  [spellId] = {
    category -- {number}
    normalizedSpellName -- {string}
      The normalize spell name with removed special characters such as space
      also all lower case. See mod.common.NormalizeSpellname
    rank -- {number}
      The rank of the spell or 0 if the spell has no rank
  }
]]--
local spellMap = {
  --[[
    Druid ABILITIES
  ]]--
  [2893] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "abolish_poison",
    ["rank"] = 0
  },
  [1066] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "aquatic_form",
    ["rank"] = 0
  },
  [22812] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "barkskin",
    ["rank"] = 0
  },
  [5211] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "bash",
    ["rank"] = 1
  },
  [6798] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "bash",
    ["rank"] = 2
  },
  [8983] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "bash",
    ["rank"] = 3
  },
  [5487] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "bear_form",
    ["rank"] = 0
  },
  [768] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cat_form",
    ["rank"] = 0
  },
  [1082] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "claw",
    ["rank"] = 1
  },
  [3029] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "claw",
    ["rank"] = 2
  },
  [5201] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "claw",
    ["rank"] = 3
  },
  [9849] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "claw",
    ["rank"] = 4
  },
  [9850] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "claw",
    ["rank"] = 5
  },
  [27000] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "claw",
    ["rank"] = 6
  },
  [8946] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cure_poison",
    ["rank"] = 0
  },
  [33786] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cyclone",
    ["rank"] = 0
  },
  [1850] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "dash",
    ["rank"] = 1
  },
  [9821] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "dash",
    ["rank"] = 2
  },
  [33357] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "dash",
    ["rank"] = 3
  },
  [99] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "demoralizing_roar",
    ["rank"] = 1
  },
  [1735] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "demoralizing_roar",
    ["rank"] = 2
  },
  [9490] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "demoralizing_roar",
    ["rank"] = 3
  },
  [9747] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "demoralizing_roar",
    ["rank"] = 4
  },
  [9898] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "demoralizing_roar",
    ["rank"] = 5
  },
  [26998] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "demoralizing_roar",
    ["rank"] = 6
  },
  [9634] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "dire_bear_form",
    ["rank"] = 0
  },
  [5229] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "enrage",
    ["rank"] = 0
  },
  [339] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "entangling_roots",
    ["rank"] = 1
  },
  [1062] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "entangling_roots",
    ["rank"] = 2
  },
  [5195] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "entangling_roots",
    ["rank"] = 3
  },
  [5196] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "entangling_roots",
    ["rank"] = 4
  },
  [9852] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "entangling_roots",
    ["rank"] = 5
  },
  [9853] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "entangling_roots",
    ["rank"] = 6
  },
  [26989] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "entangling_roots",
    ["rank"] = 7
  },
  [770] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire",
    ["rank"] = 1
  },
  [778] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire",
    ["rank"] = 2
  },
  [9749] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire",
    ["rank"] = 3
  },
  [9907] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire",
    ["rank"] = 4
  },
  [26993] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire",
    ["rank"] = 5
  },
  [22568] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ferocious_bite",
    ["rank"] = 1
  },
  [22827] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ferocious_bite",
    ["rank"] = 2
  },
  [22828] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ferocious_bite",
    ["rank"] = 3
  },
  [22829] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ferocious_bite",
    ["rank"] = 4
  },
  [31018] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ferocious_bite",
    ["rank"] = 5
  },
  [24248] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ferocious_bite",
    ["rank"] = 6
  },
  [33943] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "flight_form",
    ["rank"] = 0
  },
  [22842] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "frenzied_regeneration",
    ["rank"] = 1
  },
  [22895] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "frenzied_regeneration",
    ["rank"] = 2
  },
  [22896] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "frenzied_regeneration",
    ["rank"] = 3
  },
  [26999] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "frenzied_regeneration",
    ["rank"] = 4
  },
  [21849] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "gift_of_the_wild",
    ["rank"] = 1
  },
  [21850] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "gift_of_the_wild",
    ["rank"] = 2
  },
  [26991] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "gift_of_the_wild",
    ["rank"] = 3
  },
  [5185] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 1
  },
  [5186] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 2
  },
  [5187] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 3
  },
  [5188] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 4
  },
  [5189] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 5
  },
  [6778] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 6
  },
  [8903] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 7
  },
  [9758] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 8
  },
  [9888] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 9
  },
  [9889] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 10
  },
  [25297] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 11
  },
  [26978] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 12
  },
  [26979] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "healing_touch",
    ["rank"] = 13
  },
  [2637] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "hibernate",
    ["rank"] = 1
  },
  [18657] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "hibernate",
    ["rank"] = 2
  },
  [18658] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "hibernate",
    ["rank"] = 3
  },
  [16914] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "hurricane",
    ["rank"] = 1
  },
  [17401] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "hurricane",
    ["rank"] = 2
  },
  [17402] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "hurricane",
    ["rank"] = 3
  },
  [27012] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "hurricane",
    ["rank"] = 4
  },
  [29166] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "innervate",
    ["rank"] = 0
  },
  [33745] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "lacerate",
    ["rank"] = 1
  },
  [33763] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "lifebloom",
    ["rank"] = 1
  },
  [22570] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "maim",
    ["rank"] = 1
  },
  [33878] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mangle_bear",
    ["rank"] = 1
  },
  [33986] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mangle_bear",
    ["rank"] = 2
  },
  [33987] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mangle_bear",
    ["rank"] = 3
  },
  [33876] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mangle_cat",
    ["rank"] = 1
  },
  [33982] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mangle_cat",
    ["rank"] = 2
  },
  [33983] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mangle_cat",
    ["rank"] = 3
  },
  [1126] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 1
  },
  [5232] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 2
  },
  [6756] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 3
  },
  [5234] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 4
  },
  [8907] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 5
  },
  [9884] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 6
  },
  [9885] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 7
  },
  [26990] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "mark_of_the_wild",
    ["rank"] = 8
  },
  [8921] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 1
  },
  [8924] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 2
  },
  [8925] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 3
  },
  [8926] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 4
  },
  [8927] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 5
  },
  [8928] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 6
  },
  [8929] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 7
  },
  [9833] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 8
  },
  [9834] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 9
  },
  [9835] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 10
  },
  [26987] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 11
  },
  [26988] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonfire",
    ["rank"] = 12
  },
  [9005] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "pounce",
    ["rank"] = 1
  },
  [9823] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "pounce",
    ["rank"] = 2
  },
  [9827] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "pounce",
    ["rank"] = 3
  },
  [27006] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "pounce",
    ["rank"] = 4
  },
  [5215] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "prowl",
    ["rank"] = 1
  },
  [6783] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "prowl",
    ["rank"] = 2
  },
  [9913] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "prowl",
    ["rank"] = 3
  },
  [1822] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rake",
    ["rank"] = 1
  },
  [1823] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rake",
    ["rank"] = 2
  },
  [1824] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rake",
    ["rank"] = 3
  },
  [9904] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rake",
    ["rank"] = 4
  },
  [27003] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rake",
    ["rank"] = 5
  },
  [6785] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ravage",
    ["rank"] = 1
  },
  [6787] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ravage",
    ["rank"] = 2
  },
  [9866] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ravage",
    ["rank"] = 3
  },
  [9867] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ravage",
    ["rank"] = 4
  },
  [27005] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "ravage",
    ["rank"] = 5
  },
  [20484] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rebirth",
    ["rank"] = 1
  },
  [20739] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rebirth",
    ["rank"] = 2
  },
  [20742] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rebirth",
    ["rank"] = 3
  },
  [20747] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rebirth",
    ["rank"] = 4
  },
  [20748] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rebirth",
    ["rank"] = 5
  },
  [26994] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rebirth",
    ["rank"] = 6
  },
  [8936] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 1
  },
  [8938] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 2
  },
  [8939] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 3
  },
  [8940] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 4
  },
  [8941] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 5
  },
  [9750] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 6
  },
  [9856] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 7
  },
  [9857] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 8
  },
  [9858] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 9
  },
  [26980] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "regrowth",
    ["rank"] = 10
  },
  [774] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 1
  },
  [1058] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 2
  },
  [1430] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 3
  },
  [2090] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 4
  },
  [2091] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 5
  },
  [3627] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 6
  },
  [8910] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 7
  },
  [9839] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 8
  },
  [9840] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 9
  },
  [9841] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 10
  },
  [25299] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 11
  },
  [26981] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 12
  },
  [26982] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rejuvenation",
    ["rank"] = 13
  },
  [2782] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "remove_curse",
    ["rank"] = 0
  },
  [1079] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rip",
    ["rank"] = 1
  },
  [9492] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rip",
    ["rank"] = 2
  },
  [9493] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rip",
    ["rank"] = 3
  },
  [9752] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rip",
    ["rank"] = 4
  },
  [9894] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rip",
    ["rank"] = 5
  },
  [9896] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rip",
    ["rank"] = 6
  },
  [27008] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "rip",
    ["rank"] = 7
  },
  [5221] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "shred",
    ["rank"] = 1
  },
  [6800] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "shred",
    ["rank"] = 2
  },
  [8992] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "shred",
    ["rank"] = 3
  },
  [9829] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "shred",
    ["rank"] = 4
  },
  [9830] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "shred",
    ["rank"] = 5
  },
  [27001] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "shred",
    ["rank"] = 6
  },
  [27002] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "shred",
    ["rank"] = 7
  },
  [2912] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 1
  },
  [8949] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 2
  },
  [8950] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 3
  },
  [8951] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 4
  },
  [9875] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 5
  },
  [9876] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 6
  },
  [25298] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 7
  },
  [26986] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "starfire",
    ["rank"] = 8
  },
  [40120] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swift_flight_form",
    ["rank"] = 0
  },
  [779] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swipe",
    ["rank"] = 1
  },
  [780] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swipe",
    ["rank"] = 2
  },
  [769] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swipe",
    ["rank"] = 3
  },
  [9754] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swipe",
    ["rank"] = 4
  },
  [9908] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swipe",
    ["rank"] = 5
  },
  [26997] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swipe",
    ["rank"] = 6
  },
  [467] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "thorns",
    ["rank"] = 1
  },
  [782] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "thorns",
    ["rank"] = 2
  },
  [1075] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "thorns",
    ["rank"] = 3
  },
  [8914] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "thorns",
    ["rank"] = 4
  },
  [9756] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "thorns",
    ["rank"] = 5
  },
  [9910] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "thorns",
    ["rank"] = 6
  },
  [26992] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "thorns",
    ["rank"] = 7
  },
  [5217] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tigers_fury",
    ["rank"] = 1
  },
  [6793] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tigers_fury",
    ["rank"] = 2
  },
  [9845] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tigers_fury",
    ["rank"] = 3
  },
  [9846] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tigers_fury",
    ["rank"] = 4
  },
  [740] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tranquility",
    ["rank"] = 1
  },
  [8918] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tranquility",
    ["rank"] = 2
  },
  [9862] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tranquility",
    ["rank"] = 3
  },
  [9863] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tranquility",
    ["rank"] = 4
  },
  [26983] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tranquility",
    ["rank"] = 5
  },
  [783] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "travel_form",
    ["rank"] = 0
  },
  [5176] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 1
  },
  [5177] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 2
  },
  [5178] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 3
  },
  [5179] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 4
  },
  [5180] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 5
  },
  [6780] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 6
  },
  [8905] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 7
  },
  [9912] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 8
  },
  [26984] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 9
  },
  [26985] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "wrath",
    ["rank"] = 10
  },
  --[[
    Druid TALENTS
  ]]--
  [16857] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire_feral",
    ["rank"] = 1
  },
  [17390] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire_feral",
    ["rank"] = 2
  },
  [17391] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire_feral",
    ["rank"] = 3
  },
  [17392] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire_feral",
    ["rank"] = 4
  },
  [27011] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "faerie_fire_feral",
    ["rank"] = 5
  },
  [16979] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "feral_charge",
    ["rank"] = 0
  },
  [33831] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "force_of_nature",
    ["rank"] = 0
  },
  [5570] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "insect_swarm",
    ["rank"] = 1
  },
  [24974] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "insect_swarm",
    ["rank"] = 2
  },
  [24975] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "insect_swarm",
    ["rank"] = 3
  },
  [24976] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "insect_swarm",
    ["rank"] = 4
  },
  [24977] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "insect_swarm",
    ["rank"] = 5
  },
  [27013] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "insect_swarm",
    ["rank"] = 6
  },
  [24858] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "moonkin_form",
    ["rank"] = 0
  },
  [16689] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_grasp",
    ["rank"] = 1
  },
  [16810] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_grasp",
    ["rank"] = 2
  },
  [16811] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_grasp",
    ["rank"] = 3
  },
  [16812] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_grasp",
    ["rank"] = 4
  },
  [16813] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_grasp",
    ["rank"] = 5
  },
  [17329] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_grasp",
    ["rank"] = 6
  },
  [27009] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_grasp",
    ["rank"] = 7
  },
  [17116] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "natures_swiftness",
    ["rank"] = 0
  },
  [16864] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "omen_of_clarity",
    ["rank"] = 0
  },
  [18562] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "swiftmend",
    ["rank"] = 0
  },
  [33891] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "tree_of_life",
    ["rank"] = 0
  },
  --[[
    Hunter ABILITIES
  ]]--
  [3044] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 1
  },
  [14281] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 2
  },
  [14282] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 3
  },
  [14283] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 4
  },
  [14284] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 5
  },
  [14285] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 6
  },
  [14286] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 7
  },
  [14287] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 8
  },
  [27019] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "arcane_shot",
    ["rank"] = 9
  },
  [13161] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_beast",
    ["rank"] = 0
  },
  [5118] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_cheetah",
    ["rank"] = 0
  },
  [13165] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 1
  },
  [14318] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 2
  },
  [14319] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 3
  },
  [14320] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 4
  },
  [14321] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 5
  },
  [14322] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 6
  },
  [25296] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 7
  },
  [27044] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_hawk",
    ["rank"] = 8
  },
  [13163] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_monkey",
    ["rank"] = 0
  },
  [13159] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_pack",
    ["rank"] = 0
  },
  [34074] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_viper",
    ["rank"] = 0
  },
  [20043] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_wild",
    ["rank"] = 1
  },
  [20190] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_wild",
    ["rank"] = 2
  },
  [27045] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aspect_of_the_wild",
    ["rank"] = 3
  },
  [5116] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "concussive_shot",
    ["rank"] = 0
  },
  [781] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "disengage",
    ["rank"] = 1
  },
  [14272] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "disengage",
    ["rank"] = 2
  },
  [14273] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "disengage",
    ["rank"] = 3
  },
  [27015] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "disengage",
    ["rank"] = 4
  },
  [13813] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "explosive_trap",
    ["rank"] = 1
  },
  [14316] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "explosive_trap",
    ["rank"] = 2
  },
  [14317] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "explosive_trap",
    ["rank"] = 3
  },
  [27025] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "explosive_trap",
    ["rank"] = 4
  },
  [1543] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "flare",
    ["rank"] = 0
  },
  [1499] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "freezing_trap",
    ["rank"] = 1
  },
  [14310] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "freezing_trap",
    ["rank"] = 2
  },
  [14311] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "freezing_trap",
    ["rank"] = 3
  },
  [13809] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "frost_trap",
    ["rank"] = 0
  },
  [1130] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "hunters_mark",
    ["rank"] = 1
  },
  [14323] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "hunters_mark",
    ["rank"] = 2
  },
  [14324] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "hunters_mark",
    ["rank"] = 3
  },
  [14325] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "hunters_mark",
    ["rank"] = 4
  },
  [13795] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "immolation_trap",
    ["rank"] = 1
  },
  [14302] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "immolation_trap",
    ["rank"] = 2
  },
  [14303] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "immolation_trap",
    ["rank"] = 3
  },
  [14304] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "immolation_trap",
    ["rank"] = 4
  },
  [14305] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "immolation_trap",
    ["rank"] = 5
  },
  [27023] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "immolation_trap",
    ["rank"] = 6
  },
  [136] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 1
  },
  [3111] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 2
  },
  [3661] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 3
  },
  [3662] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 4
  },
  [13542] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 5
  },
  [13543] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 6
  },
  [13544] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 7
  },
  [27046] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mend_pet",
    ["rank"] = 8
  },
  [1495] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mongoose_bite",
    ["rank"] = 1
  },
  [14269] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mongoose_bite",
    ["rank"] = 2
  },
  [14270] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mongoose_bite",
    ["rank"] = 3
  },
  [14271] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mongoose_bite",
    ["rank"] = 4
  },
  [36916] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "mongoose_bite",
    ["rank"] = 5
  },
  [2643] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "multi_shot",
    ["rank"] = 1
  },
  [14288] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "multi_shot",
    ["rank"] = 2
  },
  [14289] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "multi_shot",
    ["rank"] = 3
  },
  [14290] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "multi_shot",
    ["rank"] = 4
  },
  [25294] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "multi_shot",
    ["rank"] = 5
  },
  [27021] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "multi_shot",
    ["rank"] = 6
  },
  [3045] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "rapid_fire",
    ["rank"] = 0
  },
  [2973] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 1
  },
  [14260] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 2
  },
  [14261] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 3
  },
  [14262] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 4
  },
  [14263] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 5
  },
  [14264] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 6
  },
  [14265] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 7
  },
  [14266] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 8
  },
  [27014] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "raptor_strike",
    ["rank"] = 9
  },
  [982] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "revive_pet",
    ["rank"] = 0
  },
  [1513] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "scare_beast",
    ["rank"] = 1
  },
  [14326] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "scare_beast",
    ["rank"] = 2
  },
  [14327] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "scare_beast",
    ["rank"] = 3
  },
  [3043] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "scorpid_sting",
    ["rank"] = 0
  },
  [1978] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 1
  },
  [13549] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 2
  },
  [13550] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 3
  },
  [13551] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 4
  },
  [13552] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 5
  },
  [13553] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 6
  },
  [13554] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 7
  },
  [13555] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 8
  },
  [25295] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 9
  },
  [27016] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "serpent_sting",
    ["rank"] = 10
  },
  [34600] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "snake_trap",
    ["rank"] = 0
  },
  [1494] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_beasts",
    ["rank"] = 0
  },
  [19878] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_demons",
    ["rank"] = 0
  },
  [19879] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_dragonkin",
    ["rank"] = 0
  },
  [19880] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_elementals",
    ["rank"] = 0
  },
  [19882] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_giants",
    ["rank"] = 0
  },
  [19885] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_hidden",
    ["rank"] = 0
  },
  [19883] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_humanoids",
    ["rank"] = 0
  },
  [19884] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "track_undead",
    ["rank"] = 0
  },
  [3034] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "viper_sting",
    ["rank"] = 1
  },
  [14279] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "viper_sting",
    ["rank"] = 2
  },
  [14280] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "viper_sting",
    ["rank"] = 3
  },
  [27018] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "viper_sting",
    ["rank"] = 4
  },
  [1510] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "volley",
    ["rank"] = 1
  },
  [14294] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "volley",
    ["rank"] = 2
  },
  [14295] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "volley",
    ["rank"] = 3
  },
  [27022] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "volley",
    ["rank"] = 4
  },
  [2974] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "wing_clip",
    ["rank"] = 1
  },
  [14267] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "wing_clip",
    ["rank"] = 2
  },
  [14268] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "wing_clip",
    ["rank"] = 3
  },
  --[[
    Hunter TALENTS
  ]]--
  [19434] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aimed_shot",
    ["rank"] = 1
  },
  [20900] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aimed_shot",
    ["rank"] = 2
  },
  [20901] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aimed_shot",
    ["rank"] = 3
  },
  [20902] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aimed_shot",
    ["rank"] = 4
  },
  [20903] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aimed_shot",
    ["rank"] = 5
  },
  [20904] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aimed_shot",
    ["rank"] = 6
  },
  [27065] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "aimed_shot",
    ["rank"] = 7
  },
  [19574] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "bestial_wrath",
    ["rank"] = 0
  },
  [19306] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "counterattack",
    ["rank"] = 1
  },
  [20909] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "counterattack",
    ["rank"] = 2
  },
  [20910] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "counterattack",
    ["rank"] = 3
  },
  [27067] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "counterattack",
    ["rank"] = 4
  },
  [19263] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "deterrence",
    ["rank"] = 0
  },
  [19577] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "intimidation",
    ["rank"] = 0
  },
  [23989] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "readiness",
    ["rank"] = 0
  },
  [19503] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "scatter_shot",
    ["rank"] = 0
  },
  [34490] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "silencing_shot",
    ["rank"] = 0
  },
  [34692] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "the_beast_within",
    ["rank"] = 0
  },
  [19506] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "trueshot_aura",
    ["rank"] = 1
  },
  [20905] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "trueshot_aura",
    ["rank"] = 2
  },
  [20906] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "trueshot_aura",
    ["rank"] = 3
  },
  [27066] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "trueshot_aura",
    ["rank"] = 4
  },
  [19386] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "wyvern_sting",
    ["rank"] = 1
  },
  [24132] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "wyvern_sting",
    ["rank"] = 2
  },
  [24133] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "wyvern_sting",
    ["rank"] = 3
  },
  [27068] = {
    ["category"] = categories.HUNTER.id,
    ["name"] = "wyvern_sting",
    ["rank"] = 4
  },
  --[[
    Mage ABILITIES
  ]]--
  [1008] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "amplify_magic",
    ["rank"] = 1
  },
  [8455] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "amplify_magic",
    ["rank"] = 2
  },
  [10169] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "amplify_magic",
    ["rank"] = 3
  },
  [10170] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "amplify_magic",
    ["rank"] = 4
  },
  [27130] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "amplify_magic",
    ["rank"] = 5
  },
  [33946] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "amplify_magic",
    ["rank"] = 6
  },
  [30451] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_blast",
    ["rank"] = 0
  },
  [23028] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_brilliance",
    ["rank"] = 1
  },
  [27127] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_brilliance",
    ["rank"] = 2
  },
  [1449] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 1
  },
  [8437] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 2
  },
  [8438] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 3
  },
  [8439] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 4
  },
  [10201] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 5
  },
  [10202] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 6
  },
  [27080] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 7
  },
  [27082] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_explosion",
    ["rank"] = 8
  },
  [1459] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_intellect",
    ["rank"] = 1
  },
  [1460] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_intellect",
    ["rank"] = 2
  },
  [1461] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_intellect",
    ["rank"] = 3
  },
  [10156] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_intellect",
    ["rank"] = 4
  },
  [10157] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_intellect",
    ["rank"] = 5
  },
  [27126] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_intellect",
    ["rank"] = 6
  },
  [5143] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 1
  },
  [5144] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 2
  },
  [5145] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 3
  },
  [8416] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 4
  },
  [8417] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 5
  },
  [10211] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 6
  },
  [10212] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 7
  },
  [25345] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 8
  },
  [27075] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 9
  },
  [38699] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 10
  },
  [38704] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_missiles",
    ["rank"] = 11
  },
  [1953] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blink",
    ["rank"] = 0
  },
  [10] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blizzard",
    ["rank"] = 1
  },
  [6141] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blizzard",
    ["rank"] = 2
  },
  [8427] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blizzard",
    ["rank"] = 3
  },
  [10185] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blizzard",
    ["rank"] = 4
  },
  [10186] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blizzard",
    ["rank"] = 5
  },
  [10187] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blizzard",
    ["rank"] = 6
  },
  [27085] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blizzard",
    ["rank"] = 7
  },
  [120] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "cone_of_cold",
    ["rank"] = 1
  },
  [8492] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "cone_of_cold",
    ["rank"] = 2
  },
  [10159] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "cone_of_cold",
    ["rank"] = 3
  },
  [10160] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "cone_of_cold",
    ["rank"] = 4
  },
  [10161] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "cone_of_cold",
    ["rank"] = 5
  },
  [27087] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "cone_of_cold",
    ["rank"] = 6
  },
  [587] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 1
  },
  [597] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 2
  },
  [990] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 3
  },
  [6129] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 4
  },
  [10144] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 5
  },
  [10145] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 6
  },
  [28612] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 7
  },
  [33717] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_food",
    ["rank"] = 8
  },
  [759] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_mana_agate",
    ["rank"] = 0
  },
  [10053] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_mana_citrine",
    ["rank"] = 0
  },
  [27101] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_mana_emerald",
    ["rank"] = 0
  },
  [3552] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_mana_jade",
    ["rank"] = 0
  },
  [10054] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_mana_ruby",
    ["rank"] = 0
  },
  [5504] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 1
  },
  [5505] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 2
  },
  [5506] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 3
  },
  [6127] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 4
  },
  [10138] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 5
  },
  [10139] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 6
  },
  [10140] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 7
  },
  [37420] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 8
  },
  [27090] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "conjure_water",
    ["rank"] = 9
  },
  [2139] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "counterspell",
    ["rank"] = 0
  },
  [604] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dampen_magic",
    ["rank"] = 1
  },
  [8450] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dampen_magic",
    ["rank"] = 2
  },
  [8451] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dampen_magic",
    ["rank"] = 3
  },
  [10173] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dampen_magic",
    ["rank"] = 4
  },
  [10174] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dampen_magic",
    ["rank"] = 5
  },
  [33944] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dampen_magic",
    ["rank"] = 6
  },
  [12051] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "evocation",
    ["rank"] = 0
  },
  [2136] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 1
  },
  [2137] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 2
  },
  [2138] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 3
  },
  [8412] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 4
  },
  [8413] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 5
  },
  [10197] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 6
  },
  [10199] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 7
  },
  [27078] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 8
  },
  [27079] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_blast",
    ["rank"] = 9
  },
  [543] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_ward",
    ["rank"] = 1
  },
  [8457] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_ward",
    ["rank"] = 2
  },
  [8458] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_ward",
    ["rank"] = 3
  },
  [10223] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_ward",
    ["rank"] = 4
  },
  [10225] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_ward",
    ["rank"] = 5
  },
  [27128] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fire_ward",
    ["rank"] = 6
  },
  [133] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 1
  },
  [143] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 2
  },
  [145] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 3
  },
  [3140] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 4
  },
  [8400] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 5
  },
  [8401] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 6
  },
  [8402] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 7
  },
  [10148] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 8
  },
  [10149] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 9
  },
  [10150] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 10
  },
  [10151] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 11
  },
  [25306] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "fireball",
    ["rank"] = 12
  },
  [2120] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "flamestrike",
    ["rank"] = 1
  },
  [2121] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "flamestrike",
    ["rank"] = 2
  },
  [8422] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "flamestrike",
    ["rank"] = 3
  },
  [8423] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "flamestrike",
    ["rank"] = 4
  },
  [10215] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "flamestrike",
    ["rank"] = 5
  },
  [10216] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "flamestrike",
    ["rank"] = 6
  },
  [27086] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "flamestrike",
    ["rank"] = 7
  },
  [168] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_armor",
    ["rank"] = 1
  },
  [7300] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_armor",
    ["rank"] = 2
  },
  [7301] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_armor",
    ["rank"] = 3
  },
  [122] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_nova",
    ["rank"] = 1
  },
  [865] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_nova",
    ["rank"] = 2
  },
  [6131] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_nova",
    ["rank"] = 3
  },
  [10230] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_nova",
    ["rank"] = 4
  },
  [27088] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_nova",
    ["rank"] = 5
  },
  [6143] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_ward",
    ["rank"] = 1
  },
  [8461] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_ward",
    ["rank"] = 2
  },
  [8462] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_ward",
    ["rank"] = 3
  },
  [10177] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_ward",
    ["rank"] = 4
  },
  [28609] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_ward",
    ["rank"] = 5
  },
  [32796] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frost_ward",
    ["rank"] = 6
  },
  [116] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 1
  },
  [205] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 2
  },
  [837] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 3
  },
  [7322] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 4
  },
  [8406] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 5
  },
  [8407] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 6
  },
  [8408] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 7
  },
  [10179] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 8
  },
  [10180] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 9
  },
  [10181] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 10
  },
  [25304] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 11
  },
  [27071] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 12
  },
  [27072] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 13
  },
  [38697] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "frostbolt",
    ["rank"] = 14
  },
  [7302] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_armor",
    ["rank"] = 1
  },
  [7320] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_armor",
    ["rank"] = 2
  },
  [10219] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_armor",
    ["rank"] = 3
  },
  [10220] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_armor",
    ["rank"] = 4
  },
  [27124] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_armor",
    ["rank"] = 5
  },
  [45438] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_block",
    ["rank"] = 0
  },
  [30455] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_lance",
    ["rank"] = 1
  },
  [66] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "invisibility",
    ["rank"] = 0
  },
  [6117] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mage_armor",
    ["rank"] = 1
  },
  [22782] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mage_armor",
    ["rank"] = 2
  },
  [22783] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mage_armor",
    ["rank"] = 3
  },
  [27125] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mage_armor",
    ["rank"] = 4
  },
  [1463] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mana_shield",
    ["rank"] = 1
  },
  [8494] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mana_shield",
    ["rank"] = 2
  },
  [8495] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mana_shield",
    ["rank"] = 3
  },
  [10191] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mana_shield",
    ["rank"] = 4
  },
  [10192] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mana_shield",
    ["rank"] = 5
  },
  [10193] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mana_shield",
    ["rank"] = 6
  },
  [27131] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "mana_shield",
    ["rank"] = 7
  },
  [30482] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "molten_armor",
    ["rank"] = 1
  },
  [118] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "polymorph",
    ["rank"] = 1
  },
  [12824] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "polymorph",
    ["rank"] = 2
  },
  [12825] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "polymorph",
    ["rank"] = 3
  },
  [12826] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "polymorph",
    ["rank"] = 4
  },
  [28272] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "polymorph_pig",
    ["rank"] = 1
  },
  [28271] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "polymorph_turtle",
    ["rank"] = 1
  },
  [475] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "remove_lesser_curse",
    ["rank"] = 0
  },
  [2948] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 1
  },
  [8444] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 2
  },
  [8445] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 3
  },
  [8446] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 4
  },
  [10205] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 5
  },
  [10206] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 6
  },
  [10207] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 7
  },
  [27073] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 8
  },
  [27074] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "scorch",
    ["rank"] = 9
  },
  [130] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "slow_fall",
    ["rank"] = 0
  },
  [30449] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "spellsteal",
    ["rank"] = 0
  },
  --[[
    Mage TALENTS
  ]]--
  [12042] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "arcane_power",
    ["rank"] = 0
  },
  [11113] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blast_wave",
    ["rank"] = 1
  },
  [13018] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blast_wave",
    ["rank"] = 2
  },
  [13019] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blast_wave",
    ["rank"] = 3
  },
  [13020] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blast_wave",
    ["rank"] = 4
  },
  [13021] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blast_wave",
    ["rank"] = 5
  },
  [27133] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blast_wave",
    ["rank"] = 6
  },
  [33933] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "blast_wave",
    ["rank"] = 7
  },
  [11958] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "cold_snap",
    ["rank"] = 0
  },
  [11129] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "combustion",
    ["rank"] = 0
  },
  [31661] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dragons_breath",
    ["rank"] = 1
  },
  [33041] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dragons_breath",
    ["rank"] = 2
  },
  [33042] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dragons_breath",
    ["rank"] = 3
  },
  [33043] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "dragons_breath",
    ["rank"] = 4
  },
  [11426] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_barrier",
    ["rank"] = 1
  },
  [13031] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_barrier",
    ["rank"] = 2
  },
  [13032] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_barrier",
    ["rank"] = 3
  },
  [13033] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_barrier",
    ["rank"] = 4
  },
  [27134] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_barrier",
    ["rank"] = 5
  },
  [33405] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "ice_barrier",
    ["rank"] = 6
  },
  [12472] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "icy_veins",
    ["rank"] = 0
  },
  [12043] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "presence_of_mind",
    ["rank"] = 0
  },
  [11366] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 1
  },
  [12505] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 2
  },
  [12522] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 3
  },
  [12523] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 4
  },
  [12524] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 5
  },
  [12525] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 6
  },
  [12526] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 7
  },
  [18809] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 8
  },
  [27132] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 9
  },
  [33938] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "pyroblast",
    ["rank"] = 10
  },
  [31589] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "slow",
    ["rank"] = 0
  },
  [31687] = {
    ["category"] = categories.MAGE.id,
    ["name"] = "summon_water_elemental",
    ["rank"] = 0
  },
  --[[
    Paladin ABILITIES
  ]]--
  [31884] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "avenging_wrath",
    ["rank"] = 0
  },
  [1044] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_freedom",
    ["rank"] = 0
  },
  [19977] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_light",
    ["rank"] = 1
  },
  [19978] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_light",
    ["rank"] = 2
  },
  [19979] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_light",
    ["rank"] = 3
  },
  [27144] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_light",
    ["rank"] = 4
  },
  [19740] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 1
  },
  [19834] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 2
  },
  [19835] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 3
  },
  [19836] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 4
  },
  [19837] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 5
  },
  [19838] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 6
  },
  [25291] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 7
  },
  [27140] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_might",
    ["rank"] = 8
  },
  [1022] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_protection",
    ["rank"] = 1
  },
  [5599] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_protection",
    ["rank"] = 2
  },
  [10278] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_protection",
    ["rank"] = 3
  },
  [6940] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sacrifice",
    ["rank"] = 1
  },
  [20729] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sacrifice",
    ["rank"] = 2
  },
  [27147] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sacrifice",
    ["rank"] = 3
  },
  [27148] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sacrifice",
    ["rank"] = 4
  },
  [19742] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_wisdom",
    ["rank"] = 1
  },
  [19850] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_wisdom",
    ["rank"] = 2
  },
  [19852] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_wisdom",
    ["rank"] = 3
  },
  [19853] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_wisdom",
    ["rank"] = 4
  },
  [19854] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_wisdom",
    ["rank"] = 5
  },
  [25290] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_wisdom",
    ["rank"] = 6
  },
  [27142] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_wisdom",
    ["rank"] = 7
  },
  [4987] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "cleanse",
    ["rank"] = 0
  },
  [19746] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "concentration_aura",
    ["rank"] = 0
  },
  [26573] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "consecration",
    ["rank"] = 1
  },
  [20116] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "consecration",
    ["rank"] = 2
  },
  [20922] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "consecration",
    ["rank"] = 3
  },
  [20923] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "consecration",
    ["rank"] = 4
  },
  [20924] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "consecration",
    ["rank"] = 5
  },
  [27173] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "consecration",
    ["rank"] = 6
  },
  [32223] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "crusader_aura",
    ["rank"] = 0
  },
  [465] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 1
  },
  [10290] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 2
  },
  [643] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 3
  },
  [10291] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 4
  },
  [1032] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 5
  },
  [10292] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 6
  },
  [10293] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 7
  },
  [27149] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "devotion_aura",
    ["rank"] = 8
  },
  [19752] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "divine_intervention",
    ["rank"] = 0
  },
  [498] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "divine_protection",
    ["rank"] = 1
  },
  [5573] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "divine_protection",
    ["rank"] = 2
  },
  [642] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "divine_shield",
    ["rank"] = 1
  },
  [1020] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "divine_shield",
    ["rank"] = 2
  },
  [19891] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "fire_resistance_aura",
    ["rank"] = 1
  },
  [19899] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "fire_resistance_aura",
    ["rank"] = 2
  },
  [19900] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "fire_resistance_aura",
    ["rank"] = 3
  },
  [27153] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "fire_resistance_aura",
    ["rank"] = 4
  },
  [19750] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "flash_of_light",
    ["rank"] = 1
  },
  [19939] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "flash_of_light",
    ["rank"] = 2
  },
  [19940] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "flash_of_light",
    ["rank"] = 3
  },
  [19941] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "flash_of_light",
    ["rank"] = 4
  },
  [19942] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "flash_of_light",
    ["rank"] = 5
  },
  [19943] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "flash_of_light",
    ["rank"] = 6
  },
  [27137] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "flash_of_light",
    ["rank"] = 7
  },
  [19888] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "frost_resistance_aura",
    ["rank"] = 1
  },
  [19897] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "frost_resistance_aura",
    ["rank"] = 2
  },
  [19898] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "frost_resistance_aura",
    ["rank"] = 3
  },
  [27152] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "frost_resistance_aura",
    ["rank"] = 4
  },
  [25898] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_kings",
    ["rank"] = 0
  },
  [25890] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_light",
    ["rank"] = 1
  },
  [27145] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_light",
    ["rank"] = 2
  },
  [25782] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_might",
    ["rank"] = 1
  },
  [25916] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_might",
    ["rank"] = 2
  },
  [27141] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_might",
    ["rank"] = 3
  },
  [25894] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_wisdom",
    ["rank"] = 1
  },
  [25918] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_wisdom",
    ["rank"] = 2
  },
  [27143] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "greater_blessing_of_wisdom",
    ["rank"] = 3
  },
  [853] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_justice",
    ["rank"] = 1
  },
  [5588] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_justice",
    ["rank"] = 2
  },
  [5589] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_justice",
    ["rank"] = 3
  },
  [10308] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_justice",
    ["rank"] = 4
  },
  [24275] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_wrath",
    ["rank"] = 1
  },
  [24274] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_wrath",
    ["rank"] = 2
  },
  [24239] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_wrath",
    ["rank"] = 3
  },
  [27180] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "hammer_of_wrath",
    ["rank"] = 4
  },
  [635] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 1
  },
  [639] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 2
  },
  [647] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 3
  },
  [1026] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 4
  },
  [1042] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 5
  },
  [3472] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 6
  },
  [10328] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 7
  },
  [10329] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 8
  },
  [25292] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 9
  },
  [27135] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 10
  },
  [27136] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_light",
    ["rank"] = 11
  },
  [20271] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "judgement",
    ["rank"] = 0
  },
  [633] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "lay_on_hands",
    ["rank"] = 1
  },
  [2800] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "lay_on_hands",
    ["rank"] = 2
  },
  [10310] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "lay_on_hands",
    ["rank"] = 3
  },
  [27154] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "lay_on_hands",
    ["rank"] = 4
  },
  [1152] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "purify",
    ["rank"] = 0
  },
  [7328] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "redemption",
    ["rank"] = 1
  },
  [10322] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "redemption",
    ["rank"] = 2
  },
  [10324] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "redemption",
    ["rank"] = 3
  },
  [20772] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "redemption",
    ["rank"] = 4
  },
  [20773] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "redemption",
    ["rank"] = 5
  },
  [7294] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "retribution_aura",
    ["rank"] = 1
  },
  [10298] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "retribution_aura",
    ["rank"] = 2
  },
  [10299] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "retribution_aura",
    ["rank"] = 3
  },
  [10300] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "retribution_aura",
    ["rank"] = 4
  },
  [10301] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "retribution_aura",
    ["rank"] = 5
  },
  [27150] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "retribution_aura",
    ["rank"] = 6
  },
  [31892] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_blood",
    ["rank"] = 1
  },
  [348704] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_corruption",
    ["rank"] = 1
  },
  [20164] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_justice",
    ["rank"] = 1
  },
  [31895] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_justice",
    ["rank"] = 2
  },
  [20165] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_light",
    ["rank"] = 1
  },
  [20347] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_light",
    ["rank"] = 2
  },
  [20348] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_light",
    ["rank"] = 3
  },
  [20349] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_light",
    ["rank"] = 4
  },
  [27160] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_light",
    ["rank"] = 5
  },
  [21084] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 1
  },
  [20287] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 2
  },
  [20288] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 3
  },
  [20289] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 4
  },
  [20290] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 5
  },
  [20291] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 6
  },
  [20292] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 7
  },
  [20293] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 8
  },
  [27155] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_righteousness",
    ["rank"] = 9
  },
  [21082] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_crusader",
    ["rank"] = 1
  },
  [20162] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_crusader",
    ["rank"] = 2
  },
  [20305] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_crusader",
    ["rank"] = 3
  },
  [20306] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_crusader",
    ["rank"] = 4
  },
  [20307] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_crusader",
    ["rank"] = 5
  },
  [20308] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_crusader",
    ["rank"] = 6
  },
  [27158] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_crusader",
    ["rank"] = 7
  },
  [348700] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_the_martyr",
    ["rank"] = 1
  },
  [31801] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_vengeance",
    ["rank"] = 1
  },
  [20166] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_wisdom",
    ["rank"] = 1
  },
  [20356] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_wisdom",
    ["rank"] = 2
  },
  [20357] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_wisdom",
    ["rank"] = 3
  },
  [27166] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_wisdom",
    ["rank"] = 4
  },
  [19876] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "shadow_resistance_aura",
    ["rank"] = 1
  },
  [19895] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "shadow_resistance_aura",
    ["rank"] = 2
  },
  [19896] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "shadow_resistance_aura",
    ["rank"] = 3
  },
  [27151] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "shadow_resistance_aura",
    ["rank"] = 4
  },
  --[[
    Paladin TALENTS
  ]]--
  [31935] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "avengers_shield",
    ["rank"] = 1
  },
  [32699] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "avengers_shield",
    ["rank"] = 2
  },
  [32700] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "avengers_shield",
    ["rank"] = 3
  },
  [20217] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_kings",
    ["rank"] = 0
  },
  [20911] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sanctuary",
    ["rank"] = 1
  },
  [20912] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sanctuary",
    ["rank"] = 2
  },
  [20913] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sanctuary",
    ["rank"] = 3
  },
  [20914] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sanctuary",
    ["rank"] = 4
  },
  [27168] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "blessing_of_sanctuary",
    ["rank"] = 5
  },
  [35395] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "crusader_strike",
    ["rank"] = 0
  },
  [20216] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "divine_favor",
    ["rank"] = 0
  },
  [20473] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_shock",
    ["rank"] = 1
  },
  [20929] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_shock",
    ["rank"] = 2
  },
  [20930] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_shock",
    ["rank"] = 3
  },
  [27174] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_shock",
    ["rank"] = 4
  },
  [33072] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "holy_shock",
    ["rank"] = 5
  },
  [20066] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "repentance",
    ["rank"] = 0
  },
  [20375] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_command",
    ["rank"] = 1
  },
  [20915] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_command",
    ["rank"] = 2
  },
  [20918] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_command",
    ["rank"] = 3
  },
  [20919] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_command",
    ["rank"] = 4
  },
  [20920] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_command",
    ["rank"] = 5
  },
  [27170] = {
    ["category"] = categories.PALADIN.id,
    ["name"] = "seal_of_command",
    ["rank"] = 6
  },
  --[[
    Priest ABILITIES
  ]]--
  [552] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "abolish_disease",
    ["rank"] = 0
  },
  [32546] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "binding_heal",
    ["rank"] = 1
  },
  [44041] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "chastise",
    ["rank"] = 1
  },
  [44043] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "chastise",
    ["rank"] = 2
  },
  [44044] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "chastise",
    ["rank"] = 3
  },
  [44045] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "chastise",
    ["rank"] = 4
  },
  [44046] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "chastise",
    ["rank"] = 5
  },
  [44047] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "chastise",
    ["rank"] = 6
  },
  [32676] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "consume_magic",
    ["rank"] = 0
  },
  [528] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "cure_disease",
    ["rank"] = 0
  },
  [13908] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 1
  },
  [19236] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 2
  },
  [19238] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 3
  },
  [19240] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 4
  },
  [19241] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 5
  },
  [19242] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 6
  },
  [19243] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 7
  },
  [25437] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "desperate_prayer",
    ["rank"] = 8
  },
  [2944] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "devouring_plague",
    ["rank"] = 1
  },
  [19276] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "devouring_plague",
    ["rank"] = 2
  },
  [19277] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "devouring_plague",
    ["rank"] = 3
  },
  [19278] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "devouring_plague",
    ["rank"] = 4
  },
  [19279] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "devouring_plague",
    ["rank"] = 5
  },
  [19280] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "devouring_plague",
    ["rank"] = 6
  },
  [25467] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "devouring_plague",
    ["rank"] = 7
  },
  [527] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "dispel_magic",
    ["rank"] = 1
  },
  [988] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "dispel_magic",
    ["rank"] = 2
  },
  [2651] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "elunes_grace",
    ["rank"] = 0
  },
  [6346] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "fear_ward",
    ["rank"] = 0
  },
  [13896] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "feedback",
    ["rank"] = 1
  },
  [19271] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "feedback",
    ["rank"] = 2
  },
  [19273] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "feedback",
    ["rank"] = 3
  },
  [19274] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "feedback",
    ["rank"] = 4
  },
  [19275] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "feedback",
    ["rank"] = 5
  },
  [25441] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "feedback",
    ["rank"] = 6
  },
  [2061] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 1
  },
  [9472] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 2
  },
  [9473] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 3
  },
  [9474] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 4
  },
  [10915] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 5
  },
  [10916] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 6
  },
  [10917] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 7
  },
  [25233] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 8
  },
  [25235] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "flash_heal",
    ["rank"] = 9
  },
  [2060] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "greater_heal",
    ["rank"] = 1
  },
  [10963] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "greater_heal",
    ["rank"] = 2
  },
  [10964] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "greater_heal",
    ["rank"] = 3
  },
  [10965] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "greater_heal",
    ["rank"] = 4
  },
  [25314] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "greater_heal",
    ["rank"] = 5
  },
  [25210] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "greater_heal",
    ["rank"] = 6
  },
  [25213] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "greater_heal",
    ["rank"] = 7
  },
  [2054] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "heal",
    ["rank"] = 1
  },
  [2055] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "heal",
    ["rank"] = 2
  },
  [6063] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "heal",
    ["rank"] = 3
  },
  [6064] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "heal",
    ["rank"] = 4
  },
  [9035] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "hex_of_weakness",
    ["rank"] = 1
  },
  [19281] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "hex_of_weakness",
    ["rank"] = 2
  },
  [19282] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "hex_of_weakness",
    ["rank"] = 3
  },
  [19283] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "hex_of_weakness",
    ["rank"] = 4
  },
  [19284] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "hex_of_weakness",
    ["rank"] = 5
  },
  [19285] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "hex_of_weakness",
    ["rank"] = 6
  },
  [25470] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "hex_of_weakness",
    ["rank"] = 7
  },
  [14914] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 1
  },
  [15262] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 2
  },
  [15263] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 3
  },
  [15264] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 4
  },
  [15265] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 5
  },
  [15266] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 6
  },
  [15267] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 7
  },
  [15261] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 8
  },
  [25384] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_fire",
    ["rank"] = 9
  },
  [588] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_fire",
    ["rank"] = 1
  },
  [7128] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_fire",
    ["rank"] = 2
  },
  [602] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_fire",
    ["rank"] = 3
  },
  [1006] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_fire",
    ["rank"] = 4
  },
  [10951] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_fire",
    ["rank"] = 5
  },
  [10952] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_fire",
    ["rank"] = 6
  },
  [25431] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_fire",
    ["rank"] = 7
  },
  [2050] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "lesser_heal",
    ["rank"] = 1
  },
  [2052] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "lesser_heal",
    ["rank"] = 2
  },
  [2053] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "lesser_heal",
    ["rank"] = 3
  },
  [1706] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "levitate",
    ["rank"] = 0
  },
  [8129] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mana_burn",
    ["rank"] = 1
  },
  [8131] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mana_burn",
    ["rank"] = 2
  },
  [10874] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mana_burn",
    ["rank"] = 3
  },
  [10875] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mana_burn",
    ["rank"] = 4
  },
  [10876] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mana_burn",
    ["rank"] = 5
  },
  [25379] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mana_burn",
    ["rank"] = 6
  },
  [25380] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mana_burn",
    ["rank"] = 7
  },
  [32375] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mass_dispel",
    ["rank"] = 0
  },
  [8092] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 1
  },
  [8102] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 2
  },
  [8103] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 3
  },
  [8104] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 4
  },
  [8105] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 5
  },
  [8106] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 6
  },
  [10945] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 7
  },
  [10946] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 8
  },
  [10947] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 9
  },
  [25372] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 10
  },
  [25375] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_blast",
    ["rank"] = 11
  },
  [605] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_control",
    ["rank"] = 1
  },
  [10911] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_control",
    ["rank"] = 2
  },
  [10912] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_control",
    ["rank"] = 3
  },
  [2096] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_vision",
    ["rank"] = 1
  },
  [10909] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_vision",
    ["rank"] = 2
  },
  [1243] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_fortitude",
    ["rank"] = 1
  },
  [1244] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_fortitude",
    ["rank"] = 2
  },
  [1245] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_fortitude",
    ["rank"] = 3
  },
  [2791] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_fortitude",
    ["rank"] = 4
  },
  [10937] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_fortitude",
    ["rank"] = 5
  },
  [10938] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_fortitude",
    ["rank"] = 6
  },
  [25389] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_fortitude",
    ["rank"] = 7
  },
  [17] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 1
  },
  [592] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 2
  },
  [600] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 3
  },
  [3747] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 4
  },
  [6065] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 5
  },
  [6066] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 6
  },
  [10898] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 7
  },
  [10899] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 8
  },
  [10900] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 9
  },
  [10901] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 10
  },
  [25217] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 11
  },
  [25218] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_word_shield",
    ["rank"] = 12
  },
  [21562] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_fortitude",
    ["rank"] = 1
  },
  [21564] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_fortitude",
    ["rank"] = 2
  },
  [25392] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_fortitude",
    ["rank"] = 3
  },
  [596] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_healing",
    ["rank"] = 1
  },
  [996] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_healing",
    ["rank"] = 2
  },
  [10960] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_healing",
    ["rank"] = 3
  },
  [10961] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_healing",
    ["rank"] = 4
  },
  [25316] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_healing",
    ["rank"] = 5
  },
  [25308] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_healing",
    ["rank"] = 6
  },
  [33076] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_mending",
    ["rank"] = 1
  },
  [27683] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_shadow_protection",
    ["rank"] = 1
  },
  [39374] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_shadow_protection",
    ["rank"] = 2
  },
  [27681] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_spirit",
    ["rank"] = 1
  },
  [32999] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "prayer_of_spirit",
    ["rank"] = 2
  },
  [8122] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "psychic_scream",
    ["rank"] = 1
  },
  [8124] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "psychic_scream",
    ["rank"] = 2
  },
  [10888] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "psychic_scream",
    ["rank"] = 3
  },
  [10890] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "psychic_scream",
    ["rank"] = 4
  },
  [139] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 1
  },
  [6074] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 2
  },
  [6075] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 3
  },
  [6076] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 4
  },
  [6077] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 5
  },
  [6078] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 6
  },
  [10927] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 7
  },
  [10928] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 8
  },
  [10929] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 9
  },
  [25315] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 10
  },
  [25221] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 11
  },
  [25222] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "renew",
    ["rank"] = 12
  },
  [2006] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "resurrection",
    ["rank"] = 1
  },
  [2010] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "resurrection",
    ["rank"] = 2
  },
  [10880] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "resurrection",
    ["rank"] = 3
  },
  [10881] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "resurrection",
    ["rank"] = 4
  },
  [20770] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "resurrection",
    ["rank"] = 5
  },
  [25435] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "resurrection",
    ["rank"] = 6
  },
  [976] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_protection",
    ["rank"] = 1
  },
  [10957] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_protection",
    ["rank"] = 2
  },
  [10958] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_protection",
    ["rank"] = 3
  },
  [25433] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_protection",
    ["rank"] = 4
  },
  [32379] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_death",
    ["rank"] = 1
  },
  [32996] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_death",
    ["rank"] = 2
  },
  [589] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 1
  },
  [594] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 2
  },
  [970] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 3
  },
  [992] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 4
  },
  [2767] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 5
  },
  [10892] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 6
  },
  [10893] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 7
  },
  [10894] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 8
  },
  [25367] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 9
  },
  [25368] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadow_word_pain",
    ["rank"] = 10
  },
  [34433] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowfiend",
    ["rank"] = 1
  },
  [18137] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowguard",
    ["rank"] = 1
  },
  [19308] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowguard",
    ["rank"] = 2
  },
  [19309] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowguard",
    ["rank"] = 3
  },
  [19310] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowguard",
    ["rank"] = 4
  },
  [19311] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowguard",
    ["rank"] = 5
  },
  [19312] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowguard",
    ["rank"] = 6
  },
  [25477] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowguard",
    ["rank"] = 7
  },
  [585] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 1
  },
  [591] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 2
  },
  [598] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 3
  },
  [984] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 4
  },
  [1004] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 5
  },
  [6060] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 6
  },
  [10933] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 7
  },
  [10934] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 8
  },
  [25363] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 9
  },
  [25364] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "smite",
    ["rank"] = 10
  },
  [10797] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 1
  },
  [19296] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 2
  },
  [19299] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 3
  },
  [19302] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 4
  },
  [19303] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 5
  },
  [19304] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 6
  },
  [19305] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 7
  },
  [25446] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "starshards",
    ["rank"] = 8
  },
  [32548] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "symbol_of_hope",
    ["rank"] = 0
  },
  [2652] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "touch_of_weakness",
    ["rank"] = 1
  },
  [19261] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "touch_of_weakness",
    ["rank"] = 2
  },
  [19262] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "touch_of_weakness",
    ["rank"] = 3
  },
  [19264] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "touch_of_weakness",
    ["rank"] = 4
  },
  [19265] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "touch_of_weakness",
    ["rank"] = 5
  },
  [19266] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "touch_of_weakness",
    ["rank"] = 6
  },
  [25461] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "touch_of_weakness",
    ["rank"] = 7
  },
  --[[
    Priest TALENTS
  ]]--
  [15268] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "blackout",
    ["rank"] = 1
  },
  [15323] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "blackout",
    ["rank"] = 2
  },
  [15324] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "blackout",
    ["rank"] = 3
  },
  [15325] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "blackout",
    ["rank"] = 4
  },
  [15326] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "blackout",
    ["rank"] = 5
  },
  [34861] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "circle_of_healing",
    ["rank"] = 1
  },
  [34863] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "circle_of_healing",
    ["rank"] = 2
  },
  [34864] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "circle_of_healing",
    ["rank"] = 3
  },
  [34865] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "circle_of_healing",
    ["rank"] = 4
  },
  [34866] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "circle_of_healing",
    ["rank"] = 5
  },
  [14752] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "divine_spirit",
    ["rank"] = 1
  },
  [14818] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "divine_spirit",
    ["rank"] = 2
  },
  [14819] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "divine_spirit",
    ["rank"] = 3
  },
  [27841] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "divine_spirit",
    ["rank"] = 4
  },
  [25312] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "divine_spirit",
    ["rank"] = 5
  },
  [15237] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_nova",
    ["rank"] = 1
  },
  [15430] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_nova",
    ["rank"] = 2
  },
  [15431] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_nova",
    ["rank"] = 3
  },
  [27799] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_nova",
    ["rank"] = 4
  },
  [27800] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_nova",
    ["rank"] = 5
  },
  [27801] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_nova",
    ["rank"] = 6
  },
  [25331] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "holy_nova",
    ["rank"] = 7
  },
  [14751] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "inner_focus",
    ["rank"] = 0
  },
  [15407] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_flay",
    ["rank"] = 1
  },
  [17311] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_flay",
    ["rank"] = 2
  },
  [17312] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_flay",
    ["rank"] = 3
  },
  [17313] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_flay",
    ["rank"] = 4
  },
  [17314] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_flay",
    ["rank"] = 5
  },
  [18807] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_flay",
    ["rank"] = 6
  },
  [25387] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "mind_flay",
    ["rank"] = 7
  },
  [33206] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "pain_suppression",
    ["rank"] = 0
  },
  [10060] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "power_infusion",
    ["rank"] = 0
  },
  [15473] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "shadowform",
    ["rank"] = 0
  },
  [15487] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "silence",
    ["rank"] = 0
  },
  [15286] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "vampiric_embrace",
    ["rank"] = 0
  },
  [34914] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "vampiric_touch",
    ["rank"] = 1
  },
  [34916] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "vampiric_touch",
    ["rank"] = 2
  },
  [34917] = {
    ["category"] = categories.PRIEST.id,
    ["name"] = "vampiric_touch",
    ["rank"] = 3
  },
  --[[
    ROGUE ABILITIES
  ]]--
  [8676] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ambush",
    ["rank"] = 1
  },
  [8724] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ambush",
    ["rank"] = 2
  },
  [8725] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ambush",
    ["rank"] = 3
  },
  [11267] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ambush",
    ["rank"] = 4
  },
  [11268] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ambush",
    ["rank"] = 5
  },
  [11269] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ambush",
    ["rank"] = 6
  },
  [27441] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ambush",
    ["rank"] = 7
  },
  [26688] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "anesthetic_poison_effect",
    ["rank"] = 1
  },
  [26785] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "anesthetic_poison",
    ["rank"] = 1
  },
  [53] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 1
  },
  [2589] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 2
  },
  [2590] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 3
  },
  [2591] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 4
  },
  [8721] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 5
  },
  [11279] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 6
  },
  [11280] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 7
  },
  [11281] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 8
  },
  [25300] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 9
  },
  [26863] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "backstab",
    ["rank"] = 10
  },
  [2094] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "blind",
    ["rank"] = 0
  },
  [1833] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "cheap_shot",
    ["rank"] = 0
  },
  [31224] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "cloak_of_shadows",
    ["rank"] = 0
  },
  [3409] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "crippling_poison_effect",
    ["rank"] = 1
  },
  [11201] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "crippling_poison_effect",
    ["rank"] = 2
  },
  [3408] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "crippling_poison",
    ["rank"] = 1
  },
  [11202] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "crippling_poison",
    ["rank"] = 2
  },
  [2818] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison_effect",
    ["rank"] = 1
  },
  [2819] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison_effect",
    ["rank"] = 2
  },
  [11353] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison_effect",
    ["rank"] = 3
  },
  [11354] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison_effect",
    ["rank"] = 4
  },
  [25349] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison_effect",
    ["rank"] = 5
  },
  [26968] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison_effect",
    ["rank"] = 6
  },
  [27187] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison_effect",
    ["rank"] = 7
  },
  [2823] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison",
    ["rank"] = 1
  },
  [2824] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison",
    ["rank"] = 2
  },
  [11355] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison",
    ["rank"] = 3
  },
  [11356] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison",
    ["rank"] = 4
  },
  [25351] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison",
    ["rank"] = 5
  },
  [26967] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison",
    ["rank"] = 6
  },
  [27186] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_poison",
    ["rank"] = 7
  },
  [26679] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "deadly_throw",
    ["rank"] = 0
  },
  [1725] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "distract",
    ["rank"] = 0
  },
  [32645] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "envenom",
    ["rank"] = 1
  },
  [32684] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "envenom",
    ["rank"] = 2
  },
  [5277] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "evasion",
    ["rank"] = 1
  },
  [26669] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "evasion",
    ["rank"] = 2
  },
  [2098] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 1
  },
  [6760] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 2
  },
  [6761] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 3
  },
  [6762] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 4
  },
  [8623] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 5
  },
  [8624] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 6
  },
  [11299] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 7
  },
  [11300] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 8
  },
  [31016] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 9
  },
  [26865] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "eviscerate",
    ["rank"] = 10
  },
  [8647] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "expose_armor",
    ["rank"] = 1
  },
  [8649] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "expose_armor",
    ["rank"] = 2
  },
  [8650] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "expose_armor",
    ["rank"] = 3
  },
  [11197] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "expose_armor",
    ["rank"] = 4
  },
  [11198] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "expose_armor",
    ["rank"] = 5
  },
  [26866] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "expose_armor",
    ["rank"] = 6
  },
  [703] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 1
  },
  [8631] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 2
  },
  [8632] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 3
  },
  [8633] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 4
  },
  [11289] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 5
  },
  [11290] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 6
  },
  [26839] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 7
  },
  [26884] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "garrote",
    ["rank"] = 8
  },
  [1776] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "gouge",
    ["rank"] = 1
  },
  [1777] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "gouge",
    ["rank"] = 2
  },
  [8629] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "gouge",
    ["rank"] = 3
  },
  [11285] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "gouge",
    ["rank"] = 4
  },
  [11286] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "gouge",
    ["rank"] = 5
  },
  [38764] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "gouge",
    ["rank"] = 6
  },
  [8680] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison_effect",
    ["rank"] = 1
  },
  [8685] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison_effect",
    ["rank"] = 2
  },
  [8689] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison_effect",
    ["rank"] = 3
  },
  [11335] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison_effect",
    ["rank"] = 4
  },
  [11336] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison_effect",
    ["rank"] = 5
  },
  [11337] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison_effect",
    ["rank"] = 6
  },
  [26890] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison_effect",
    ["rank"] = 7
  },
  [8679] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison",
    ["rank"] = 1
  },
  [8686] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison",
    ["rank"] = 2
  },
  [8688] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison",
    ["rank"] = 3
  },
  [11338] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison",
    ["rank"] = 4
  },
  [11339] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison",
    ["rank"] = 5
  },
  [11340] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison",
    ["rank"] = 6
  },
  [26891] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "instant_poison",
    ["rank"] = 7
  },
  [1766] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "kick",
    ["rank"] = 1
  },
  [1767] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "kick",
    ["rank"] = 2
  },
  [1768] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "kick",
    ["rank"] = 3
  },
  [1769] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "kick",
    ["rank"] = 4
  },
  [38768] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "kick",
    ["rank"] = 5
  },
  [408] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "kidney_shot",
    ["rank"] = 1
  },
  [8643] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "kidney_shot",
    ["rank"] = 2
  },
  [5760] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mind_numbing_poison_effect",
    ["rank"] = 1
  },
  [8692] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mind_numbing_poison_effect",
    ["rank"] = 2
  },
  [11398] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mind_numbing_poison_effect",
    ["rank"] = 3
  },
  [5761] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mind_numbing_poison",
    ["rank"] = 1
  },
  [8693] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mind_numbing_poison",
    ["rank"] = 2
  },
  [11399] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mind_numbing_poison",
    ["rank"] = 3
  },
  [1943] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "rupture",
    ["rank"] = 1
  },
  [8639] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "rupture",
    ["rank"] = 2
  },
  [8640] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "rupture",
    ["rank"] = 3
  },
  [11273] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "rupture",
    ["rank"] = 4
  },
  [11274] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "rupture",
    ["rank"] = 5
  },
  [11275] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "rupture",
    ["rank"] = 6
  },
  [26867] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "rupture",
    ["rank"] = 7
  },
  [6770] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sap",
    ["rank"] = 1
  },
  [2070] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sap",
    ["rank"] = 2
  },
  [11297] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sap",
    ["rank"] = 3
  },
  [5938] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "shiv",
    ["rank"] = 1
  },
  [1752] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 1
  },
  [1757] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 2
  },
  [1758] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 3
  },
  [1759] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 4
  },
  [1760] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 5
  },
  [8621] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 6
  },
  [11293] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 7
  },
  [11294] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 8
  },
  [26861] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 9
  },
  [26862] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sinister_strike",
    ["rank"] = 10
  },
  [5171] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "slice_and_dice",
    ["rank"] = 1
  },
  [6774] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "slice_and_dice",
    ["rank"] = 2
  },
  [2983] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sprint",
    ["rank"] = 1
  },
  [8696] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sprint",
    ["rank"] = 2
  },
  [11305] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "sprint",
    ["rank"] = 3
  },
  [1784] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "stealth",
    ["rank"] = 1
  },
  [1785] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "stealth",
    ["rank"] = 2
  },
  [1786] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "stealth",
    ["rank"] = 3
  },
  [1787] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "stealth",
    ["rank"] = 4
  },
  [1856] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "vanish",
    ["rank"] = 1
  },
  [1857] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "vanish",
    ["rank"] = 2
  },
  [26889] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "vanish",
    ["rank"] = 3
  },
  [13218] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison_effect",
    ["rank"] = 1
  },
  [13222] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison_effect",
    ["rank"] = 2
  },
  [13223] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison_effect",
    ["rank"] = 3
  },
  [13224] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison_effect",
    ["rank"] = 4
  },
  [27189] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison_effect",
    ["rank"] = 5
  },
  [13219] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison",
    ["rank"] = 1
  },
  [13225] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison",
    ["rank"] = 2
  },
  [13226] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison",
    ["rank"] = 3
  },
  [13227] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison",
    ["rank"] = 4
  },
  [27188] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "wound_poison",
    ["rank"] = 5
  },
  --[[
    ROGUE TALENTS
  ]]--
  [13750] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "adrenaline_rush",
    ["rank"] = 0
  },
  [13877] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "blade_flurry",
    ["rank"] = 0
  },
  [31228] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "cheat_death",
    ["rank"] = 1
  },
  [31229] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "cheat_death",
    ["rank"] = 2
  },
  [31230] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "cheat_death",
    ["rank"] = 3
  },
  [14177] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "cold_blood",
    ["rank"] = 0
  },
  [14278] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "ghostly_strike",
    ["rank"] = 0
  },
  [16511] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "hemorrhage",
    ["rank"] = 1
  },
  [17347] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "hemorrhage",
    ["rank"] = 2
  },
  [17348] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "hemorrhage",
    ["rank"] = 3
  },
  [26864] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "hemorrhage",
    ["rank"] = 4
  },
  [1329] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mutilate",
    ["rank"] = 1
  },
  [34411] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mutilate",
    ["rank"] = 2
  },
  [34412] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mutilate",
    ["rank"] = 3
  },
  [34413] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "mutilate",
    ["rank"] = 4
  },
  [14183] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "premeditation",
    ["rank"] = 0
  },
  [14185] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "preparation",
    ["rank"] = 0
  },
  [14251] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "riposte",
    ["rank"] = 0
  },
  [36554] = {
    ["category"] = categories.ROGUE.id,
    ["name"] = "shadowstep",
    ["rank"] = 0
  },
  --[[
    SHAMAN ABILITIES
  ]]--
  [2008] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "ancestral_spirit",
    ["rank"] = 1
  },
  [20609] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "ancestral_spirit",
    ["rank"] = 2
  },
  [20610] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "ancestral_spirit",
    ["rank"] = 3
  },
  [20776] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "ancestral_spirit",
    ["rank"] = 4
  },
  [20777] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "ancestral_spirit",
    ["rank"] = 5
  },
  [2825] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "bloodlust",
    ["rank"] = 1
  },
  [1064] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_heal",
    ["rank"] = 1
  },
  [10622] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_heal",
    ["rank"] = 2
  },
  [10623] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_heal",
    ["rank"] = 3
  },
  [25422] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_heal",
    ["rank"] = 4
  },
  [25423] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_heal",
    ["rank"] = 5
  },
  [421] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_lightning",
    ["rank"] = 1
  },
  [930] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_lightning",
    ["rank"] = 2
  },
  [2860] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_lightning",
    ["rank"] = 3
  },
  [10605] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_lightning",
    ["rank"] = 4
  },
  [25439] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_lightning",
    ["rank"] = 5
  },
  [25442] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "chain_lightning",
    ["rank"] = 6
  },
  [2870] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "cure_disease",
    ["rank"] = 0
  },
  [526] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "cure_poison",
    ["rank"] = 0
  },
  [8170] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "disease_cleansing_totem",
    ["rank"] = 0
  },
  [2062] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_elemental_totem",
    ["rank"] = 1
  },
  [8042] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shock",
    ["rank"] = 1
  },
  [8044] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shock",
    ["rank"] = 2
  },
  [8045] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shock",
    ["rank"] = 3
  },
  [8046] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shock",
    ["rank"] = 4
  },
  [10412] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shock",
    ["rank"] = 5
  },
  [10413] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shock",
    ["rank"] = 6
  },
  [10414] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shock",
    ["rank"] = 7
  },
  [2484] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earthbind_totem",
    ["rank"] = 0
  },
  [2894] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_elemental_totem",
    ["rank"] = 1
  },
  [1535] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_nova_totem",
    ["rank"] = 1
  },
  [8498] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_nova_totem",
    ["rank"] = 2
  },
  [8499] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_nova_totem",
    ["rank"] = 3
  },
  [11314] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_nova_totem",
    ["rank"] = 4
  },
  [11315] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_nova_totem",
    ["rank"] = 5
  },
  [25546] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_nova_totem",
    ["rank"] = 6
  },
  [25547] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_nova_totem",
    ["rank"] = 7
  },
  [8184] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_resistance_totem",
    ["rank"] = 1
  },
  [10537] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_resistance_totem",
    ["rank"] = 2
  },
  [10538] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_resistance_totem",
    ["rank"] = 3
  },
  [25563] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "fire_resistance_totem",
    ["rank"] = 4
  },
  [8050] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flame_shock",
    ["rank"] = 1
  },
  [8052] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flame_shock",
    ["rank"] = 2
  },
  [8053] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flame_shock",
    ["rank"] = 3
  },
  [10447] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flame_shock",
    ["rank"] = 4
  },
  [10448] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flame_shock",
    ["rank"] = 5
  },
  [29228] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flame_shock",
    ["rank"] = 6
  },
  [25457] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flame_shock",
    ["rank"] = 7
  },
  [8227] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_totem",
    ["rank"] = 1
  },
  [8249] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_totem",
    ["rank"] = 2
  },
  [10526] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_totem",
    ["rank"] = 3
  },
  [16387] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_totem",
    ["rank"] = 4
  },
  [25557] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_totem",
    ["rank"] = 5
  },
  [8024] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_weapon",
    ["rank"] = 1
  },
  [8027] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_weapon",
    ["rank"] = 2
  },
  [8030] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_weapon",
    ["rank"] = 3
  },
  [16339] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_weapon",
    ["rank"] = 4
  },
  [16341] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_weapon",
    ["rank"] = 5
  },
  [16342] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_weapon",
    ["rank"] = 6
  },
  [25489] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "flametongue_weapon",
    ["rank"] = 7
  },
  [8181] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_resistance_totem",
    ["rank"] = 1
  },
  [10478] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_resistance_totem",
    ["rank"] = 2
  },
  [10479] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_resistance_totem",
    ["rank"] = 3
  },
  [25560] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_resistance_totem",
    ["rank"] = 4
  },
  [8056] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_shock",
    ["rank"] = 1
  },
  [8058] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_shock",
    ["rank"] = 2
  },
  [10472] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_shock",
    ["rank"] = 3
  },
  [10473] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_shock",
    ["rank"] = 4
  },
  [25464] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frost_shock",
    ["rank"] = 5
  },
  [8033] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frostbrand_weapon",
    ["rank"] = 1
  },
  [8038] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frostbrand_weapon",
    ["rank"] = 2
  },
  [10456] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frostbrand_weapon",
    ["rank"] = 3
  },
  [16355] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frostbrand_weapon",
    ["rank"] = 4
  },
  [16356] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frostbrand_weapon",
    ["rank"] = 5
  },
  [25500] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "frostbrand_weapon",
    ["rank"] = 6
  },
  [2645] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "ghost_wolf",
    ["rank"] = 0
  },
  [8835] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "grace_of_air_totem",
    ["rank"] = 1
  },
  [10627] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "grace_of_air_totem",
    ["rank"] = 2
  },
  [25359] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "grace_of_air_totem",
    ["rank"] = 3
  },
  [8177] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "grounding_totem",
    ["rank"] = 0
  },
  [5394] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_stream_totem",
    ["rank"] = 1
  },
  [6375] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_stream_totem",
    ["rank"] = 2
  },
  [6377] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_stream_totem",
    ["rank"] = 3
  },
  [10462] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_stream_totem",
    ["rank"] = 4
  },
  [10463] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_stream_totem",
    ["rank"] = 5
  },
  [25567] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_stream_totem",
    ["rank"] = 6
  },
  [331] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 1
  },
  [332] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 2
  },
  [547] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 3
  },
  [913] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 4
  },
  [939] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 5
  },
  [959] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 6
  },
  [8005] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 7
  },
  [10395] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 8
  },
  [10396] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 9
  },
  [25357] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 10
  },
  [25391] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 11
  },
  [25396] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "healing_wave",
    ["rank"] = 12
  },
  [32182] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "heroism",
    ["rank"] = 0
  },
  [8004] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lesser_healing_wave",
    ["rank"] = 1
  },
  [8008] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lesser_healing_wave",
    ["rank"] = 2
  },
  [8010] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lesser_healing_wave",
    ["rank"] = 3
  },
  [10466] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lesser_healing_wave",
    ["rank"] = 4
  },
  [10467] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lesser_healing_wave",
    ["rank"] = 5
  },
  [10468] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lesser_healing_wave",
    ["rank"] = 6
  },
  [25420] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lesser_healing_wave",
    ["rank"] = 7
  },
  [403] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 1
  },
  [529] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 2
  },
  [548] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 3
  },
  [915] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 4
  },
  [943] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 5
  },
  [6041] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 6
  },
  [10391] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 7
  },
  [10392] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 8
  },
  [15207] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 9
  },
  [15208] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 10
  },
  [25448] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 11
  },
  [25449] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_bolt",
    ["rank"] = 12
  },
  [324] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 1
  },
  [325] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 2
  },
  [905] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 3
  },
  [945] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 4
  },
  [8134] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 5
  },
  [10431] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 6
  },
  [10432] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 7
  },
  [25469] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 8
  },
  [25472] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "lightning_shield",
    ["rank"] = 9
  },
  [8190] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "magma_totem",
    ["rank"] = 1
  },
  [10585] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "magma_totem",
    ["rank"] = 2
  },
  [10586] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "magma_totem",
    ["rank"] = 3
  },
  [10587] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "magma_totem",
    ["rank"] = 4
  },
  [25552] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "magma_totem",
    ["rank"] = 5
  },
  [5675] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "mana_spring_totem",
    ["rank"] = 1
  },
  [10495] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "mana_spring_totem",
    ["rank"] = 2
  },
  [10496] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "mana_spring_totem",
    ["rank"] = 3
  },
  [10497] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "mana_spring_totem",
    ["rank"] = 4
  },
  [25570] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "mana_spring_totem",
    ["rank"] = 5
  },
  [10595] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "nature_resistance_totem",
    ["rank"] = 1
  },
  [10600] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "nature_resistance_totem",
    ["rank"] = 2
  },
  [10601] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "nature_resistance_totem",
    ["rank"] = 3
  },
  [25574] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "nature_resistance_totem",
    ["rank"] = 4
  },
  [8166] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "poison_cleansing_totem",
    ["rank"] = 0
  },
  [370] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "purge",
    ["rank"] = 1
  },
  [8012] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "purge",
    ["rank"] = 2
  },
  [20608] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "reincarnation",
    ["rank"] = 0
  },
  [8017] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 1
  },
  [8018] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 2
  },
  [8019] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 3
  },
  [10399] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 4
  },
  [16314] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 5
  },
  [16315] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 6
  },
  [16316] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 7
  },
  [25479] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 8
  },
  [25485] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "rockbiter_weapon",
    ["rank"] = 9
  },
  [3599] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "searing_totem",
    ["rank"] = 1
  },
  [6363] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "searing_totem",
    ["rank"] = 2
  },
  [6364] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "searing_totem",
    ["rank"] = 3
  },
  [6365] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "searing_totem",
    ["rank"] = 4
  },
  [10437] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "searing_totem",
    ["rank"] = 5
  },
  [10438] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "searing_totem",
    ["rank"] = 6
  },
  [25533] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "searing_totem",
    ["rank"] = 7
  },
  [5730] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneclaw_totem",
    ["rank"] = 1
  },
  [6390] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneclaw_totem",
    ["rank"] = 2
  },
  [6391] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneclaw_totem",
    ["rank"] = 3
  },
  [6392] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneclaw_totem",
    ["rank"] = 4
  },
  [10427] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneclaw_totem",
    ["rank"] = 5
  },
  [10428] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneclaw_totem",
    ["rank"] = 6
  },
  [25525] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneclaw_totem",
    ["rank"] = 7
  },
  [8071] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 1
  },
  [8154] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 2
  },
  [8155] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 3
  },
  [10406] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 4
  },
  [10407] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 5
  },
  [10408] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 6
  },
  [25508] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 7
  },
  [25509] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stoneskin_totem",
    ["rank"] = 8
  },
  [8075] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "strength_of_earth_totem",
    ["rank"] = 1
  },
  [8160] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "strength_of_earth_totem",
    ["rank"] = 2
  },
  [8161] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "strength_of_earth_totem",
    ["rank"] = 3
  },
  [10442] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "strength_of_earth_totem",
    ["rank"] = 4
  },
  [25361] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "strength_of_earth_totem",
    ["rank"] = 5
  },
  [25528] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "strength_of_earth_totem",
    ["rank"] = 6
  },
  [8143] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "tremor_totem",
    ["rank"] = 0
  },
  [131] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "water_breathing",
    ["rank"] = 0
  },
  [24398] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "water_shield",
    ["rank"] = 1
  },
  [33736] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "water_shield",
    ["rank"] = 2
  },
  [8512] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_totem",
    ["rank"] = 1
  },
  [10613] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_totem",
    ["rank"] = 2
  },
  [10614] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_totem",
    ["rank"] = 3
  },
  [25585] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_totem",
    ["rank"] = 4
  },
  [25587] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_totem",
    ["rank"] = 5
  },
  [8232] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_weapon",
    ["rank"] = 1
  },
  [8235] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_weapon",
    ["rank"] = 2
  },
  [10486] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_weapon",
    ["rank"] = 3
  },
  [16362] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_weapon",
    ["rank"] = 4
  },
  [25505] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windfury_weapon",
    ["rank"] = 5
  },
  [15107] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windwall_totem",
    ["rank"] = 1
  },
  [15111] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windwall_totem",
    ["rank"] = 2
  },
  [15112] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windwall_totem",
    ["rank"] = 3
  },
  [25577] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "windwall_totem",
    ["rank"] = 4
  },
  [3738] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "wrath_of_air_totem",
    ["rank"] = 1
  },
  --[[
    SHAMAN TALENTS
  ]]--
  [974] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shield",
    ["rank"] = 1
  },
  [32593] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shield",
    ["rank"] = 2
  },
  [32594] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "earth_shield",
    ["rank"] = 3
  },
  [16166] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "elemental_mastery",
    ["rank"] = 0
  },
  [16190] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "mana_tide_totem",
    ["rank"] = 0
  },
  [16188] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "natures_swiftness",
    ["rank"] = 0
  },
  [30823] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "shamanistic_rage",
    ["rank"] = 1
  },
  [17364] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "stormstrike",
    ["rank"] = 0
  },
  [30706] = {
    ["category"] = categories.SHAMAN.id,
    ["name"] = "totem_of_wrath",
    ["rank"] = 1
  },
  --[[
    WARLOCK ABILITIES
  ]]--
  [710] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "banish",
    ["rank"] = 1
  },
  [18647] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "banish",
    ["rank"] = 2
  },
  [172] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 1
  },
  [6222] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 2
  },
  [6223] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 3
  },
  [7648] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 4
  },
  [11671] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 5
  },
  [11672] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 6
  },
  [25311] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 7
  },
  [27216] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "corruption",
    ["rank"] = 8
  },
  [6366] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_firestone",
    ["rank"] = 1
  },
  [17951] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_firestone",
    ["rank"] = 2
  },
  [17952] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_firestone",
    ["rank"] = 3
  },
  [17953] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_firestone",
    ["rank"] = 4
  },
  [27250] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_firestone",
    ["rank"] = 5
  },
  [693] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_soulstone",
    ["rank"] = 1
  },
  [20752] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_soulstone",
    ["rank"] = 2
  },
  [20755] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_soulstone",
    ["rank"] = 3
  },
  [20756] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_soulstone",
    ["rank"] = 4
  },
  [20757] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_soulstone",
    ["rank"] = 5
  },
  [27238] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_soulstone",
    ["rank"] = 6
  },
  [20707] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soulstone_resurrection",
    ["rank"] = 1 -- fake rank
  },
  [20762] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soulstone_resurrection",
    ["rank"] = 2 -- fake rank
  },
  [20763] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soulstone_resurrection",
    ["rank"] = 3 -- fake rank
  },
  [20764] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soulstone_resurrection",
    ["rank"] = 4 -- fake rank
  },
  [20765] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soulstone_resurrection",
    ["rank"] = 5 -- fake rank
  },
  [27239] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soulstone_resurrection",
    ["rank"] = 6 -- fake rank
  },
  [2362] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_spellstone",
    ["rank"] = 1
  },
  [17727] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_spellstone",
    ["rank"] = 2
  },
  [17728] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_spellstone",
    ["rank"] = 3
  },
  [28172] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "create_spellstone",
    ["rank"] = 4
  },
  [128] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "spellstone",
    ["rank"] = 1 -- fake rank
  },
  [17729] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "spellstone", -- greater spellstone
    ["rank"] = 2 -- fake rank
  },
  [17730] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "spellstone", -- major spellstone
    ["rank"] = 3 -- fake rank
  },
  [28170] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "spellstone", -- master spellstone
    ["rank"] = 4 -- fake rank
  },
  [980] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_agony",
    ["rank"] = 1
  },
  [1014] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_agony",
    ["rank"] = 2
  },
  [6217] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_agony",
    ["rank"] = 3
  },
  [11711] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_agony",
    ["rank"] = 4
  },
  [11712] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_agony",
    ["rank"] = 5
  },
  [11713] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_agony",
    ["rank"] = 6
  },
  [27218] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_agony",
    ["rank"] = 7
  },
  [704] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_recklessness",
    ["rank"] = 1
  },
  [7658] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_recklessness",
    ["rank"] = 2
  },
  [7659] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_recklessness",
    ["rank"] = 3
  },
  [11717] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_recklessness",
    ["rank"] = 4
  },
  [27226] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_recklessness",
    ["rank"] = 5
  },
  [1490] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_the_elements",
    ["rank"] = 1
  },
  [11721] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_the_elements",
    ["rank"] = 2
  },
  [11722] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_the_elements",
    ["rank"] = 3
  },
  [27228] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_the_elements",
    ["rank"] = 4
  },
  [1714] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_tongues",
    ["rank"] = 1
  },
  [11719] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_tongues",
    ["rank"] = 2
  },
  [702] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 1
  },
  [1108] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 2
  },
  [6205] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 3
  },
  [7646] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 4
  },
  [11707] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 5
  },
  [11708] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 6
  },
  [27224] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 7
  },
  [30909] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_weakness",
    ["rank"] = 8
  },
  [6789] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "death_coil",
    ["rank"] = 1
  },
  [17925] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "death_coil",
    ["rank"] = 2
  },
  [17926] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "death_coil",
    ["rank"] = 3
  },
  [27223] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "death_coil",
    ["rank"] = 4
  },
  [706] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_armor",
    ["rank"] = 1
  },
  [1086] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_armor",
    ["rank"] = 2
  },
  [11733] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_armor",
    ["rank"] = 3
  },
  [11734] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_armor",
    ["rank"] = 4
  },
  [11735] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_armor",
    ["rank"] = 5
  },
  [27260] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_armor",
    ["rank"] = 6
  },
  [687] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_skin",
    ["rank"] = 1
  },
  [696] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demon_skin",
    ["rank"] = 2
  },
  [132] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "detect_invisibility",
    ["rank"] = 0
  },
  [689] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 1
  },
  [699] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 2
  },
  [709] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 3
  },
  [7651] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 4
  },
  [11699] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 5
  },
  [11700] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 6
  },
  [27219] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 7
  },
  [27220] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_life",
    ["rank"] = 8
  },
  [5138] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_mana",
    ["rank"] = 1
  },
  [6226] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_mana",
    ["rank"] = 2
  },
  [11703] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_mana",
    ["rank"] = 3
  },
  [11704] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_mana",
    ["rank"] = 4
  },
  [27221] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_mana",
    ["rank"] = 5
  },
  [1120] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_soul",
    ["rank"] = 1
  },
  [8288] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_soul",
    ["rank"] = 2
  },
  [8289] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_soul",
    ["rank"] = 3
  },
  [11675] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_soul",
    ["rank"] = 4
  },
  [27217] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "drain_soul",
    ["rank"] = 5
  },
  [126] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "eye_of_kilrogg",
    ["rank"] = 0
  },
  [5782] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "fear",
    ["rank"] = 1
  },
  [6213] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "fear",
    ["rank"] = 2
  },
  [6215] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "fear",
    ["rank"] = 3
  },
  [28176] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "fel_armor",
    ["rank"] = 1
  },
  [28189] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "fel_armor",
    ["rank"] = 2
  },
  [755] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 1
  },
  [3698] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 2
  },
  [3699] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 3
  },
  [3700] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 4
  },
  [11693] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 5
  },
  [11694] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 6
  },
  [11695] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 7
  },
  [27259] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "health_funnel",
    ["rank"] = 8
  },
  [1949] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "hellfire",
    ["rank"] = 1
  },
  [11683] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "hellfire",
    ["rank"] = 2
  },
  [11684] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "hellfire",
    ["rank"] = 3
  },
  [27213] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "hellfire",
    ["rank"] = 4
  },
  [5484] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "howl_of_terror",
    ["rank"] = 1
  },
  [17928] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "howl_of_terror",
    ["rank"] = 2
  },
  [348] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 1
  },
  [707] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 2
  },
  [1094] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 3
  },
  [2941] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 4
  },
  [11665] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 5
  },
  [11667] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 6
  },
  [11668] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 7
  },
  [25309] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 8
  },
  [27215] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "immolate",
    ["rank"] = 9
  },
  [29722] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "incinerate",
    ["rank"] = 1
  },
  [32231] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "incinerate",
    ["rank"] = 2
  },
  [1454] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "life_tap",
    ["rank"] = 1
  },
  [1455] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "life_tap",
    ["rank"] = 2
  },
  [1456] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "life_tap",
    ["rank"] = 3
  },
  [11687] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "life_tap",
    ["rank"] = 4
  },
  [11688] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "life_tap",
    ["rank"] = 5
  },
  [11689] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "life_tap",
    ["rank"] = 6
  },
  [27222] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "life_tap",
    ["rank"] = 7
  },
  [5740] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "rain_of_fire",
    ["rank"] = 1
  },
  [6219] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "rain_of_fire",
    ["rank"] = 2
  },
  [11677] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "rain_of_fire",
    ["rank"] = 3
  },
  [11678] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "rain_of_fire",
    ["rank"] = 4
  },
  [27212] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "rain_of_fire",
    ["rank"] = 5
  },
  [29893] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "ritual_of_souls",
    ["rank"] = 1
  },
  [698] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "ritual_of_summoning",
    ["rank"] = 0
  },
  [5676] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 1
  },
  [17919] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 2
  },
  [17920] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 3
  },
  [17921] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 4
  },
  [17922] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 5
  },
  [17923] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 6
  },
  [27210] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 7
  },
  [30459] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "searing_pain",
    ["rank"] = 8
  },
  [27243] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "seed_of_corruption",
    ["rank"] = 1
  },
  [686] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 1
  },
  [695] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 2
  },
  [705] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 3
  },
  [1088] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 4
  },
  [1106] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 5
  },
  [7641] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 6
  },
  [11659] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 7
  },
  [11660] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 8
  },
  [11661] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 9
  },
  [25307] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 10
  },
  [27209] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_bolt",
    ["rank"] = 11
  },
  [6229] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_ward",
    ["rank"] = 1
  },
  [11739] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_ward",
    ["rank"] = 2
  },
  [11740] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_ward",
    ["rank"] = 3
  },
  [28610] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadow_ward",
    ["rank"] = 4
  },
  [6353] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soul_fire",
    ["rank"] = 1
  },
  [17924] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soul_fire",
    ["rank"] = 2
  },
  [27211] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soul_fire",
    ["rank"] = 3
  },
  [30545] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soul_fire",
    ["rank"] = 4
  },
  [691] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "summon_felhunter",
    ["rank"] = 0
  },
  [688] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "summon_imp",
    ["rank"] = 0
  },
  [712] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "summon_succubus",
    ["rank"] = 0
  },
  [697] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "summon_voidwalker",
    ["rank"] = 0
  },
  [5697] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "unending_breath",
    ["rank"] = 0
  },
  --[[
    WARLOCK TALENTS
  ]]--
  [18288] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "amplify_curse",
    ["rank"] = 0
  },
  [17962] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "conflagrate",
    ["rank"] = 1
  },
  [18930] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "conflagrate",
    ["rank"] = 2
  },
  [18931] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "conflagrate",
    ["rank"] = 3
  },
  [18932] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "conflagrate",
    ["rank"] = 4
  },
  [27266] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "conflagrate",
    ["rank"] = 5
  },
  [30912] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "conflagrate",
    ["rank"] = 6
  },
  [18223] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "curse_of_exhaustion",
    ["rank"] = 0
  },
  [18220] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "dark_pact",
    ["rank"] = 1
  },
  [18937] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "dark_pact",
    ["rank"] = 2
  },
  [18938] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "dark_pact",
    ["rank"] = 3
  },
  [27265] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "dark_pact",
    ["rank"] = 4
  },
  [18788] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "demonic_sacrifice",
    ["rank"] = 0
  },
  [18708] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "fel_domination",
    ["rank"] = 0
  },
  [30300] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "nether_protection",
    ["rank"] = 0
  },
  [18094] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "nightfall",
    ["rank"] = 1
  },
  [18095] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "nightfall",
    ["rank"] = 2
  },
  [17877] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 1
  },
  [18867] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 2
  },
  [18868] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 3
  },
  [18869] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 4
  },
  [18870] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 5
  },
  [18871] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 6
  },
  [27263] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 7
  },
  [30546] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowburn",
    ["rank"] = 8
  },
  [30283] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowfury",
    ["rank"] = 1
  },
  [30413] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowfury",
    ["rank"] = 2
  },
  [30414] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "shadowfury",
    ["rank"] = 3
  },
  [18265] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "siphon_life",
    ["rank"] = 1
  },
  [18879] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "siphon_life",
    ["rank"] = 2
  },
  [18880] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "siphon_life",
    ["rank"] = 3
  },
  [18881] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "siphon_life",
    ["rank"] = 4
  },
  [27264] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "siphon_life",
    ["rank"] = 5
  },
  [30911] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "siphon_life",
    ["rank"] = 6
  },
  [19028] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "soul_link",
    ["rank"] = 0
  },
  [30146] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "summon_felguard",
    ["rank"] = 0
  },
  [30108] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "unstable_affliction",
    ["rank"] = 1
  },
  [30404] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "unstable_affliction",
    ["rank"] = 2
  },
  [30405] = {
    ["category"] = categories.WARLOCK.id,
    ["name"] = "unstable_affliction",
    ["rank"] = 3
  },
  --[[
    WARRIOR ABILITIES
  ]]--
  [2457] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "battle_stance",
    ["rank"] = 0
  },
  [18499] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "berserker_rage",
    ["rank"] = 0
  },
  [2458] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "berserker_stance",
    ["rank"] = 0
  },
  [2687] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "bloodrage",
    ["rank"] = 0
  },
  [100] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "charge",
    ["rank"] = 1
  },
  [6178] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "charge",
    ["rank"] = 2
  },
  [11578] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "charge",
    ["rank"] = 3
  },
  [71] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "defensive_stance",
    ["rank"] = 0
  },
  [1160] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "demoralizing_shout",
    ["rank"] = 1
  },
  [6190] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "demoralizing_shout",
    ["rank"] = 2
  },
  [11554] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "demoralizing_shout",
    ["rank"] = 3
  },
  [11555] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "demoralizing_shout",
    ["rank"] = 4
  },
  [11556] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "demoralizing_shout",
    ["rank"] = 5
  },
  [25202] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "demoralizing_shout",
    ["rank"] = 6
  },
  [25203] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "demoralizing_shout",
    ["rank"] = 7
  },
  [676] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "disarm",
    ["rank"] = 0
  },
  [1715] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "hamstring",
    ["rank"] = 1
  },
  [7372] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "hamstring",
    ["rank"] = 2
  },
  [7373] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "hamstring",
    ["rank"] = 3
  },
  [25212] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "hamstring",
    ["rank"] = 4
  },
  [20252] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "intercept",
    ["rank"] = 1
  },
  [20616] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "intercept",
    ["rank"] = 2
  },
  [20617] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "intercept",
    ["rank"] = 3
  },
  [25272] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "intercept",
    ["rank"] = 4
  },
  [25275] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "intercept",
    ["rank"] = 5
  },
  [3411] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "intervene",
    ["rank"] = 0
  },
  [5246] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "intimidating_shout",
    ["rank"] = 0
  },
  [7384] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "overpower",
    ["rank"] = 1
  },
  [7887] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "overpower",
    ["rank"] = 2
  },
  [11584] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "overpower",
    ["rank"] = 3
  },
  [11585] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "overpower",
    ["rank"] = 4
  },
  [6552] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "pummel",
    ["rank"] = 1
  },
  [6554] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "pummel",
    ["rank"] = 2
  },
  [1719] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "recklessness",
    ["rank"] = 0
  },
  [20230] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "retaliation",
    ["rank"] = 0
  },
  [72] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_bash",
    ["rank"] = 1
  },
  [1671] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_bash",
    ["rank"] = 2
  },
  [1672] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_bash",
    ["rank"] = 3
  },
  [29704] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_bash",
    ["rank"] = 4
  },
  [2565] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_block",
    ["rank"] = 0
  },
  [871] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_wall",
    ["rank"] = 0
  },
  [1464] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "slam",
    ["rank"] = 1
  },
  [8820] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "slam",
    ["rank"] = 2
  },
  [11604] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "slam",
    ["rank"] = 3
  },
  [11605] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "slam",
    ["rank"] = 4
  },
  [25241] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "slam",
    ["rank"] = 5
  },
  [25242] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "slam",
    ["rank"] = 6
  },
  [23920] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "spell_reflection",
    ["rank"] = 0
  },
  [7386] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "sunder_armor",
    ["rank"] = 1
  },
  [7405] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "sunder_armor",
    ["rank"] = 2
  },
  [8380] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "sunder_armor",
    ["rank"] = 3
  },
  [11596] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "sunder_armor",
    ["rank"] = 4
  },
  [11597] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "sunder_armor",
    ["rank"] = 5
  },
  [1680] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "whirlwind",
    ["rank"] = 0
  },
  --[[
    WARRIOR TALENTS
  ]]--
  [12809] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "concussion_blow",
    ["rank"] = 0
  },
  [12292] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "death_wish",
    ["rank"] = 0
  },
  [12975] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "last_stand",
    ["rank"] = 0
  },
  [12294] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "mortal_strike",
    ["rank"] = 1
  },
  [21551] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "mortal_strike",
    ["rank"] = 2
  },
  [21552] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "mortal_strike",
    ["rank"] = 3
  },
  [21553] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "mortal_strike",
    ["rank"] = 4
  },
  [25248] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "mortal_strike",
    ["rank"] = 5
  },
  [30330] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "mortal_strike",
    ["rank"] = 6
  },
  [12323] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "piercing_howl",
    ["rank"] = 0
  },
  [29801] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "rampage",
    ["rank"] = 1
  },
  [30030] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "rampage",
    ["rank"] = 2
  },
  [30033] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "rampage",
    ["rank"] = 3
  },
  [29834] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "second_wind",
    ["rank"] = 1
  },
  [29838] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "second_wind",
    ["rank"] = 2
  },
  [23922] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_slam",
    ["rank"] = 1
  },
  [23923] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_slam",
    ["rank"] = 2
  },
  [23924] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_slam",
    ["rank"] = 3
  },
  [23925] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_slam",
    ["rank"] = 4
  },
  [25258] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_slam",
    ["rank"] = 5
  },
  [30356] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "shield_slam",
    ["rank"] = 6
  },
  [12328] = {
    ["category"] = categories.WARRIOR.id,
    ["name"] = "sweeping_strikes",
    ["rank"] = 0
  },
  --[[
    RACIALS
  ]]--
  [28880] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "gift_of_the_naaru",
    ["rank"] = 0
  },
  [20594] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "stoneform",
    ["rank"] = 0
  },
  [20589] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "escape_artist",
    ["rank"] = 0
  },
  [20600] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "perception",
    ["rank"] = 0
  },
  [20580] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "shadowmeld",
    ["rank"] = 0
  },
  [28730] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "arcane_torrent",
    ["rank"] = 1 -- fake rank
  },
  [25046] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "arcane_torrent",
    ["rank"] = 2 -- fake rank
  },
  [28734] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "mana_tap",
    ["rank"] = 0
  },
  [20572] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "blood_fury",
    ["rank"] = 1 -- fake rank
  },
  [33697] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "blood_fury",
    ["rank"] = 2 -- fake rank
  },
  [33702] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "blood_fury",
    ["rank"] = 3 -- fake rank
  },
  [20549] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "war_stomp",
    ["rank"] = 0
  },
  [20554] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "berserking",
    ["rank"] = 1 -- fake rank
  },
  [26297] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "berserking",
    ["rank"] = 2 -- fake rank
  },
  [26296] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "berserking",
    ["rank"] = 3 -- fake rank
  },
  [20577] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "cannibalize",
    ["rank"] = 0
  },
  [7744] = {
    ["category"] = categories.RACIALS.id,
    ["name"] = "will_of_the_forsaken",
    ["rank"] = 0
  },
  --[[
    ITEMS Trinkets
  ]]--
  [33807] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "abacus_of_violent_odds",
    ["rank"] = 0
  },
  [33479] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "adamantine_figurine",
    ["rank"] = 0
  },
  [44055] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "battlemaster",
    ["rank"] = 0
  },
  [43713] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "ancient_aqir_artifact",
    ["rank"] = 0
  },
  [43716] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "berserkers_call",
    ["rank"] = 0
  },
  [35166] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "bloodlust_brooch",
    ["rank"] = 0
  },
  [51953] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "dark_iron_smoking_pipe",
    ["rank"] = 0
  },
  [36890] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "dimensional_ripper_area_52",
    ["rank"] = 0
  },
  [23442] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "dimensional_ripper_everlook",
    ["rank"] = 0
  },
  [51954] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "direbrew_hops",
    ["rank"] = 0
  },
  [34775] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "dragonspine_trophy",
    ["rank"] = 0
  },
  [51955] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "empty_mug_of_direbrew",
    ["rank"] = 0
  },
  [35165] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "essence_of_the_martyr",
    ["rank"] = 0
  },
  [46783] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "figurine_crimson_serpent",
    ["rank"] = 0
  },
  [46780] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "figurine_empyrean_tortoise",
    ["rank"] = 0
  },
  [31038] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "figurine_felsteel_boar",
    ["rank"] = 0
  },
  [46782] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "figurine_khorium_boar",
    ["rank"] = 0
  },
  [31040] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "figurine_living_ruby_serpent",
    ["rank"] = 0
  },
  [31047] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "figurine_nightseye_panther",
    ["rank"] = 0
  },
  [46784] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "figurine_shadowsong_panther",
    ["rank"] = 0
  },
  [30507] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "gnomish_poultryizer",
    ["rank"] = 0
  },
  [46567] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "goblin_rocket_launcher",
    ["rank"] = 0
  },
  [43712] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "hex_shrunken_head",
    ["rank"] = 0
  },
  [35163] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "icon_of_the_silver_crescent",
    ["rank"] = 0
  },
  [42292] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "insignia_pvp_trinket",
    ["rank"] = 0
  },
  [23723] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "mind_quickening_gem",
    ["rank"] = 0
  },
  [28528] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "moroes_lucky_pocket_watch",
    ["rank"] = 0
  },
  [38332] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "ribbon_of_sacrifice",
    ["rank"] = 0
  },
  [40464] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "shadowmoon_insignia",
    ["rank"] = 0
  },
  [45053] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "shard_of_contempt",
    ["rank"] = 0
  },
  [38325] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "spyglass_of_the_hidden_fleet",
    ["rank"] = 0
  },
  [34428] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "steely_naaru_sliver",
    ["rank"] = 0
  },
  [33828] = { -- alliance
    ["category"] = categories.ITEMS.id,
    ["name"] = "talisman_trinket",
    ["rank"] = 0
  },
  [32140] = { -- horde
    ["category"] = categories.ITEMS.id,
    ["name"] = "talisman_trinket",
    ["rank"] = 0
  },
  [40396] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "the_skull_of_guldan",
    ["rank"] = 0
  },
  [43995] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "tiny_voodoo_mask",
    ["rank"] = 0
  },
  [43710] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "tome_of_diabolic_remedy",
    ["rank"] = 0
  },
  [42084] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "tsunami_talisman",
    ["rank"] = 0
  },
  [23453] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "ultrasafe_transporter_gadgetzan",
    ["rank"] = 0
  },
  [36941] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "ultrasafe_transporter_toshleys_station",
    ["rank"] = 0
  },
  [45064] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "vial_of_the_sunwell",
    ["rank"] = 0
  },
  --[[
    ITEMS Misc
  ]]--
  [30249] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "hyper_vision_goggles",
    ["rank"] = 0
  },
  [30458] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "nigh_invulnerability_belt",
    ["rank"] = 0
  },
  [30457] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "nigh_invulnerability_belt_backfire",
    ["rank"] = 0
  },
  [51582] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "rocket_boots_xtreme",
    ["rank"] = 0
  },
  [5024] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "skull_of_impending_doom",
    ["rank"] = 0
  },
  [9774] = {
    ["category"] = categories.ITEMS.id,
    ["name"] = "immune_root",
    ["rank"] = 0
  },
  --[[
    MISC potions
  ]]--
  [12608] = {
    ["category"] = categories.MISC.id,
    ["name"] = "catseye_elixir",
    ["rank"] = 0
  },
  [28508] = {
    ["category"] = categories.MISC.id,
    ["name"] = "destruction_potion",
    ["rank"] = 0
  },
  [6615] = {
    ["category"] = categories.MISC.id,
    ["name"] = "free_action_potion",
    ["rank"] = 0
  },
  [28507] = {
    ["category"] = categories.MISC.id,
    ["name"] = "haste_potion",
    ["rank"] = 0
  },
  [28506] = {
    ["category"] = categories.MISC.id,
    ["name"] = "heroic_potion",
    ["rank"] = 0
  },
  [28494] = {
    ["category"] = categories.MISC.id,
    ["name"] = "insane_strength_potion",
    ["rank"] = 0
  },
  [11392] = {
    ["category"] = categories.MISC.id,
    ["name"] = "invisibility_potion",
    ["rank"] = 0
  },
  [28515] = {
    ["category"] = categories.MISC.id,
    ["name"] = "ironshield_potion",
    ["rank"] = 0
  },
  [3680] = {
    ["category"] = categories.MISC.id,
    ["name"] = "lesser_invisibility_potion",
    ["rank"] = 0
  },
  [24364] = {
    ["category"] = categories.MISC.id,
    ["name"] = "living_action_potion",
    ["rank"] = 0
  },
  [28536] = {
    ["category"] = categories.MISC.id,
    ["name"] = "major_arcane_protection_potion",
    ["rank"] = 0
  },
  [28511] = {
    ["category"] = categories.MISC.id,
    ["name"] = "major_fire_protection_potion",
    ["rank"] = 0
  },
  [28512] = {
    ["category"] = categories.MISC.id,
    ["name"] = "major_frost_protection_potion",
    ["rank"] = 0
  },
  [28538] = {
    ["category"] = categories.MISC.id,
    ["name"] = "major_holy_protection_potion",
    ["rank"] = 0
  },
  [28513] = {
    ["category"] = categories.MISC.id,
    ["name"] = "major_nature_protection_potion",
    ["rank"] = 0
  },
  [28537] = {
    ["category"] = categories.MISC.id,
    ["name"] = "major_shadow_protection_potion",
    ["rank"] = 0
  },
  [17528] = {
    ["category"] = categories.MISC.id,
    ["name"] = "mighty_rage_potion",
    ["rank"] = 0
  },
  [6612] = {
    ["category"] = categories.MISC.id,
    ["name"] = "rage_potion",
    ["rank"] = 0
  },
  [11359] = {
    ["category"] = categories.MISC.id,
    ["name"] = "restorative_potion",
    ["rank"] = 0
  },
  [28492] = {
    ["category"] = categories.MISC.id,
    ["name"] = "sneaking_potion",
    ["rank"] = 0
  },
  [28495] = {
    ["category"] = categories.MISC.id,
    ["name"] = "super_healing_potion",
    ["rank"] = 0
  },
  [28555] = {
    ["category"] = categories.MISC.id,
    ["name"] = "super_mana_potion",
    ["rank"] = 0
  },
  [28517] = {
    ["category"] = categories.MISC.id,
    ["name"] = "super_rejuvenation_potion",
    ["rank"] = 0
  },
  --[[
    MISC engineering
  ]]--
  [30217] = {
    ["category"] = categories.MISC.id,
    ["name"] = "adamantite_grenade",
    ["rank"] = 0
  },
  [30216] = {
    ["category"] = categories.MISC.id,
    ["name"] = "fel_iron_bomb",
    ["rank"] = 0
  },
  [39965] = {
    ["category"] = categories.MISC.id,
    ["name"] = "frost_grenade",
    ["rank"] = 0
  },
  [30486] = {
    ["category"] = categories.MISC.id,
    ["name"] = "super_sapper_charge",
    ["rank"] = 0
  },
  --[[
    MISC gathering
  ]]--
  [28527] = {
    ["category"] = categories.MISC.id,
    ["name"] = "fel_blossom",
    ["rank"] = 0
  },
  [28726] = {
    ["category"] = categories.MISC.id,
    ["name"] = "nightmare_seed",
    ["rank"] = 0
  },
  --[[
    MISC misc
  ]]--
  [9512] = {
    ["category"] = categories.MISC.id,
    ["name"] = "thistle_tea",
    ["rank"] = 0
  },
  [746] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 1 -- linen-bandage
  },
  [1159] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 2 -- heavy-linen-bandage
  },
  [3267] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 3 -- wool-bandage
  },
  [3268] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 4 -- heavy-wool-bandage
  },
  [7926] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 5 -- silk-bandage
  },
  [7927] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 6 -- heavy-silk-bandage
  },
  [24412] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 7 -- arathi-basin-silk-bandage / defilers-silk-bandage / highlanders-silk-bandage
  },
  [23569] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 8 -- warsong-gulch-silk-bandage
  },
  [10838] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 9 -- mageweave-bandage
  },
  [10839] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 10 -- heavy-mageweave-bandage
  },
  [24413] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 11 -- arathi-basin-mageweave-bandage / defilers-mageweave-bandage / highlanders-mageweave-bandage
  },
  [23568] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 12 -- warsong-gulch-mageweave-bandage
  },
  [18608] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 13 -- runecloth-bandage
  },
  [18610] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 14 -- heavy-runecloth-bandage
  },
  [24414] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 15 -- arathi-basin-runecloth-bandage / defilers-runecloth-bandage / highlanders-runecloth-bandage
  },
  [23696] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 16 -- alterac-heavy-runecloth-bandage
  },
  [23567] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 17 -- warsong-gulch-runecloth-bandage
  },
  [27030] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 18 -- netherweave-bandage
  },
  [27031] = {
    ["category"] = categories.MISC.id,
    ["name"] = "first_aid",
    ["rank"] = 19 -- heavy-netherweave-bandage
  },
  --[[
    MISC tailoring
  ]]--
  [31367] = {
    ["category"] = categories.MISC.id,
    ["name"] = "netherweave_net",
    ["rank"] = 0
  }
}

--[[
  Get a full clone of the spellMap. Used for testing purposes

  @return {table}
]]--
function me.GetSpellMap()
  return mod.common.Clone(spellMap)
end

--[[
  Search a spell in the spellMap by its id. The retrieved data can then be used to retrieve
  the full metadata of a spell from the SpellMetaMap

  @param {number} spellId

  @return {nil | table}
    nil - if no spell could be found or no valid spellId was provided
    table - info about the spell that was found
]]--
function me.SearchSpellById(spellId)
  if not spellId or type(spellId) ~= "number" then return nil end

  mod.logger.LogDebug(me.tag, "Searching for spell with id {" .. spellId .. "}")

  if spellMap[spellId] ~= nil then
    mod.logger.LogInfo(me.tag, "Found spell with id {" .. spellId .. "}")
    return spellMap[spellId]
  end

  mod.logger.LogDebug(me.tag, "Spell with id {" .. spellId .. "} not found")
  return nil
end

--[[
  Collect all spells for a certain category

  @param {number} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES

  @return {table | nil}
    table - a table filled with all found spells for the passed category
    nil - if no category was provided or no spells could be found
]]--
function me.SearchByCategory(category)
  if not category then return nil end

  local spells = {}

  for spellId, searchedSpell in pairs(spellMap) do
    if category == searchedSpell.category then
      local spell = {}
      spell.id = spellId
      spell.name = searchedSpell.name
      spell.rank = searchedSpell.rank

      table.insert(spells, spell)
    end
  end

  return spells
end
