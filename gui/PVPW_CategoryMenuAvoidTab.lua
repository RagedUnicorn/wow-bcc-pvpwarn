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

-- luacheck: globals FauxScrollFrame_Update FauxScrollFrame_GetOffset GetSpellInfo GetItemIcon

local mod = rgpvpw
local me = {}
mod.categoryMenuResistTab = me

me.tag = "CategoryMenuResistTab"

-- track whether the menu was already built
local builtMenu = false
--[[
  Local references to ui elements
]]--
local spellAvoidRows = {}
local spellSelfAvoidScrollFrame

--[[
  Cached spellAvoidList for reusing while the player scrolls through the spellAvoidList. Wiped
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

  if builtMenu then
    -- cleaned cached data from previous category
    cachedCategoryData = nil
    mod.logger.LogInfo(me.tag, "Wiped cached spellAvoidList after category switch")
    -- changing the scrollframes parent to the respective active category panel
    spellSelfAvoidScrollFrame:SetParent(frame)
    -- update the scrolllist with new category data
    me.FauxScrollFrameOnUpdate(spellSelfAvoidScrollFrame)
  else
    me.BuildUi(frame)
  end
end

--[[
  Create the spelllist configuration menu

  @param {table} frame
]]--
function me.BuildUi(frame)
  spellSelfAvoidScrollFrame = me.CreateSpellSelfAvoidList(frame)
  me.FauxScrollFrameOnUpdate(spellSelfAvoidScrollFrame)
  builtMenu = true
end

--[[
  Create the scrollist for the spelllist

  @param {table} frame

  @return {table}
]]--
function me.CreateSpellSelfAvoidList(frame)
  return mod.guiHelper.CreateFauxScrollFrame(
    RGPVPW_CONSTANTS.ELEMENT_SPELL_SELF_AVOID_LIST_SCROLL_FRAME,
    frame,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_CONTENT_FRAME_WIDTH,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_ROW_HEIGHT,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_MAX_ROWS,
    me.FauxScrollFrameOnUpdate,
    me.CreateRowFrame,
    spellAvoidRows
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
    RGPVPW_CONSTANTS.ELEMENT_SPELL_SELF_AVOID_LIST_CONTENT_FRAME,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_ROW_HEIGHT
  )

  row.position = position
  row.spellStateCheckBox = me.CreateSpellStateCheckbox(row)
  row.spellIcon = mod.guiHelper.CreateSpellIcon(
    row,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SPELL_SELF_AVOID_ICON,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SPELL_SELF_AVOID_ICON_SIZE
  )
  row.spellTitle = mod.guiHelper.CreateSpellTitle(
    row.spellIcon,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SPELL_SELF_AVOID_NAME,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_TITLE_WIDTH,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SPELL_SELF_AVOID_ICON_SIZE
  )

  row.avoidSoundCheckBox = me.CreateSpellAvoidSoundCheckBox(row)
  row.playAvoidSound = mod.guiHelper.CreatePlayButton(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_PLAY_SELF_AVOID_SOUND_BUTTON,
    row,
    {"LEFT", row.avoidSoundCheckBox, "RIGHT", 150, 0},
    me.PlayAvoidSoundButtonOnClick,
    rgpvpw.L["label_play_avoid_sound"]
  )
  row.chooseAvoidVisual = me.CreateAvoidVisualAlertDropdown(row)
  row.chooseAvoidVisualLabel = mod.guiHelper.CreateVisualWarningLabel(
    row.chooseAvoidVisual,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SELF_AVOID_VISUAL_WARNING_LABEL,
    rgpvpw.L["label_avoid_visual_warning"]
  )
  row.playAvoidVisual = mod.guiHelper.CreatePlayButton(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_PLAY_SELF_AVOID_VISUAL_ALERT_BUTTON,
    row,
    {"LEFT", row.chooseAvoidVisual, "RIGHT", 140, 0},
    me.ToggleAvoidVisualWarningOnClick,
    rgpvpw.L["label_play_avoid_visual"]
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
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_ENABLE_SPELL_SELF_AVOID,
    spellFrame,
    {"LEFT", 0, 0},
    function(self)
      mod.spellConfiguration.ToggleSpellState(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID,
        activeCategoryData.id,
        spellFrame.normalizedSpellName
      )

      local parentFrame = self:GetParent()

      mod.spellStateHelper.UpdateCheckButtonState(self, parentFrame.avoidSoundCheckBox)
      mod.spellStateHelper.UpdateChooseVisualDropdownMenuState(
        parentFrame.chooseAvoidVisual,
        parentFrame.chooseAvoidVisualLabel,
        self:GetChecked()
      )
    end,
    function(self)
      local isActive = mod.spellConfiguration.IsSpellActive(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID,
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
function me.CreateSpellAvoidSoundCheckBox(spellFrame)
  return mod.guiHelper.CreateCheckBox(
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_ENABLE_SELF_AVOID_SOUND,
    spellFrame,
    {"LEFT", spellFrame.spellTitle, "RIGHT", 0, 25},
    function()
      mod.spellConfiguration.ToggleSoundWarning(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID,
        activeCategoryData.id,
        spellFrame.normalizedSpellName
      )
    end,
    function(self)
      local isActive = mod.spellConfiguration.IsSoundWarningActive(
        RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID,
        activeCategoryData.id,
        spellFrame.normalizedSpellName
      )

      if isActive then
        self:SetChecked(true)
      else
        self:SetChecked(false)
      end
    end,
    rgpvpw.L["label_enable_avoid_sound"]
  )
end

--[[
  Click callback for sound button

  @param {table} self
]]--
function me.PlayAvoidSoundButtonOnClick(self)
  mod.sound.PlaySound(self:GetParent().category, RGPVPW_CONSTANTS.SPELL_TYPES.MISSED_SELF, self.soundFileName)
end

--[[
  Create a dropdown with alert color textures to choose

  @param {table} spellFrame

  @return {table}
    The created dropdown
]]--
function me.CreateAvoidVisualAlertDropdown(spellFrame)
  return mod.guiHelper.CreateVisualWarningDropdown(
    spellFrame,
    RGPVPW_CONSTANTS.ELEMENT_CATEGORY_SELF_AVOID_VISUAL_WARNING_DROPDOWN,
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
    RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID,
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
function me.ToggleAvoidVisualWarningOnClick(self)
  -- retrieve color for specific spell and category from configuration
  local color = mod.spellConfiguration.GetVisualWarningColor(
    RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID,
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
      me.tag, string.format("Warmed up cached spellAvoidList for category '%s'", activeCategoryData.categoryName))
    cachedCategoryData = mod.spellMetaMap.GetSpellMetaDataByCategory(
      activeCategoryData.id,
      {RGPVPW_CONSTANTS.EVENT_SPELL_MISSED}
    )
  end

  local maxValue = mod.common.TableLength(cachedCategoryData) or 0

  if maxValue <= RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_MAX_ROWS then
    maxValue = RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_MAX_ROWS + 1
  end
  -- Note: maxValue needs to be at least max_rows + 1
  FauxScrollFrame_Update(
    scrollFrame,
    maxValue,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_MAX_ROWS,
    RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_ROW_HEIGHT
  )

  local offset = FauxScrollFrame_GetOffset(scrollFrame)

  for i = 1, RGPVPW_CONSTANTS.SPELL_SELF_AVOID_LIST_MAX_ROWS do
    local value = i + offset

    if value <= maxValue then
      local row = spellAvoidRows[i]

      if cachedCategoryData[value] ~= nil then
        local spell = cachedCategoryData[value]

        row.normalizedSpellName = spell.normalizedSpellName
        row.category = activeCategoryData.categoryName
        row.spellTitle:SetText(spell.name)
        row.playAvoidSound.soundFileName = spell.soundFileName

        mod.spellStateHelper.UpdateIcon(
          row.spellIcon,
          activeCategoryData.categoryName,
          spell
        )
        mod.spellStateHelper.UpdateSpellStateCheckBox(
          row.spellStateCheckBox,
          row.spellStateCheckBox:GetParent().avoidSoundCheckBox,
          nil,
          row.spellStateCheckBox:GetParent().chooseAvoidVisual,
          row.spellStateCheckBox:GetParent().chooseAvoidVisualLabel,
          activeCategoryData.id,
          spell.normalizedSpellName,
          RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID
        )
        mod.spellStateHelper.UpdateSound(
          row.avoidSoundCheckBox,
          activeCategoryData.id,
          spell.normalizedSpellName,
          RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID
        )
        mod.spellStateHelper.UpdateChooseVisualDropdownMenu(
          row.chooseAvoidVisual,
          activeCategoryData.id,
          spell.normalizedSpellName,
          RGPVPW_CONSTANTS.SPELL_TYPE.SPELL_SELF_AVOID
        )

        row:Show()
      else
        spellAvoidRows[i]:Hide()
      end
    end
  end
end
