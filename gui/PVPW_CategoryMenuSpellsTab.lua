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

-- luacheck: globals CreateFrame FauxScrollFrame_Update FauxScrollFrame_GetOffset GetSpellInfo GetItemIcon

local mod = rgpvpw
local me = {}
mod.categoryMenuSpellsTab = me

me.tag = "CategoryMenuSpellsTab"

-- track whether the menu was already built
local builtMenu = false

--[[
  Local references to ui elements
]]--
local spellRows = {}
local spellScrollFrame

--[[
  Cached spellList for reusing while the player scrolls through the spellList. Wiped
  when the category changes
]]--
local cachedCategoryData = nil
--[[
  Currently active category data
]]--
local activeCategoryData = nil

--[[
  @param {table} frame
  @param {number} categoryId
]]--
function me.Init(frame, categoryId)
  activeCategoryData = mod.common.GetCategoryById(categoryId)
  frame.categoryName = activeCategoryData.categoryName

  if spellScrollFrame ~= nil then
    spellScrollFrame.ScrollBar:SetValue(0) -- reset scrollframe when navigating from category to category
  end

  if builtMenu then
    -- cleaned cached data from previous category
    cachedCategoryData = nil
    mod.logger.LogInfo(me.tag, "Wiped cached spellList after category switch")
    -- changing the scrollframes parent to the respective active category panel
    spellScrollFrame:SetParent(frame)
    -- update the scrolllist with new category data
    me.FauxScrollFrameOnUpdate(spellScrollFrame, activeCategoryData)
  else
    me.BuildUi(frame, activeCategoryData)
  end
end

--[[
  Create the spelllist configuration menu

  @param {table} frame
  @param {table} categoryData
]]--
function me.BuildUi(frame, categoryData)
  spellScrollFrame = me.CreateSpellList(frame)
  me.FauxScrollFrameOnUpdate(spellScrollFrame, categoryData)
  builtMenu = true
end

--[[
  Create the scrollist for the spelllist

  @param {table} frame

  @return {table}
]]--
function me.CreateSpellList(frame)
  return mod.guiHelper.CreateFauxScrollFrame(
    RGPVPW_CONSTANTS.ELEMENT_SPELL_LIST_SCROLL_FRAME,
    frame,
    RGPVPW_CONSTANTS.SPELL_LIST_CONTENT_FRAME_WIDTH,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_ROW_HEIGHT,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_MAX_ROWS,
    me.FauxScrollFrameOnUpdate,
    me.CreateRowFrame,
    spellRows
  )
end

--[[
  @param {table} frame
  @param {number} position

  @return {table}
    The created row
]]--
function me.CreateRowFrame(frame, position)
  local row = mod.guiHelper.CreateSpellFrame(
    frame,
    position,
    RGPVPW_CONSTANTS.ELEMENT_SPELL_LIST_CONTENT_FRAME,
    RGPVPW_CONSTANTS.SPELL_LIST_ROW_HEIGHT
  )

  row.position = position
  row.spellStateCheckBox = me.CreateSpellStateCheckbox(row)
  row.spellIcon = mod.guiHelper.CreateSpellIcon(
    row,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SPELL_ICON,
    RGPVPW_CONSTANTS.CATEGORY_SPELL_ICON_SIZE
  )
  row.spellTitle = mod.guiHelper.CreateSpellTitle(
    row.spellIcon,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SPELL_NAME,
    RGPVPW_CONSTANTS.SPELL_TITLE_WIDTH,
    RGPVPW_CONSTANTS.CATEGORY_SPELL_ICON_SIZE
  )

  row.soundCheckBox = me.CreateSpellSoundCheckBox(row)
  row.playSound = mod.guiHelper.CreatePlayButton(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_PLAY_SOUND_BUTTON,
    row,
    {"LEFT", row.soundCheckBox, "RIGHT", 150, 0},
    me.PlaySoundButtonOnClick,
    rgpvpw.L["label_play_sound"]
  )
  row.soundSpecialCheckBox = me.CreateSpellSoundSpecialCheckBox(row)
  row.playSoundSpecial = mod.guiHelper.CreatePlayButton(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_PLAY_SOUND_SPECIAL_BUTTON,
    row,
    {"LEFT", row.soundSpecialCheckBox, "RIGHT", 150, 0},
    me.PlaySoundSpecialButtonOnClick,
    rgpvpw.L["label_play_sound_special"]
  )
  row.chooseVisual = me.CreateVisualAlertDropdown(row)
  row.chooseVisualLabel = mod.guiHelper.CreateVisualWarningLabel(
    row.chooseVisual,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_VISUAL_WARNING_LABEL,
    rgpvpw.L["label_visual_warning"]
  )
  row.playVisual = mod.guiHelper.CreatePlayButton(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_PLAY_VISUAL_WARNING_BUTTON,
    row,
    {"LEFT", row.chooseVisual, "RIGHT", 140, 0},
    me.ToggleVisualWarningOnClick,
    rgpvpw.L["label_play_visual"]
  )

  return row
