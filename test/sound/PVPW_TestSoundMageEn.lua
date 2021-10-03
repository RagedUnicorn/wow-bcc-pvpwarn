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
mod.testSoundMageEn = me

me.tag = "TestSoundMageEn"

local testGroupName = "SoundMageEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.MAGE.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAmplifyMagic)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAmplifyMagic)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcaneBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcaneBrilliance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownArcaneBrilliance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcaneExplosion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcaneIntellect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownArcaneIntellect)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcaneMissiles)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlink)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlizzard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConeOfCold)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConjureFood)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConjureManaAgate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConjureManaCitrine)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConjureManaEmerald)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConjureManaJade)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConjureManaRuby)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundConjureWater)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCounterspell)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDampenMagic)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDampenMagic)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEvocation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownEvocation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFireBlast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFireWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFireWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFireball)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlamestrike)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFrostArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostNova)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFrostWard)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrostbolt)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIceArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownIceArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIceBlock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownIceBlock)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIceLance)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInvisibility)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMageArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMageArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundManaShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownManaShield)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMoltenArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownMoltenArmor)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPolymorph)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPolymorphPig)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPolymorphTurtle)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRemoveLesserCurse)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundScorch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSlowFall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownSlowFall)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSpellsteal)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundArcanePower)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownArcanePower)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBlastWave)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundColdSnap)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCombustion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownCombustion)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDragonsBreath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIceBarrier)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownIceBarrier)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundIcyVeins)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownIcyVeins)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPresenceOfMind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownPresenceOfMind)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPyroblast)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSlow)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSummonWaterElemental)
end

function me.TestSoundAmplifyMagic()
  mod.testHelper.TestSoundApplied(
    "TestSoundAmplifyMagic",
    testCategory,
    "amplify_magic"
  )
end

function me.TestSoundDownAmplifyMagic()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAmplifyMagic",
    testCategory,
    "amplify_magic"
  )
end

function me.TestSoundArcaneBlast()
  mod.testHelper.TestSoundSuccess(
    "TestSoundArcaneBlast",
    testCategory,
    "arcane_blast"
  )
end

function me.TestSoundArcaneBrilliance()
  mod.testHelper.TestSoundApplied(
    "TestSoundArcaneBrilliance",
    testCategory,
    "arcane_brilliance"
  )
end

function me.TestSoundDownArcaneBrilliance()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownArcaneBrilliance",
    testCategory,
    "arcane_brilliance"
  )
end

function me.TestSoundArcaneExplosion()
  mod.testHelper.TestSoundSuccess(
    "TestSoundArcaneExplosion",
    testCategory,
    "arcane_explosion"
  )
end

function me.TestSoundArcaneIntellect()
  mod.testHelper.TestSoundApplied(
    "TestSoundArcaneIntellect",
    testCategory,
    "arcane_intellect"
  )
end

function me.TestSoundDownArcaneIntellect()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownArcaneIntellect",
    testCategory,
    "arcane_intellect"
  )
end

function me.TestSoundArcaneMissiles()
  mod.testHelper.TestSoundSuccess(
    "TestSoundArcaneMissiles",
    testCategory,
    "arcane_missiles"
  )
end

function me.TestSoundBlink()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBlink",
    testCategory,
    "blink"
  )
end

function me.TestSoundBlizzard()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBlizzard",
    testCategory,
    "blizzard"
  )
end

function me.TestSoundConeOfCold()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConeOfCold",
    testCategory,
    "cone_of_cold"
  )
end

function me.TestSoundConjureFood()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConjureFood",
    testCategory,
    "conjure_food"
  )
end

function me.TestSoundConjureManaAgate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConjureManaAgate",
    testCategory,
    "conjure_mana_agate"
  )
end

function me.TestSoundConjureManaCitrine()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConjureManaCitrine",
    testCategory,
    "conjure_mana_citrine"
  )
