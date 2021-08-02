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
