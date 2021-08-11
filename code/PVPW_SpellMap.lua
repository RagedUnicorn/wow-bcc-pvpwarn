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

local categories = RGPVPW_CONSTANTS.CATEGORIES_NEW

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
  [8998] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cower",
    ["rank"] = 1
  },
  [9000] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cower",
    ["rank"] = 2
  },
  [9892] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cower",
    ["rank"] = 3
  },
  [31709] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cower",
    ["rank"] = 4
  },
  [27004] = {
    ["category"] = categories.DRUID.id,
    ["name"] = "cower",
    ["rank"] = 5
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
  }
  --[[

  ]]--
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