end

function me.TestSoundConjureManaEmerald()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConjureManaEmerald",
    testCategory,
    "conjure_mana_emerald"
  )
end

function me.TestSoundConjureManaJade()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConjureManaJade",
    testCategory,
    "conjure_mana_jade"
  )
end

function me.TestSoundConjureManaRuby()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConjureManaRuby",
    testCategory,
    "conjure_mana_ruby"
  )
end

function me.TestSoundConjureWater()
  mod.testHelper.TestSoundSuccess(
    "TestSoundConjureWater",
    testCategory,
    "conjure_water"
  )
end

function me.TestSoundCounterspell()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCounterspell",
    testCategory,
    "counterspell"
  )
end

function me.TestSoundDampenMagic()
  mod.testHelper.TestSoundApplied(
    "TestSoundDampenMagic",
    testCategory,
    "dampen_magic"
  )
end

function me.TestSoundDownDampenMagic()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDampenMagic",
    testCategory,
    "dampen_magic"
  )
end

function me.TestSoundEvocation()
  mod.testHelper.TestSoundApplied(
    "TestSoundEvocation",
    testCategory,
    "evocation"
  )
end

function me.TestSoundDownEvocation()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownEvocation",
    testCategory,
    "evocation"
  )
end

function me.TestSoundFireBlast()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFireBlast",
    testCategory,
    "fire_blast"
  )
end

function me.TestSoundFireWard()
  mod.testHelper.TestSoundApplied(
    "TestSoundFireWard",
    testCategory,
    "fire_ward"
  )
end

function me.TestSoundDownFireWard()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFireWard",
    testCategory,
    "fire_ward"
  )
end

function me.TestSoundFireball()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFireball",
    testCategory,
    "fireball"
  )
end

function me.TestSoundFlamestrike()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFlamestrike",
    testCategory,
    "flamestrike"
  )
end

function me.TestSoundFrostArmor()
  mod.testHelper.TestSoundApplied(
    "TestSoundFrostArmor",
    testCategory,
    "frost_armor"
  )
end

function me.TestSoundDownFrostArmor()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFrostArmor",
    testCategory,
    "frost_armor"
  )
end

function me.TestSoundFrostNova()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostNova",
    testCategory,
    "frost_nova"
  )
end

function me.TestSoundFrostWard()
  mod.testHelper.TestSoundApplied(
    "TestSoundFrostWard",
    testCategory,
    "frost_ward"
  )
end

function me.TestSoundDownFrostWard()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFrostWard",
    testCategory,
    "frost_ward"
  )
end

function me.TestSoundFrostbolt()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFrostbolt",
    testCategory,
    "frostbolt"
  )
end

function me.TestSoundIceArmor()
  mod.testHelper.TestSoundApplied(
    "TestSoundIceArmor",
    testCategory,
    "ice_armor"
  )
end

function me.TestSoundDownIceArmor()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownIceArmor",
    testCategory,
    "ice_armor"
  )
end

function me.TestSoundIceBlock()
  mod.testHelper.TestSoundApplied(
    "TestSoundIceBlock",
    testCategory,
    "ice_block"
  )
end

function me.TestSoundDownIceBlock()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownIceBlock",
    testCategory,
    "ice_block"
  )
end


function me.TestSoundIceLance()
  mod.testHelper.TestSoundSuccess(
    "TestSoundIceLance",
    testCategory,
    "ice_lance"
  )
end

function me.TestSoundInvisibility()
  mod.testHelper.TestSoundSuccess(
    "TestSoundInvisibility",
    testCategory,
    "invisibility"
  )
end

function me.TestSoundMageArmor()
  mod.testHelper.TestSoundApplied(
    "TestSoundMageArmor",
    testCategory,
    "molten_armor"
  )
end

function me.TestSoundDownMageArmor()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMageArmor",
    testCategory,
    "molten_armor"
  )
end