end

--[[
  Create checkbox for configuring whether a spell is active or not

  @param {table} spellFrame

  @return {table}
    The created checkbox
]]--
function me.CreateSpellStateCheckbox(spellFrame)
  return mod.guiHelper.CreateCheckBox(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_ENABLE_SPELL,
    spellFrame,
    {"LEFT", 0, 0},
    function(self)
      mod.spellConfiguration.ToggleSpellState(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
        activeCategoryData.id,
        spellFrame.normalizedSpellName
      )

      local parentFrame = self:GetParent()

      me.UpdateCheckButtonState(self, parentFrame.soundCheckBox)
      me.UpdateCheckButtonState(self, parentFrame.soundSpecialCheckBox)
      me.UpdateChooseVisualDropdownMenuState(parentFrame, self:GetChecked())
    end,
    function(self)
      local isActive = mod.spellConfiguration.IsSpellActive(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
        activeCategoryData.id,
        spellFrame.normalizedSpellName
      )

      if isActive then
        self:SetChecked(true)
      else
        self:SetChecked(false)
      end
    end
  )
end

--[[
  Create checkbox for configuring sound alert configuration

  @param {table} spellFrame

  @return {table}
    The created checkbox
]]--
function me.CreateSpellSoundCheckBox(spellFrame)
  return mod.guiHelper.CreateCheckBox(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_ENABLE_SOUND,
    spellFrame,
    {"LEFT", spellFrame.spellTitle, "RIGHT", 0, 25},
    function()
      mod.spellConfiguration.ToggleSoundWarning(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
        activeCategoryData.id,
        spellFrame.normalizedSpellName
      )
    end,
    function(self)
      local isActive = mod.spellConfiguration.IsSoundWarningActive(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
        activeCategoryData.id,
        spellFrame.normalizedSpellName
      )

      if isActive then
        self:SetChecked(true)
      else
        self:SetChecked(false)
      end
    end,
    rgpvpw.L["label_enable_sound"]
  )
end

--[[
  Click callback for sound button

  @param {table} self
]]--
function me.PlaySoundButtonOnClick(self)
  mod.sound.PlaySound(self:GetParent().category, RGPVPW_CONSTANTS.SPELL_TYPES.NORMAL, self.soundFileName)
end

--[[
  Create checkbox for configuring sound down alert configuration

  @param {table} spellFrame

  @return {table}
    The created checkbox

  @return {table}
    The created checkbox
]]--
function me.CreateSpellSoundSpecialCheckBox(spellFrame)
  return mod.guiHelper.CreateCheckBox(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_ENABLE_SOUND_FADE,
    spellFrame,
    {"LEFT", spellFrame.spellTitle, "RIGHT", 0, 0},
    me.SpellSoundSpecialCheckBoxOnClick,
    me.SpellSoundSpecialCheckBoxOnShow
  )
end

--[[
  Sound special checkbox onClick callback

  @param {table} self
]]--
function me.SpellSoundSpecialCheckBoxOnClick(self)
    if self.type == RGPVPW_CONSTANTS.SPELL_TYPES.REMOVED then
      mod.spellConfiguration.ToggleSoundFadeWarning(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
        activeCategoryData.id,
        self:GetParent().normalizedSpellName
      )
    elseif self.type == RGPVPW_CONSTANTS.SPELL_TYPES.START then
      mod.spellConfiguration.ToggleSoundStart(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
        activeCategoryData.id,
        self:GetParent().normalizedSpellName
      )
    else
      mod.logger.LogError(me.tag, "Invalid type on special checkbox")
    end
end

