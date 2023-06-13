--[[
  MIT License

  Copyright (c) 2023 Michael Wiesendanger

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

-- luacheck: globals tContains

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
  @param {table} category
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
  me.ShouldHaveSoundCastTestForAllSpells(language, category)
  me.ShouldHaveSoundAvoidTestForAllSpells(language, category, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID)
  me.ShouldHaveSoundAvoidTestForAllSpells(language, category, RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID)

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

  spellMap = mod.spellMap.SearchByCategory(category.id)

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
        category.id,
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

  spellMap = mod.spellMap.SearchByCategory(category.id)

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
    local trackedEvents = spellMetaData.trackedEvents

    --[[
      Only spells that track SPELL_AURA_REMOVED are expected to have a sound down test
    ]]--
    for _, trackedEvent in pairs(trackedEvents) do
      if tContains(mod.testHelper.GetFadeEvents(), trackedEvent) then
        local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
        local testName = "SoundTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) .. spellName

        mod.testReporter.StartTestRun(testName)

        local func = mod["testSound" .. mod.testHelper.FirstToUpper(category.categoryName)
          .. mod.testHelper.FirstToUpper(language)]["TestSoundDown" .. spellName]

        if type(func) ~= "function" then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.missingSoundDownTest, category.categoryName, spellName)
          )
        else
          mod.testReporter.ReportSuccessTestRun()
        end
      end
    end
  end
end

--[[
  Tests whether there is an appropriate sound cast testcase for every spell found in the spellmap

  @param {string} language
    A supported language such as en, de etc.
  @param {string} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
]]--
function me.ShouldHaveSoundCastTestForAllSpells(language, category)
  local spellMap

  if language == nil then
    mod.logger.LogError(me.tag, "Missing language - aborting...")
    return
  end

  spellMap = mod.spellMap.SearchByCategory(category.id)

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.SoundCastTest(category, spellMap, language)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {string} category
    A valid category see RGPVPW_CONSTANTS.CATEGORIES
  @param {table} spellMap
  @param {string} language
]]--
function me.SoundCastTest(category, spellMap, language)
  for _, spellData in pairs (spellMap) do
    local spellMetaData = mod.spellMetaMap.GetSpellMetaDataByCategoryAndName(category.id, spellData.name)
    local trackedEvents = spellMetaData.trackedEvents

    --[[
      Only spells that track SPELL_AURA_REMOVED are expected to have a sound down test
    ]]--
    for _, trackedEvent in pairs(trackedEvents) do
      if tContains(mod.testHelper.GetCastEvents(), trackedEvent) then
        local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
        local testName = "SoundTestPresent" .. mod.testHelper.FirstToUpper(category.categoryName) .. spellName

        mod.testReporter.StartTestRun(testName)

        local func = mod["testSoundCast" .. mod.testHelper.FirstToUpper(category.categoryName)
          .. mod.testHelper.FirstToUpper(language)]["TestSoundCast" .. spellName]

        if type(func) ~= "function" then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.missingSoundCastTest, category.categoryName, spellName)
          )
        else
          mod.testReporter.ReportSuccessTestRun()
        end
      end
    end
  end
end

--[[
  Tests whether there is an appropriate sound testcase for every spell that supports SPELL_MISSED

  @param {string} language
    A supported language such as en, de etc.
  @param {table} category
  @param {number} spellAvoidType
    RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID or RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID
]]--
function me.ShouldHaveSoundAvoidTestForAllSpells(language, category, spellAvoidType)
  local spellMap

  if language == nil then
    mod.logger.LogError(me.tag, "Missing language - aborting...")
    return
  end

  spellMap = mod.spellMap.SearchByCategory(category.id)

  if spellMap == nil then
    mod.logger.LogError(me.tag, "Unable to get spellMap for category: " .. category.categoryName)
    return
  end

  me.SoundAvoidTest(language, category, spellMap, spellAvoidType)
end

--[[
  Do the actual test whether the expected function is present or not

  @param {string} language
  @param {table} category
  @param {table} spellMap
  @param {number} spellAvoidType
    RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID or RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID
]]--
function me.SoundAvoidTest(language, category, spellMap, spellAvoidType)
  local module
  local testNameBase
  local testFunctionBase

  if spellAvoidType == RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.SELF_AVOID then
    module = mod["testSoundSelfAvoid" .. mod.testHelper.FirstToUpper(category.categoryName)
      .. mod.testHelper.FirstToUpper(language)]
    testNameBase = "SoundTestSelfAvoidPresent"
    testFunctionBase = "TestSoundSelfAvoid"
  elseif spellAvoidType == RGPVPW_CONSTANTS.SPELL_AVOID_TYPE.ENEMY_AVOID then
    module = mod["testSoundEnemyAvoid" .. mod.testHelper.FirstToUpper(category.categoryName)
      .. mod.testHelper.FirstToUpper(language)]
    testNameBase = "SoundTestEnemyAvoidPresent"
    testFunctionBase = "TestSoundEnemyAvoid"
  else
    mod.logger.LogError(me.tag, "Invalid spellAvoidType: " .. spellAvoidType)
    return
  end

  for _, spellData in pairs(spellMap) do
    local spellMetaData = mod.spellMetaMap.GetSpellMetaDataByCategoryAndName(category.id, spellData.name)
    local spellName = mod.testHelper.NormalizeSpellName(spellMetaData.name)
    local trackedEvents = spellMetaData.trackedEvents

    for _, trackedEvent in pairs(trackedEvents) do
      if tContains(mod.testHelper.GetAvoidCombatEvents(), trackedEvent) then
        local testName = testNameBase .. mod.testHelper.FirstToUpper(category.categoryName) .. spellName

        mod.testReporter.StartTestRun(testName)

        local func = module[testFunctionBase .. spellName]

        if type(func) ~= "function" then
          mod.testReporter.ReportFailureTestRun(
            category.id,
            testName,
            string.format(mod.testHelper.missingSoundAvoidTest, category.categoryName, spellName)
          )
        else
          mod.testReporter.ReportSuccessTestRun()
        end
      end
    end
  end
end
