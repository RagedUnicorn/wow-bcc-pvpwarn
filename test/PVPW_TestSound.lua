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

--[[
  Run all tests:
    /run rgpvpw.testSound.Test(language [, categoryName])
  Run sound tests:
    /run rgpvpw.testSound.ShouldHaveSoundTestForAllSpells(language [, categoryName])
  Run sound down tests:
    /run rgpvpw.testSound.ShouldHaveSoundDownTestForAllSpells(language [, categoryName])
  Run sound self avoid test:
    /run rgpvpw.testSound.ShouldHaveSoundAvoidTestForAllSpells(
      language, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID [, categoryName]
    )
  Run sound enemy avoid test:
    /run rgpvpw.testSound.ShouldHaveSoundAvoidTestForAllSpells(
      language, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID [, categoryName]
    )
]]--

local mod = rgpvpw
local me = {}
mod.testSound = me

me.tag = "TestSound"

local testGroupName = "ShouldHaveSoundTestForAllSpells"

--[[
  @param {string} language
    A supported language such as en, de etc.
  @param {string} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.Test(language, category)
  mod.testReporter.StartTestGroup(testGroupName)

  if language == nil then
    mod.logger.LogError(me.tag, "Missing language - aborting...")
    mod.testReporter.StopTestGroup()

    return
  end

  me.ShouldHaveSoundTestForAllSpells(language, category)
  me.ShouldHaveSoundDownTestForAllSpells(language, category)

  mod.testReporter.StopTestGroup()
end

--[[
  Tests whether there is an appropriate sound testcase for every spell found in the spellmap

  @param {string} language
    A supported language such as en, de etc.
  @param {string} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.ShouldHaveSoundTestForAllSpells(language, category)
  local spellMap

  if language == nil then
    mod.logger.LogError(me.tag, "Missing language - aborting...")
    return
  end

  if category ~= nil then
    spellMap = mod.spellMap.SearchByCategory(category.id)
  else
    spellMap = mod.spellMap.GetSpellMap()
  end

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.SoundTest(category, spellMap, language)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {string} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
  @param {table} spellMap
  @param {string} language
]]--
function me.SoundTest(category, spellMap, language)
  for _, spellData in pairs (spellMap) do
    local spellMetaData = mod.spellMetaMap.GetSpellMetaDataByCategoryAndName(category.id, spellData.name)
    local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
    local testName = "SoundTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) .. spellName

    mod.testReporter.StartTestRun(testName)

    local func = mod["testSound" .. mod.testHelper.FirstToUpper(category.categoryName)
      .. mod.testHelper.FirstToUpper(language)]["TestSound" .. spellName]

    if type(func) ~= "function" then
      mod.testReporter.ReportFailureTestRun(
        category.categoryName,
        testName,
        string.format(mod.testHelper.missingSoundTest, category.categoryName, spellName)
      )
    else
      mod.testReporter.ReportSuccessTestRun()
    end
  end
end

--[[
  Tests whether there is an appropriate sound down testcase for every spell found in the spellmap

  @param {string} language
    A supported language such as en, de etc.
  @param {string} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.ShouldHaveSoundDownTestForAllSpells(language, category)
  local spellMap

  if language == nil then
    mod.logger.LogError(me.tag, "Missing language - aborting...")
    return
  end

  if category ~= nil then
    spellMap = mod.spellMap.SearchByCategory(category.id)
  else
    spellMap = mod.spellMap.GetSpellMap()
  end

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.SoundDownTest(category, spellMap, language)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {string} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
  @param {table} spellMap
  @param {string} language
]]--
function me.SoundDownTest(category, spellMap, language)
  for _, spellData in pairs (spellMap) do
    local spellMetaData = mod.spellMetaMap.GetSpellMetaDataByCategoryAndName(category.id, spellData.name)

    -- for spells without hasFade there is not test expected
    if spellMetaData.hasFade then
      local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
      local testName = "SoundTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) .. spellName

      mod.testReporter.StartTestRun(testName)

      local func = mod["testSound" .. mod.testHelper.FirstToUpper(category.categoryName)
        .. mod.testHelper.FirstToUpper(language)]["TestSoundDown" .. spellName]

      if type(func) ~= "function" then
        mod.testReporter.ReportFailureTestRun(
          category.Name,
          testName,
          string.format(mod.testHelper.missingSoundDownTest, category.Name, spellName)
        )
      else
        mod.testReporter.ReportSuccessTestRun()
      end
    end
  end
end