--[[
  Sound special checkbox onShow callback

  @param {table} self
]]--
function me.SpellSoundSpecialCheckBoxOnShow(self)
  local isActive

  if self.type == RGPVPW_CONSTANTS.SPELL_TYPES.REMOVED then
    isActive = mod.spellConfiguration.IsSoundFadeWarningActive(
      RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
      activeCategoryData.id,
      self:GetParent().normalizedSpellName
    )
  elseif self.type == RGPVPW_CONSTANTS.SPELL_TYPES.START then
    isActive = mod.spellConfiguration.IsSoundStartWarningActive(
      RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
      activeCategoryData.id,
      self:GetParent().normalizedSpellName
    )
  else
    mod.logger.LogError(me.tag, "Invalid type on special checkbox")

    return
  end

  if isActive then
    self:SetChecked(true)
  else
    self:SetChecked(false)
  end
end

--[[
  Click callback for sound special button. Used for fade and spellcast sound

  @param {table} self
]]--
function me.PlaySoundSpecialButtonOnClick(self)
  mod.sound.PlaySound(self:GetParent().category, self:GetParent().soundSpecialCheckBox.type, self.soundFileName)
end

--[[
  Create a dropdown with alert color textures to choose

  @param {table} spellFrame

  @return {table}
    The created dropdown
]]--
function me.CreateVisualAlertDropdown(spellFrame)
  return mod.guiHelper.CreateVisualWarningDropdown(
    spellFrame,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_VISUAL_WARNING_DROPDOWN,
    function(self)
      for colorName, color in pairs(RGPVPW_CONSTANTS.TEXTURES) do
        mod.libUiDropDownMenu.UiDropDownMenu_AddButton(
          mod.guiHelper.CreateDropdownButton(colorName, color.colorValue, me.DropDownMenuCallback)
        )
      end

      if mod.libUiDropDownMenu.UiDropDownMenu_GetSelectedValue(self) == nil then
        mod.libUiDropDownMenu.UiDropDownMenu_SetSelectedValue(self, RGPVPW_CONSTANTS.TEXTURES.none.colorValue)
      end
    end
  )
end

--[[
  Callback for color dropdownmenu

  @param {table} self
    A reference to the dropdownbutton
]]--
function me.DropDownMenuCallback(self)
  mod.spellConfiguration.UpdateVisualWarningColor(
    RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
    activeCategoryData.id,
    self:GetParent().dropdown:GetParent().normalizedSpellName,
    self.value
  )

  mod.libUiDropDownMenu.UiDropDownMenu_SetSelectedValue(
    self:GetParent().dropdown,
    self.value
  )
end

--[[
  Click callback for enabling/disabling visual warnings

  @param {table} self
]]--
function me.ToggleVisualWarningOnClick(self)
  -- retrieve color for specific spell and category from configuration
  local color = mod.spellConfiguration.GetVisualWarningColor(
    RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
    activeCategoryData.id,
    self:GetParent().normalizedSpellName
  )

  if color == RGPVPW_CONSTANTS.DEFAULT_COLOR then
    mod.logger.PrintUserError(rgpvpw.L["user_message_choose_color"])
    return
  end

  mod.visual.ShowVisualAlert(color)
end

--[[
  Update the scrollframe on vertical scroll events and initialy. Gathers all items that
  are intended to be displayed. To prevent a heavy load while retrieving the data this step
  is only done once and the data is being cached for further update events.

  @param {table} scrollFrame
  @param {table} categoryData
]]--
function me.FauxScrollFrameOnUpdate(scrollFrame, categoryData)
  if cachedCategoryData == nil then
    mod.logger.LogInfo(me.tag, string.format("Warmed up cached spellList for category '%s'", categoryData.categoryName))
    cachedCategoryData = mod.spellMetaMap.GetSpellMetaDataByCategory(categoryData.id)
  end

  local maxValue = mod.common.TableLength(cachedCategoryData) or 0

  if maxValue <= RGPVPW_CONSTANTS.SPELL_LIST_MAX_ROWS then
    maxValue = RGPVPW_CONSTANTS.SPELL_LIST_MAX_ROWS + 1
  end
  -- Note: maxValue needs to be at least max_rows + 1
  FauxScrollFrame_Update(
    scrollFrame,
    maxValue,
    RGPVPW_CONSTANTS.SPELL_LIST_MAX_ROWS,
    RGPVPW_CONSTANTS.SPELL_LIST_ROW_HEIGHT
  )

  local offset = FauxScrollFrame_GetOffset(scrollFrame)

  for i = 1, RGPVPW_CONSTANTS.SPELL_LIST_MAX_ROWS do
    local value = i + offset

    if value <= maxValue then
      local row = spellRows[i]
      if cachedCategoryData[value] ~= nil then
        local spell = cachedCategoryData[value]

        row.normalizedSpellName = spell.normalizedSpellName
        row.category = activeCategoryData.categoryName
        row.spellTitle:SetText(spell.name)

        row.playSound.soundFileName = spell.soundFileName
        row.playSoundSpecial.soundFileName = spell.soundFileName

        me.UpdateIcon(row.spellIcon, activeCategoryData.categoryName, spell)
        me.UpdateSpellStateCheckBox(row.spellStateCheckBox, activeCategoryData.id, spell.normalizedSpellName)
        me.UpdateSound(row.soundCheckBox, activeCategoryData.id, spell.normalizedSpellName)
        me.UpdateSoundSpecial(row.soundSpecialCheckBox, row.playSoundSpecial, activeCategoryData.id, spell)
        me.UpdateChooseVisualDropdownMenu(row.chooseVisual, activeCategoryData.id, spell.normalizedSpellName)

        row:Show()
      else
        spellRows[i]:Hide()
      end
    end
  end
