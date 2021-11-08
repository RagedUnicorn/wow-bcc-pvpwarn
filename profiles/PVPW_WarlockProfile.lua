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
mod.warlockProfile = me

me.tag = "WarlockProfile"

--[[
  ["categoryId"] = {
    -- RGPVPW_CONSTANTS.CATEGORIES
    ["spellName"] = {
      -- e.g. lay_on_hands as found in SpellMap
      ["spellActive"] = false,
        -- default false
      ["soundWarningActive"] = false,
        -- default false
      ["visualWarningColor"] = [number] -- e.g. blue, orange see RGPVPW_CONSTANTS.TEXTURES
        -- default color in RGPVPW_CONSTANTS.DEFAULT_COLOR
    }
  }
]]--
local defaultSpellProfileWarlock = {
  [RGPVPW_CONSTANTS.CATEGORIES.DRUID.id] = {
    ["barkskin"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.orange.colorValue
    },
    ["bash"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.orange.colorValue
    },
    ["natures_swiftness"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.orange.colorValue
    },
    ["feral_charge"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.orange.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id] = {
    ["viper_sting"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.green.colorValue
    },
    ["silencing_shot"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.green.colorValue
    },
    ["the_beast_within"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.green.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.MAGE.id] = {
    ["ice_block"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
    ["arcane_power"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
    ["presence_of_mind"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
    ["counterspell"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
    ["evocation"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
    ["summon_water_elemental"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
    ["cold_snap"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
    ["icy_veins"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.PALADIN.id] = {
    ["avenging_wrath"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.pink.colorValue
    },
    ["divine_shield"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.pink.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.PRIEST.id] = {
    ["psychic_scream"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.white.colorValue
    },
    ["silence"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.white.colorValue
    },
    ["shadowfiend"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.white.colorValue
    },
    ["pain_suppression"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.white.colorValue
    },
    ["fear_ward"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.white.colorValue
    },
    ["power_infusion"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.white.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id] = {
    ["blind"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    },
    ["kick"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    },
    ["cloak_of_shadows"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    },
    ["kidney_shot"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    },
    ["stealth"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    },
    ["vanish"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    },
    ["preparation"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    },
    ["shadowstep"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.yellow.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.SHAMAN.id] = {
    ["elemental_mastery"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.blue.colorValue
    },
    ["natures_swiftness"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.blue.colorValue
    },
    ["grounding_totem"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.blue.colorValue
    },
    ["tremor_totem"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.blue.colorValue
    },
    ["mana_tide_totem"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.blue.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id] = {
    ["death_coil"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.violet.colorValue
    },
    ["howl_of_terror"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.violet.colorValue
    },
    ["fel_domination"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.violet.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.WARRIOR.id] = {
    ["recklessness"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.brown.colorValue
    },
    ["death_wish"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.brown.colorValue
    },
    ["intimidating_shout"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.brown.colorValue
    },
    ["pummel"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.brown.colorValue
    },
    ["spell_reflection"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.brown.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.RACIALS.id] = {},
  [RGPVPW_CONSTANTS.CATEGORIES.ITEMS.id] = {
    ["insignia_pvp_trinket"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.red.colorValue
    },
    ["nigh_invulnerability_belt"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.red.colorValue
    },
    ["nigh_invulnerability_belt_backfire"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.red.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.MISC.id] = {}
}

--[[
  ["categoryId"] = {
    -- RGPVPW_CONSTANTS.CATEGORIES
    ["spellName"] = {
      -- e.g. lay_on_hands as found in SpellMap
      ["spellActive"] = false,
        -- default false
      ["soundWarningActive"] = false,
        -- default false
      ["visualWarningColor"] = [number] -- e.g. blue, orange see RGPVPW_CONSTANTS.TEXTURES
        -- default color in RGPVPW_CONSTANTS.DEFAULT_COLOR
    }
  }
]]--
local defaultSpellSelfAvoidProfileWarlock = {}

--[[
  ["categoryId"] = {
    -- RGPVPW_CONSTANTS.CATEGORIES
    ["spellName"] = {
      -- e.g. lay_on_hands as found in SpellMap
      ["spellActive"] = false,
        -- default false
      ["soundWarningActive"] = false,
        -- default false
      ["visualWarningColor"] = [number] -- e.g. blue, orange see RGPVPW_CONSTANTS.TEXTURES
        -- default color in RGPVPW_CONSTANTS.DEFAULT_COLOR
    }
  }
]]--
local defaultSpellEnemyAvoidProfileWarlock = {
  [RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id] = {
    ["death_coil"] = {
      ["spellActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.DEFAULT_COLOR,
      ["soundWarningActive"] = true
    },
    ["fear"] = {
      ["spellActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.DEFAULT_COLOR,
      ["soundWarningActive"] = true
    },
    ["howl_of_terror"] = {
      ["spellActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.DEFAULT_COLOR,
      ["soundWarningActive"] = true
    },
    ["shadowfury"] = {
      ["spellActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.DEFAULT_COLOR,
      ["soundWarningActive"] = true
    }
  }
}

--[[
  @param {string} spellType

  @return {table | nil}
]]--
function me.GetSpellProfile(spellType)
  if spellType == RGPVPW_CONSTANTS.SPELL_TYPE.SPELL then
    return mod.common.Clone(defaultSpellProfileWarlock)
  elseif spellType == RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID then
    return mod.common.Clone(defaultSpellSelfAvoidProfileWarlock)
  elseif spellType == RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_ENEMY_AVOID then
    return mod.common.Clone(defaultSpellEnemyAvoidProfileWarlock)
  else
    mod.logger.LogError(me.tag, "Invalid spellType")
    return nil
  end
end