function me.TestSoundManaShield()
  mod.testHelper.TestSoundApplied(
    "TestSoundManaShield",
    testCategory,
    "mana_shield"
  )
end

function me.TestSoundDownManaShield()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownManaShield",
    testCategory,
    "mana_shield"
  )
end

function me.TestSoundMoltenArmor()
  mod.testHelper.TestSoundApplied(
    "TestSoundMoltenArmor",
    testCategory,
    "molten_armor"
  )
end

function me.TestSoundDownMoltenArmor()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownMoltenArmor",
    testCategory,
    "molten_armor"
  )
end

function me.TestSoundPolymorph()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPolymorph",
    testCategory,
    "polymorph"
  )
end

function me.TestSoundPolymorphPig()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPolymorphPig",
    testCategory,
    "polymorph_pig"
  )
end

function me.TestSoundPolymorphTurtle()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPolymorphTurtle",
    testCategory,
    "polymorph_turtle"
  )
end

function me.TestSoundRemoveLesserCurse()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRemoveLesserCurse",
    testCategory,
    "remove_lesser_curse"
  )
end

function me.TestSoundScorch()
  mod.testHelper.TestSoundSuccess(
    "TestSoundScorch",
    testCategory,
    "scorch"
  )
end

function me.TestSoundSlowFall()
  mod.testHelper.TestSoundApplied(
    "TestSoundSlowFall",
    testCategory,
    "slow_fall"
  )
end

function me.TestSoundDownSlowFall()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownSlowFall",
    testCategory,
    "slow_fall"
  )
end

function me.TestSoundSpellsteal()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSpellsteal",
    testCategory,
    "spellsteal"
  )
end

function me.TestSoundArcanePower()
  mod.testHelper.TestSoundApplied(
    "TestSoundArcanePower",
    testCategory,
    "arcane_power"
  )
end

function me.TestSoundDownArcanePower()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownArcanePower",
    testCategory,
    "arcane_power"
  )
end

function me.TestSoundBlastWave()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBlastWave",
    testCategory,
    "blast_wave"
  )
end

function me.TestSoundColdSnap()
  mod.testHelper.TestSoundSuccess(
    "TestSoundColdSnap",
    testCategory,
    "cold_snap"
  )
end

function me.TestSoundCombustion()
  mod.testHelper.TestSoundApplied(
    "TestSoundCombustion",
    testCategory,
    "combustion"
  )
end

function me.TestSoundDownCombustion()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownCombustion",
    testCategory,
    "combustion"
  )
end

function me.TestSoundDragonsBreath()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDragonsBreath",
    testCategory,
    "dragons_breath"
  )
end

function me.TestSoundIceBarrier()
  mod.testHelper.TestSoundApplied(
    "TestSoundIceBarrier",
    testCategory,
    "ice_barrier"
  )
end

function me.TestSoundDownIceBarrier()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownIceBarrier",
    testCategory,
    "ice_barrier"
  )
end

function me.TestSoundIcyVeins()
  mod.testHelper.TestSoundApplied(
    "TestSoundIcyVeins",
    testCategory,
    "icy_veins"
  )
end

function me.TestSoundDownIcyVeins()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownIcyVeins",
    testCategory,
    "icy_veins"
  )
end

function me.TestSoundPresenceOfMind()
  mod.testHelper.TestSoundApplied(
    "TestSoundPresenceOfMind",
    testCategory,
    "presence_of_mind"
  )
end

function me.TestSoundDownPresenceOfMind()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownPresenceOfMind",
    testCategory,
    "presence_of_mind"
  )
end

function me.TestSoundPyroblast()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPyroblast",
    testCategory,
    "pyroblast"
  )
end

function me.TestSoundSlow()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSlow",
    testCategory,
    "slow"
  )
end

function me.TestSoundSummonWaterElemental()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSummonWaterElemental",
    testCategory,
    "summon_water_elemental"
  )
end