end

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
  @param {table} dropdownMenu
  @param {number} categoryId
  @param {string} spellName
]]--
function me.UpdateChooseVisualDropdownMenu(dropdownMenu, categoryId, spellName)
  local colorValue = mod.spellConfiguration.GetVisualWarningColor(
    RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
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

--[[
  @param {table} spellStateCheckBox
  @param {number} categoryId
  @param {string} spellName
]]--
function me.UpdateSpellStateCheckBox(spellStateCheckBox, categoryId, spellName)
  local isSpellActive = mod.spellConfiguration.IsSpellActive(
    RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
    categoryId,
    spellName
  )

  local parentFrame = spellStateCheckBox:GetParent()

  if isSpellActive then
    mod.logger.LogDebug(me.tag, string.format(
      "Spell %s for category %s is active", spellName, categoryId)
    )
    spellStateCheckBox:SetChecked(true)

    me.UpdateCheckButtonState(spellStateCheckBox, parentFrame.soundCheckBox)
    me.UpdateCheckButtonState(spellStateCheckBox, parentFrame.soundSpecialCheckBox)
    me.UpdateChooseVisualDropdownMenuState(parentFrame, true)
  else
    mod.logger.LogDebug(me.tag, string.format(
      "Spell %s for category %s is inactive", spellName, categoryId)
    )
    spellStateCheckBox:SetChecked(false)

    me.UpdateCheckButtonState(spellStateCheckBox, parentFrame.soundCheckBox)
    me.UpdateCheckButtonState(spellStateCheckBox, parentFrame.soundSpecialCheckBox)
    me.UpdateChooseVisualDropdownMenuState(parentFrame, false)
  end
end

--[[
  @param {table} soundCheckBox
  @param {number} categoryId
  @param {string} spellName
]]--
function me.UpdateSound(soundCheckBox, categoryId, spellName)
  -- update sound checkbox state
  soundCheckBox:SetChecked(
    mod.spellConfiguration.IsSoundWarningActive(
      RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
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
]]--
function me.UpdateSoundSpecial(soundSpecialCheckBox, soundSpecialButton, categoryId, spell)
  if spell.hasFade then
    soundSpecialCheckBox:SetChecked(mod.spellConfiguration.IsSoundFadeWarningActive(
      RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
      categoryId,
      spell.normalizedSpellName
    ))
    soundSpecialCheckBox.text:SetText(rgpvpw.L["label_enable_sound_fade"])
    soundSpecialCheckBox.type = RGPVPW_CONSTANTS.SPELL_TYPES.REMOVED
  elseif spell.hasCast then
    soundSpecialCheckBox:SetChecked(mod.spellConfiguration.IsSoundStartWarningActive(
      RGPVPW_CONSTANTS.SPELL_TYPE.SPELL,
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
  Enables or disables the chooseVisual dropdown and its label based
  on the checkButton state of the spell itself

  @param {table} frame
  @param {boolean} enable
]]--
function me.UpdateChooseVisualDropdownMenuState(frame, enable)
  if enable then
    mod.libUiDropDownMenu.UiDropDownMenu_EnableDropDown(frame.chooseVisual)
    frame.chooseVisualLabel:SetTextColor(1, 1, 1)
  else
    mod.libUiDropDownMenu.UiDropDownMenu_DisableDropDown(frame.chooseVisual)
    frame.chooseVisualLabel:SetTextColor(0.66, 0.66, 0.66)
  end
end
