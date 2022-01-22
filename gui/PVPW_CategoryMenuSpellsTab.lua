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
local cachedCategoryData
--[[
  Currently active category data
]]--
local activeCategoryData

--[[
  @param {table} frame
  @param {number} categoryId
]]--
function me.Init(frame, categoryId)
  activeCategoryData = mod.common.GetCategoryById(categoryId)
  frame.categoryName = activeCategoryData.categoryName

  if builtMenu then
    if spellScrollFrame ~= nil then
      spellScrollFrame.ScrollBar:SetValue(0) -- reset scrollframe when navigating from category to category
    end

    -- cleaned cached data from previous category
    cachedCategoryData = nil
    mod.logger.LogInfo(me.tag, "Wiped cached spellList after category switch")
    -- changing the scrollframes parent to the respective active category panel
    spellScrollFrame:SetParent(frame)
    -- update the scrolllist with new category data
    me.FauxScrollFrameOnUpdate(spellScrollFrame)
  else
    me.BuildUi(frame)
  end
end

--[[
  Create the spelllist configuration menu

  @param {table} frame
]]--
function me.BuildUi(frame)
  spellScrollFrame = me.CreateSpellList(frame)
  me.FauxScrollFrameOnUpdate(spellScrollFrame)
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

      mod.spellStateHelper.UpdateCheckButtonState(self, parentFrame.soundCheckBox)
      mod.spellStateHelper.UpdateCheckButtonState(self, parentFrame.soundSpecialCheckBox)
      mod.spellStateHelper.UpdateChooseVisualDropdownMenuState(
        parentFrame.chooseVisual,
        parentFrame.chooseVisualLabel,
        self:GetChecked()
      )
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
  mod.sound.PlaySound(activeCategoryData.id, RGPVPW_CONSTANTS.SPELL_TYPES.NORMAL, self.soundFileName)
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
      mod.spellConfiguration.ToggleSoundStartWarning(
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
  mod.sound.PlaySound(activeCategoryData.id, self:GetParent().soundSpecialCheckBox.type, self.soundFileName)
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
]]--
function me.FauxScrollFrameOnUpdate(scrollFrame)
  if cachedCategoryData == nil then
    mod.logger.LogInfo(
      me.tag, string.format("Warmed up cached spellList for category '%s'", activeCategoryData.categoryName))
    cachedCategoryData = mod.spellMetaMap.GetSpellMetaDataByCategory(activeCategoryData.id)
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

        -- initially show all checkboxes and let spellStateHelper figure out the actual state
        row.spellStateCheckBox:Show()
        row.soundCheckBox:Show()
        row.soundSpecialCheckBox:Show()

        mod.spellStateHelper.UpdateIcon(
          row.spellIcon,
          activeCategoryData.categoryName,
          spell
        )
        mod.spellStateHelper.UpdateSpellStateCheckBox(
          row.spellStateCheckBox,
          row.soundCheckBox,
          row.soundSpecialCheckBox,
          row.chooseVisual,
          row.chooseVisualLabel,
          activeCategoryData.id,
          spell.normalizedSpellName,
          RGPVPW_CONSTANTS.SPELL_TYPE.SPELL
        )
        mod.spellStateHelper.UpdateSound(
          row.soundCheckBox,
          activeCategoryData.id,
          spell.normalizedSpellName,
          RGPVPW_CONSTANTS.SPELL_TYPE.SPELL
        )
        mod.spellStateHelper.UpdateSoundSpecial(
          row.soundSpecialCheckBox,
          row.playSoundSpecial,
          activeCategoryData.id,
          spell,
          RGPVPW_CONSTANTS.SPELL_TYPE.SPELL
        )
        mod.spellStateHelper.UpdateChooseVisualDropdownMenu(
          row.chooseVisual,
          activeCategoryData.id,
          spell.normalizedSpellName,
          RGPVPW_CONSTANTS.SPELL_TYPE.SPELL
        )

        row:Show()
      else
        spellRows[i]:Hide()
      end
    end
  end
end

--[[
  Entry point from external to update the spelllist
  Note: It is important to check elements first before working with them because this function could be called
  before the menu actually exists.
]]--
function me.UpdateSpellList()
  if spellScrollFrame ~= nil then
    me.FauxScrollFrameOnUpdate(spellScrollFrame)
  end
end
