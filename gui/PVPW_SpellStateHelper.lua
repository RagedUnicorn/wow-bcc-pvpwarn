--[[
  MIT License

  Copyright (c) 2022 Michael Wiesendanger

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

--[[
  SpellStateHelper helps with updating the state of differen ui elements in the normal spelllist,
  the enemy avoid spelllist and the self avoid spelllist
]]--
local mod = rgpvpw
local me = {}
mod.spellStateHelper = me

me.tag = "SpellStateHelper"

--[[
  @param {table} spellIcon
  @param {string} categoryName
  @param {table} spell
]]--
function me.UpdateIcon(spellIcon, categoryName, spell)
  local color = RGPVPW_CONSTANTS.CATEGORY_COLOR[categoryName]

  spellIcon:SetTexture(spell.spellIconId)
  spellIcon.iconHolder:SetBackdropBorderColor(unpack(color))
end

--[[
  @param {table} spellStateCheckBox
  @param {table} soundCheckBox
  @param {table} soundSpecialCheckBox
  @param {table} visualDropdown
  @param {table} visualDropdownLabel
  @param {number} categoryId
  @param {string} spellName
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
]]--
function me.UpdateSpellStateCheckBox(
  spellStateCheckBox,
  soundCheckBox,
  soundSpecialCheckBox,
  visualDropdown,
  visualDropdownLabel,
  categoryId,
  spellName,
  spellList
)
  local isSpellActive = mod.spellConfiguration.IsSpellActive(
    spellList,
    categoryId,
    spellName
  )


  if isSpellActive then
    mod.logger.LogDebug(me.tag, string.format(
      "Spell {%s} for category {%i} is active", spellName, categoryId)
    )
    spellStateCheckBox:SetChecked(true)

    mod.spellStateHelper.UpdateChooseVisualDropdownMenuState(
      visualDropdown,
      visualDropdownLabel,
      true
    )
  else
    mod.logger.LogDebug(me.tag, string.format(
      "Spell {%s} for category {%i} is inactive", spellName, categoryId)
    )
    spellStateCheckBox:SetChecked(false)

    mod.spellStateHelper.UpdateChooseVisualDropdownMenuState(
      visualDropdown,
      visualDropdownLabel,
      false
    )
  end

  me.UpdateCheckButtonState(spellStateCheckBox, soundCheckBox)
  if soundSpecialCheckBox ~= nil then
    me.UpdateCheckButtonState(spellStateCheckBox, soundSpecialCheckBox)
  end
end

--[[
  Updates a checkbutton based on its state or a dependent checkButton

  @param {table} checkButton
  @param {table} dependentCheckButton
]]--
function me.UpdateCheckButtonState(checkButton, dependentCheckButton)
  if checkButton:GetChecked() then
    if dependentCheckButton ~= nil then
      mod.guiHelper.EnableCheckButton(dependentCheckButton)
    else
      mod.guiHelper.EnableCheckButton(checkButton)
    end
  else
    if dependentCheckButton ~= nil then
      mod.guiHelper.DisableCheckButton(dependentCheckButton)
    else
      mod.guiHelper.DisableCheckButton(checkButton)
    end
  end
end

--[[
  @param {table} soundCheckBox
  @param {number} categoryId
  @param {string} spellName
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
]]--
function me.UpdateSound(soundCheckBox, categoryId, spellName, spellList)
  -- update sound checkbox state
  soundCheckBox:SetChecked(
    mod.spellConfiguration.IsSoundWarningActive(
      spellList,
      categoryId,
      spellName
    )
  )
end

--[[
  @param {table} soundSpecialCheckBox
  @param {table} soundSpecialButton
  @param {number} categoryId
  @param {table} spell
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
]]--
function me.UpdateSoundSpecial(
  soundSpecialCheckBox,
  soundSpecialButton,
  categoryId,
  spell,
  spellList
)
  if mod.common.SpellHasFade(spell) then
    soundSpecialCheckBox:SetChecked(mod.spellConfiguration.IsSoundFadeWarningActive(
      spellList,
      categoryId,
      spell.normalizedSpellName
    ))
    soundSpecialCheckBox.text:SetText(rgpvpw.L["label_enable_sound_fade"])
    soundSpecialCheckBox.type = RGPVPW_CONSTANTS.SPELL_TYPES.REMOVED
  elseif mod.common.SpellHasStart(spell) then
    soundSpecialCheckBox:SetChecked(mod.spellConfiguration.IsSoundStartWarningActive(
      spellList,
      categoryId,
      spell.normalizedSpellName
    ))
    soundSpecialCheckBox.text:SetText(rgpvpw.L["label_enable_sound_cast"])
    soundSpecialCheckBox.type = RGPVPW_CONSTANTS.SPELL_TYPES.START
  else
    soundSpecialCheckBox:Hide()
    soundSpecialButton:Hide()

    return
  end

  soundSpecialCheckBox:Show()
  soundSpecialButton:Show()
end

--[[
  Enables or disables the chooseVisual dropdown and its label based
  on the checkButton state of the spell itself

  @param {table} visualDropdown
  @param {table} visualDropdownLabel
  @param {boolean} enable
]]--
function me.UpdateChooseVisualDropdownMenuState(visualDropdown, visualDropdownLabel, enable)
  if enable then
    mod.libUiDropDownMenu.UiDropDownMenu_EnableDropDown(visualDropdown)
    visualDropdownLabel:SetTextColor(1, 1, 1)
  else
    mod.libUiDropDownMenu.UiDropDownMenu_DisableDropDown(visualDropdown)
    visualDropdownLabel:SetTextColor(0.66, 0.66, 0.66)
  end
end

--[[
  @param {table} dropdownMenu
  @param {number} categoryId
  @param {string} spellName
  @param {string} spellList
    decides upon which stored list should be used. Possible values:
    * spellList - enemy spell detected
    * spellSelfAvoidList - player avoided spell
    * spellEnemyAvoidList - enemy player avoided spell
]]--
function me.UpdateChooseVisualDropdownMenu(dropdownMenu, categoryId, spellName, spellList)
  local colorValue = mod.spellConfiguration.GetVisualWarningColor(
    spellList,
    categoryId,
    spellName
  )

  mod.libUiDropDownMenu.UiDropDownMenu_SetSelectedValue(
    dropdownMenu,
    colorValue
  )

  -- fix for updating text properly
  mod.libUiDropDownMenu.UiDropDownMenu_SetText(dropdownMenu, rgpvpw.L[mod.common.GetTextureNameByValue(colorValue)])
end
