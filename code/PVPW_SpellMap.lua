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
    Priest ABILITIES
  ]]--
  [552] = {
    categories.PRIEST.id,
    "abolish_disease",
    0
  },
  [32546] = {
    categories.PRIEST.id,
    "binding_heal",
    1
  },
  [44041] = {
    categories.PRIEST.id,
    "chastise",
    1
  },
  [44043] = {
    categories.PRIEST.id,
    "chastise",
    2
  },
  [44044] = {
    categories.PRIEST.id,
    "chastise",
    3
  },
  [44045] = {
    categories.PRIEST.id,
    "chastise",
    4
  },
  [44046] = {
    categories.PRIEST.id,
    "chastise",
    5
  },
  [44047] = {
    categories.PRIEST.id,
    "chastise",
    6
  },
  [32676] = {
    categories.PRIEST.id,
    "consume_magic",
    0
  },
  [528] = {
    categories.PRIEST.id,
    "cure_disease",
    0
  },
  [13908] = {
    categories.PRIEST.id,
    "desperate_prayer",
    1
  },
  [19236] = {
    categories.PRIEST.id,
    "desperate_prayer",
    2
  },
  [19238] = {
    categories.PRIEST.id,
    "desperate_prayer",
    3
  },
  [19240] = {
    categories.PRIEST.id,
    "desperate_prayer",
    4
  },
  [19241] = {
    categories.PRIEST.id,
    "desperate_prayer",
    5
  },
  [19242] = {
    categories.PRIEST.id,
    "desperate_prayer",
    6
  },
  [19243] = {
    categories.PRIEST.id,
    "desperate_prayer",
    7
  },
  [25437] = {
    categories.PRIEST.id,
    "desperate_prayer",
    8
  },
  [2944] = {
    categories.PRIEST.id,
    "devouring_plague",
    1
  },
  [19276] = {
    categories.PRIEST.id,
    "devouring_plague",
    2
  },
  [19277] = {
    categories.PRIEST.id,
    "devouring_plague",
    3
  },
  [19278] = {
    categories.PRIEST.id,
    "devouring_plague",
    4
  },
  [19279] = {
    categories.PRIEST.id,
    "devouring_plague",
    5
  },
  [19280] = {
    categories.PRIEST.id,
    "devouring_plague",
    6
  },
  [25467] = {
    categories.PRIEST.id,
    "devouring_plague",
    7
  },
  [527] = {
    categories.PRIEST.id,
    "dispel_magic",
    1
  },
  [988] = {
    categories.PRIEST.id,
    "dispel_magic",
    2
  },
  [2651] = {
    categories.PRIEST.id,
    "elunes_grace",
    0
  },
  [6346] = {
    categories.PRIEST.id,
    "fear_ward",
    0
  },
  [13896] = {
    categories.PRIEST.id,
    "feedback",
    1
  },
  [19271] = {
    categories.PRIEST.id,
    "feedback",
    2
  },
  [19273] = {
    categories.PRIEST.id,
    "feedback",
    3
  },
  [19274] = {
    categories.PRIEST.id,
    "feedback",
    4
  },
  [19275] = {
    categories.PRIEST.id,
    "feedback",
    5
  },
  [25441] = {
    categories.PRIEST.id,
    "feedback",
    6
  },
  [2061] = {
    categories.PRIEST.id,
    "flash_heal",
    1
  },
  [9472] = {
    categories.PRIEST.id,
    "flash_heal",
    2
  },
  [9473] = {
    categories.PRIEST.id,
    "flash_heal",
    3
  },
  [9474] = {
    categories.PRIEST.id,
    "flash_heal",
    4
  },
  [10915] = {
    categories.PRIEST.id,
    "flash_heal",
    5
  },
  [10916] = {
    categories.PRIEST.id,
    "flash_heal",
    6
  },
  [10917] = {
    categories.PRIEST.id,
    "flash_heal",
    7
  },
  [25233] = {
    categories.PRIEST.id,
    "flash_heal",
    8
  },
  [25235] = {
    categories.PRIEST.id,
    "flash_heal",
    9
  },
  [2060] = {
    categories.PRIEST.id,
    "greater_heal",
    1
  },
  [10963] = {
    categories.PRIEST.id,
    "greater_heal",
    2
  },
  [10964] = {
    categories.PRIEST.id,
    "greater_heal",
    3
  },
  [10965] = {
    categories.PRIEST.id,
    "greater_heal",
    4
  },
  [25314] = {
    categories.PRIEST.id,
    "greater_heal",
    5
  },
  [25210] = {
    categories.PRIEST.id,
    "greater_heal",
    6
  },
  [25213] = {
    categories.PRIEST.id,
    "greater_heal",
    7
  },
  [2054] = {
    categories.PRIEST.id,
    "heal",
    1
  },
  [2055] = {
    categories.PRIEST.id,
    "heal",
    2
  },
  [6063] = {
    categories.PRIEST.id,
    "heal",
    3
  },
  [6064] = {
    categories.PRIEST.id,
    "heal",
    4
  },
  [9035] = {
    categories.PRIEST.id,
    "hex_of_weakness",
    1
  },
  [19281] = {
    categories.PRIEST.id,
    "hex_of_weakness",
    2
  },
  [19282] = {
    categories.PRIEST.id,
    "hex_of_weakness",
    3
  },
  [19283] = {
    categories.PRIEST.id,
    "hex_of_weakness",
    4
  },
  [19284] = {
    categories.PRIEST.id,
    "hex_of_weakness",
    5
  },
  [19285] = {
    categories.PRIEST.id,
    "hex_of_weakness",
    6
  },
  [25470] = {
    categories.PRIEST.id,
    "hex_of_weakness",
    7
  },
  [14914] = {
    categories.PRIEST.id,
    "holy_fire",
    1
  },
  [15262] = {
    categories.PRIEST.id,
    "holy_fire",
    2
  },
  [15263] = {
    categories.PRIEST.id,
    "holy_fire",
    3
  },
  [15264] = {
    categories.PRIEST.id,
    "holy_fire",
    4
  },
  [15265] = {
    categories.PRIEST.id,
    "holy_fire",
    5
  },
  [15266] = {
    categories.PRIEST.id,
    "holy_fire",
    6
  },
  [15267] = {
    categories.PRIEST.id,
    "holy_fire",
    7
  },
  [15261] = {
    categories.PRIEST.id,
    "holy_fire",
    8
  },
  [25384] = {
    categories.PRIEST.id,
    "holy_fire",
    9
  },
  [588] = {
    categories.PRIEST.id,
    "inner_fire",
    1
  },
  [7128] = {
    categories.PRIEST.id,
    "inner_fire",
    2
  },
  [602] = {
    categories.PRIEST.id,
    "inner_fire",
    3
  },
  [1006] = {
    categories.PRIEST.id,
    "inner_fire",
    4
  },
  [10951] = {
    categories.PRIEST.id,
    "inner_fire",
    5
  },
  [10952] = {
    categories.PRIEST.id,
    "inner_fire",
    6
  },
  [25431] = {
    categories.PRIEST.id,
    "inner_fire",
    7
  },
  [2050] = {
    categories.PRIEST.id,
    "lesser_heal",
    1
  },
  [2052] = {
    categories.PRIEST.id,
    "lesser_heal",
    2
  },
  [2053] = {
    categories.PRIEST.id,
    "lesser_heal",
    3
  },
  [1706] = {
    categories.PRIEST.id,
    "levitate",
    0
  },
  [8129] = {
    categories.PRIEST.id,
    "mana_burn",
    1
  },
  [8131] = {
    categories.PRIEST.id,
    "mana_burn",
    2
  },
  [10874] = {
    categories.PRIEST.id,
    "mana_burn",
    3
  },
  [10875] = {
    categories.PRIEST.id,
    "mana_burn",
    4
  },
  [10876] = {
    categories.PRIEST.id,
    "mana_burn",
    5
  },
  [25379] = {
    categories.PRIEST.id,
    "mana_burn",
    6
  },
  [25380] = {
    categories.PRIEST.id,
    "mana_burn",
    7
  },
  [32375] = {
    categories.PRIEST.id,
    "mass_dispel",
    0
  },
  [8092] = {
    categories.PRIEST.id,
    "mind_blast",
    1
  },
  [8102] = {
    categories.PRIEST.id,
    "mind_blast",
    2
  },
  [8103] = {
    categories.PRIEST.id,
    "mind_blast",
    3
  },
  [8104] = {
    categories.PRIEST.id,
    "mind_blast",
    4
  },
  [8105] = {
    categories.PRIEST.id,
    "mind_blast",
    5
  },
  [8106] = {
    categories.PRIEST.id,
    "mind_blast",
    6
  },
  [10945] = {
    categories.PRIEST.id,
    "mind_blast",
    7
  },
  [10946] = {
    categories.PRIEST.id,
    "mind_blast",
    8
  },
  [10947] = {
    categories.PRIEST.id,
    "mind_blast",
    9
  },
  [25372] = {
    categories.PRIEST.id,
    "mind_blast",
    10
  },
  [25375] = {
    categories.PRIEST.id,
    "mind_blast",
    11
  },
  [605] = {
    categories.PRIEST.id,
    "mind_control",
    1
  },
  [10911] = {
    categories.PRIEST.id,
    "mind_control",
    2
  },
  [10912] = {
    categories.PRIEST.id,
    "mind_control",
    3
  },
  [2096] = {
    categories.PRIEST.id,
    "mind_vision",
    1
  },
  [10909] = {
    categories.PRIEST.id,
    "mind_vision",
    2
  },
  [1243] = {
    categories.PRIEST.id,
    "power_word_fortitude",
    1
  },
  [1244] = {
    categories.PRIEST.id,
    "power_word_fortitude",
    2
  },
  [1245] = {
    categories.PRIEST.id,
    "power_word_fortitude",
    3
  },
  [2791] = {
    categories.PRIEST.id,
    "power_word_fortitude",
    4
  },
  [10937] = {
    categories.PRIEST.id,
    "power_word_fortitude",
    5
  },
  [10938] = {
    categories.PRIEST.id,
    "power_word_fortitude",
    6
  },
  [25389] = {
    categories.PRIEST.id,
    "power_word_fortitude",
    7
  },
  [17] = {
    categories.PRIEST.id,
    "power_word_shield",
    1
  },
  [592] = {
    categories.PRIEST.id,
    "power_word_shield",
    2
  },
  [600] = {
    categories.PRIEST.id,
    "power_word_shield",
    3
  },
  [3747] = {
    categories.PRIEST.id,
    "power_word_shield",
    4
  },
  [6065] = {
    categories.PRIEST.id,
    "power_word_shield",
    5
  },
  [6066] = {
    categories.PRIEST.id,
    "power_word_shield",
    6
  },
  [10898] = {
    categories.PRIEST.id,
    "power_word_shield",
    7
  },
  [10899] = {
    categories.PRIEST.id,
    "power_word_shield",
    8
  },
  [10900] = {
    categories.PRIEST.id,
    "power_word_shield",
    9
  },
  [10901] = {
    categories.PRIEST.id,
    "power_word_shield",
    10
  },
  [25217] = {
    categories.PRIEST.id,
    "power_word_shield",
    11
  },
  [25218] = {
    categories.PRIEST.id,
    "power_word_shield",
    12
  },
  [21562] = {
    categories.PRIEST.id,
    "prayer_of_fortitude",
    1
  },
  [21564] = {
    categories.PRIEST.id,
    "prayer_of_fortitude",
    2
  },
  [25392] = {
    categories.PRIEST.id,
    "prayer_of_fortitude",
    3
  },
  [596] = {
    categories.PRIEST.id,
    "prayer_of_healing",
    1
  },
  [996] = {
    categories.PRIEST.id,
    "prayer_of_healing",
    2
  },
  [10960] = {
    categories.PRIEST.id,
    "prayer_of_healing",
    3
  },
  [10961] = {
    categories.PRIEST.id,
    "prayer_of_healing",
    4
  },
  [25316] = {
    categories.PRIEST.id,
    "prayer_of_healing",
    5
  },
  [25308] = {
    categories.PRIEST.id,
    "prayer_of_healing",
    6
  },
  [33076] = {
    categories.PRIEST.id,
    "prayer_of_mending",
    1
  },
  [27683] = {
    categories.PRIEST.id,
    "prayer_of_shadow_protection",
    1
  },
  [39374] = {
    categories.PRIEST.id,
    "prayer_of_shadow_protection",
    2
  },
  [27681] = {
    categories.PRIEST.id,
    "prayer_of_spirit",
    1
  },
  [32999] = {
    categories.PRIEST.id,
    "prayer_of_spirit",
    2
  },
  [8122] = {
    categories.PRIEST.id,
    "psychic_scream",
    1
  },
  [8124] = {
    categories.PRIEST.id,
    "psychic_scream",
    2
  },
  [10888] = {
    categories.PRIEST.id,
    "psychic_scream",
    3
  },
  [10890] = {
    categories.PRIEST.id,
    "psychic_scream",
    4
  },
  [139] = {
    categories.PRIEST.id,
    "renew",
    1
  },
  [6074] = {
    categories.PRIEST.id,
    "renew",
    2
  },
  [6075] = {
    categories.PRIEST.id,
    "renew",
    3
  },
  [6076] = {
    categories.PRIEST.id,
    "renew",
    4
  },
  [6077] = {
    categories.PRIEST.id,
    "renew",
    5
  },
  [6078] = {
    categories.PRIEST.id,
    "renew",
    6
  },
  [10927] = {
    categories.PRIEST.id,
    "renew",
    7
  },
  [10928] = {
    categories.PRIEST.id,
    "renew",
    8
  },
  [10929] = {
    categories.PRIEST.id,
    "renew",
    9
  },
  [25315] = {
    categories.PRIEST.id,
    "renew",
    10
  },
  [25221] = {
    categories.PRIEST.id,
    "renew",
    11
  },
  [25222] = {
    categories.PRIEST.id,
    "renew",
    12
  },
  [2006] = {
    categories.PRIEST.id,
    "resurrection",
    1
  },
  [2010] = {
    categories.PRIEST.id,
    "resurrection",
    2
  },
  [10880] = {
    categories.PRIEST.id,
    "resurrection",
    3
  },
  [10881] = {
    categories.PRIEST.id,
    "resurrection",
    4
  },
  [20770] = {
    categories.PRIEST.id,
    "resurrection",
    5
  },
  [25435] = {
    categories.PRIEST.id,
    "resurrection",
    6
  },
  [976] = {
    categories.PRIEST.id,
    "shadow_protection",
    1
  },
  [10957] = {
    categories.PRIEST.id,
    "shadow_protection",
    2
  },
  [10958] = {
    categories.PRIEST.id,
    "shadow_protection",
    3
  },
  [25433] = {
    categories.PRIEST.id,
    "shadow_protection",
    4
  },
  [32379] = {
    categories.PRIEST.id,
    "shadow_word_death",
    1
  },
  [32996] = {
    categories.PRIEST.id,
    "shadow_word_death",
    2
  },
  [589] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    1
  },
  [594] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    2
  },
  [970] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    3
  },
  [992] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    4
  },
  [2767] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    5
  },
  [10892] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    6
  },
  [10893] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    7
  },
  [10894] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    8
  },
  [25367] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    9
  },
  [25368] = {
    categories.PRIEST.id,
    "shadow_word_pain",
    10
  },
  [34433] = {
    categories.PRIEST.id,
    "shadowfiend",
    1
  },
  [18137] = {
    categories.PRIEST.id,
    "shadowguard",
    1
  },
  [19308] = {
    categories.PRIEST.id,
    "shadowguard",
    2
  },
  [19309] = {
    categories.PRIEST.id,
    "shadowguard",
    3
  },
  [19310] = {
    categories.PRIEST.id,
    "shadowguard",
    4
  },
  [19311] = {
    categories.PRIEST.id,
    "shadowguard",
    5
  },
  [19312] = {
    categories.PRIEST.id,
    "shadowguard",
    6
  },
  [25477] = {
    categories.PRIEST.id,
    "shadowguard",
    7
  },
  [585] = {
    categories.PRIEST.id,
    "smite",
    1
  },
  [591] = {
    categories.PRIEST.id,
    "smite",
    2
  },
  [598] = {
    categories.PRIEST.id,
    "smite",
    3
  },
  [984] = {
    categories.PRIEST.id,
    "smite",
    4
  },
  [1004] = {
    categories.PRIEST.id,
    "smite",
    5
  },
  [6060] = {
    categories.PRIEST.id,
    "smite",
    6
  },
  [10933] = {
    categories.PRIEST.id,
    "smite",
    7
  },
  [10934] = {
    categories.PRIEST.id,
    "smite",
    8
  },
  [25363] = {
    categories.PRIEST.id,
    "smite",
    9
  },
  [25364] = {
    categories.PRIEST.id,
    "smite",
    10
  },
  [10797] = {
    categories.PRIEST.id,
    "starshards",
    1
  },
  [19296] = {
    categories.PRIEST.id,
    "starshards",
    2
  },
  [19299] = {
    categories.PRIEST.id,
    "starshards",
    3
  },
  [19302] = {
    categories.PRIEST.id,
    "starshards",
    4
  },
  [19303] = {
    categories.PRIEST.id,
    "starshards",
    5
  },
  [19304] = {
    categories.PRIEST.id,
    "starshards",
    6
  },
  [19305] = {
    categories.PRIEST.id,
    "starshards",
    7
  },
  [25446] = {
    categories.PRIEST.id,
    "starshards",
    8
  },
  [32548] = {
    categories.PRIEST.id,
    "symbol_of_hope",
    0
  },
  [2652] = {
    categories.PRIEST.id,
    "touch_of_weakness",
    1
  },
  [19261] = {
    categories.PRIEST.id,
    "touch_of_weakness",
    2
  },
  [19262] = {
    categories.PRIEST.id,
    "touch_of_weakness",
    3
  },
  [19264] = {
    categories.PRIEST.id,
    "touch_of_weakness",
    4
  },
  [19265] = {
    categories.PRIEST.id,
    "touch_of_weakness",
    5
  },
  [19266] = {
    categories.PRIEST.id,
    "touch_of_weakness",
    6
  },
  [25461] = {
    categories.PRIEST.id,
    "touch_of_weakness",
    7
  },
  --[[
    Priest TALENTS
  ]]--
  [15268] = {
    categories.PRIEST.id,
    "blackout",
    1
  },
  [15323] = {
    categories.PRIEST.id,
    "blackout",
    2
  },
  [15324] = {
    categories.PRIEST.id,
    "blackout",
    3
  },
  [15325] = {
    categories.PRIEST.id,
    "blackout",
    4
  },
  [15326] = {
    categories.PRIEST.id,
    "blackout",
    5
  },
  [34861] = {
    categories.PRIEST.id,
    "circle_of_healing",
    1
  },
  [34863] = {
    categories.PRIEST.id,
    "circle_of_healing",
    2
  },
  [34864] = {
    categories.PRIEST.id,
    "circle_of_healing",
    3
  },
  [34865] = {
    categories.PRIEST.id,
    "circle_of_healing",
    4
  },
  [34866] = {
    categories.PRIEST.id,
    "circle_of_healing",
    5
  },
  [14752] = {
    categories.PRIEST.id,
    "divine_spirit",
    1
  },
  [14818] = {
    categories.PRIEST.id,
    "divine_spirit",
    2
  },
  [14819] = {
    categories.PRIEST.id,
    "divine_spirit",
    3
  },
  [27841] = {
    categories.PRIEST.id,
    "divine_spirit",
    4
  },
  [25312] = {
    categories.PRIEST.id,
    "divine_spirit",
    5
  },
  [15237] = {
    categories.PRIEST.id,
    "holy_nova",
    1
  },
  [15430] = {
    categories.PRIEST.id,
    "holy_nova",
    2
  },
  [15431] = {
    categories.PRIEST.id,
    "holy_nova",
    3
  },
  [27799] = {
    categories.PRIEST.id,
    "holy_nova",
    4
  },
  [27800] = {
    categories.PRIEST.id,
    "holy_nova",
    5
  },
  [27801] = {
    categories.PRIEST.id,
    "holy_nova",
    6
  },
  [25331] = {
    categories.PRIEST.id,
    "holy_nova",
    7
  },
  [14751] = {
    categories.PRIEST.id,
    "inner_focus",
    0
  },
  [15407] = {
    categories.PRIEST.id,
    "mind_flay",
    1
  },
  [17311] = {
    categories.PRIEST.id,
    "mind_flay",
    2
  },
  [17312] = {
    categories.PRIEST.id,
    "mind_flay",
    3
  },
  [17313] = {
    categories.PRIEST.id,
    "mind_flay",
    4
  },
  [17314] = {
    categories.PRIEST.id,
    "mind_flay",
    5
  },
  [18807] = {
    categories.PRIEST.id,
    "mind_flay",
    6
  },
  [25387] = {
    categories.PRIEST.id,
    "mind_flay",
    7
  },
  [33206] = {
    categories.PRIEST.id,
    "pain_suppression",
    0
  },
  [10060] = {
    categories.PRIEST.id,
    "power_infusion",
    0
  },
  [15473] = {
    categories.PRIEST.id,
    "shadowform",
    0
  },
  [15487] = {
    categories.PRIEST.id,
    "silence",
    0
  },
  [15286] = {
    categories.PRIEST.id,
    "vampiric_embrace",
    0
  },
  [34914] = {
    categories.PRIEST.id,
    "vampiric_touch",
    1
  },
  [34916] = {
    categories.PRIEST.id,
    "vampiric_touch",
    2
  },
  [34917] = {
    categories.PRIEST.id,
    "vampiric_touch",
    3
  },
  --[[
    WARRIOR ABILITIES
  ]]--
  [2457] = {
    categories.WARRIOR.id,
    "battle_stance",
    0
  },
  [18499] = {
    categories.WARRIOR.id,
    "berserker_rage",
    0
  },
  [2458] = {
    categories.WARRIOR.id,
    "berserker_stance",
    0
  },
  [2687] = {
    categories.WARRIOR.id,
    "bloodrage",
    0
  },
  [100] = {
    categories.WARRIOR.id,
    "charge",
    1
  },
  [6178] = {
    categories.WARRIOR.id,
    "charge",
    2
  },
  [11578] = {
    categories.WARRIOR.id,
    "charge",
    3
  },
  [71] = {
    categories.WARRIOR.id,
    "defensive_stance",
    0
  },
  [1160] = {
    categories.WARRIOR.id,
    "demoralizing_shout",
    1
  },
  [6190] = {
    categories.WARRIOR.id,
    "demoralizing_shout",
    2
  },
  [11554] = {
    categories.WARRIOR.id,
    "demoralizing_shout",
    3
  },
  [11555] = {
    categories.WARRIOR.id,
    "demoralizing_shout",
    4
  },
  [11556] = {
    categories.WARRIOR.id,
    "demoralizing_shout",
    5
  },
  [25202] = {
    categories.WARRIOR.id,
    "demoralizing_shout",
    6
  },
  [25203] = {
    categories.WARRIOR.id,
    "demoralizing_shout",
    7
  },
  [676] = {
    categories.WARRIOR.id,
    "disarm",
    0
  },
  [1715] = {
    categories.WARRIOR.id,
    "hamstring",
    1
  },
  [7372] = {
    categories.WARRIOR.id,
    "hamstring",
    2
  },
  [7373] = {
    categories.WARRIOR.id,
    "hamstring",
    3
  },
  [25212] = {
    categories.WARRIOR.id,
    "hamstring",
    4
  },
  [20252] = {
    categories.WARRIOR.id,
    "intercept",
    1
  },
  [20616] = {
    categories.WARRIOR.id,
    "intercept",
    2
  },
  [20617] = {
    categories.WARRIOR.id,
    "intercept",
    3
  },
  [25272] = {
    categories.WARRIOR.id,
    "intercept",
    4
  },
  [25275] = {
    categories.WARRIOR.id,
    "intercept",
    5
  },
  [3411] = {
    categories.WARRIOR.id,
    "intervene",
    0
  },
  [5246] = {
    categories.WARRIOR.id,
    "intimidating_shout",
    0
  },
  [7384] = {
    categories.WARRIOR.id,
    "overpower",
    1
  },
  [7887] = {
    categories.WARRIOR.id,
    "overpower",
    2
  },
  [11584] = {
    categories.WARRIOR.id,
    "overpower",
    3
  },
  [11585] = {
    categories.WARRIOR.id,
    "overpower",
    4
  },
  [6552] = {
    categories.WARRIOR.id,
    "pummel",
    1
  },
  [6554] = {
    categories.WARRIOR.id,
    "pummel",
    2
  },
  [1719] = {
    categories.WARRIOR.id,
    "recklessness",
    0
  },
  [20230] = {
    categories.WARRIOR.id,
    "retaliation",
    0
  },
  [72] = {
    categories.WARRIOR.id,
    "shield_bash",
    1
  },
  [1671] = {
    categories.WARRIOR.id,
    "shield_bash",
    2
  },
  [1672] = {
    categories.WARRIOR.id,
    "shield_bash",
    3
  },
  [29704] = {
    categories.WARRIOR.id,
    "shield_bash",
    4
  },
  [2565] = {
    categories.WARRIOR.id,
    "shield_block",
    0
  },
  [871] = {
    categories.WARRIOR.id,
    "shield_wall",
    0
  },
  [23920] = {
    categories.WARRIOR.id,
    "spell_reflection",
    0
  },
  [7386] = {
    categories.WARRIOR.id,
    "sunder_armor",
    1
  },
  [7405] = {
    categories.WARRIOR.id,
    "sunder_armor",
    2
  },
  [8380] = {
    categories.WARRIOR.id,
    "sunder_armor",
    3
  },
  [11596] = {
    categories.WARRIOR.id,
    "sunder_armor",
    4
  },
  [11597] = {
    categories.WARRIOR.id,
    "sunder_armor",
    5
  },
  [1680] = {
    categories.WARRIOR.id,
    "whirlwind",
    0
  },
  --[[
    WARRIOR TALENTS
  ]]--
  [12809] = {
    categories.WARRIOR.id,
    "concussion_blow",
    0
  },
  [12292] = {
    categories.WARRIOR.id,
    "death_wish",
    0
  },
  [12975] = {
    categories.WARRIOR.id,
    "last_stand",
    0
  },
  [12294] = {
    categories.WARRIOR.id,
    "mortal_strike",
    1
  },
  [21551] = {
    categories.WARRIOR.id,
    "mortal_strike",
    2
  },
  [21552] = {
    categories.WARRIOR.id,
    "mortal_strike",
    3
  },
  [21553] = {
    categories.WARRIOR.id,
    "mortal_strike",
    4
  },
  [25248] = {
    categories.WARRIOR.id,
    "mortal_strike",
    5
  },
  [30330] = {
    categories.WARRIOR.id,
    "mortal_strike",
    6
  },
  [12323] = {
    categories.WARRIOR.id,
    "piercing_howl",
    0
  },
  [29801] = {
    categories.WARRIOR.id,
    "rampage",
    1
  },
  [30030] = {
    categories.WARRIOR.id,
    "rampage",
    2
  },
  [30033] = {
    categories.WARRIOR.id,
    "rampage",
    3
  },
  [29834] = {
    categories.WARRIOR.id,
    "second_wind",
    1
  },
  [29838] = {
    categories.WARRIOR.id,
    "second_wind",
    2
  },
  [23922] = {
    categories.WARRIOR.id,
    "shield_slam",
    1
  },
  [23923] = {
    categories.WARRIOR.id,
    "shield_slam",
    2
  },
  [23924] = {
    categories.WARRIOR.id,
    "shield_slam",
    3
  },
  [23925] = {
    categories.WARRIOR.id,
    "shield_slam",
    4
  },
  [25258] = {
    categories.WARRIOR.id,
    "shield_slam",
    5
  },
  [30356] = {
    categories.WARRIOR.id,
    "shield_slam",
    6
  },
  [12328] = {
    categories.WARRIOR.id,
    "sweeping_strikes",
    0
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
    if category == searchedSpell[1] then
      local spell = {}
      spell.id = spellId
      spell.name = searchedSpell[2]
      spell.rank = searchedSpell[3]

      table.insert(spells, spell)
    end
  end

  return spells
end
