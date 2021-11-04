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
mod.rogueProfile = me

me.tag = "RogueProfile"

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
local defaultSpellProfileRogue = {
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
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.HUNTER.id] = {
    ["flare"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.green.colorValue
    },
    ["the_beast_within"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.green.colorValue
    },
    ["deterrence"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.green.colorValue
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.MAGE.id] = {
    ["evocation"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.light_blue.colorValue
    },
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
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.PALADIN.id] = {
    ["blessing_of_freedom"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.pink.colorValue
    },
    ["blessing_of_sacrifice"] = {
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
    },
    ["blessing_of_protection"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.pink.colorValue
    },
    ["avenging_wrath"] = {
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
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id] = {
    ["blind"] = {
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
    ["evasion"] = {
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
    }
  },
  [RGPVPW_CONSTANTS.CATEGORIES.WARLOCK.id] = {
    ["death_coil"] = {
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
    ["berserker_rage"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["soundFadeWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.brown.colorValue
    },
    ["disarm"] = {
      ["spellActive"] = true,
      ["soundWarningActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.TEXTURES.brown.colorValue
    },
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
    },
    ["skull_of_impending_doom"] = {
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
local defaultSpellSelfAvoidProfileRogue = {}

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
local defaultSpellEnemyAvoidProfileRogue = {
  [RGPVPW_CONSTANTS.CATEGORIES.ROGUE.id] = {
    ["blind"] = {
      ["spellActive"] = true,
      ["visualWarningColor"] = RGPVPW_CONSTANTS.DEFAULT_COLOR,
      ["soundWarningActive"] = true
    },
    ["kidney_shot"] = {
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
    return mod.common.Clone(defaultSpellProfileRogue)
  elseif spellType == RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID then
    return mod.common.Clone(defaultSpellSelfAvoidProfileRogue)
  elseif spellType == RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_ENEMY_AVOID then
    return mod.common.Clone(defaultSpellEnemyAvoidProfileRogue)
  else
    mod.logger.LogError(me.tag, "Invalid spellType")
    return nil
  end
end
