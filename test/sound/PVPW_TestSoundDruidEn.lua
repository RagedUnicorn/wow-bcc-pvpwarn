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
mod.testSoundDruidEn = me

me.tag = "TestSoundDruidEn"

local testGroupName = "SoundDruidEn"
local testCategory = RGPVPW_CONSTANTS.CATEGORIES.DRUID.id

function me.Test()
  mod.testReporter.StartTestGroup(testGroupName)

  me.CollectTestCases()

  mod.testReporter.PlayTestQueueWithDelay(function()
    mod.testReporter.StopTestGroup() -- asyncron finish of testgroup
  end)
end

function me.CollectTestCases()
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAbolishPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownAbolishPoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundAquaticForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBarkskin)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownBarkskin)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundBearForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCatForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundClaw)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCurePoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownCurePoison)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundCyclone)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownDash)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDemoralizingRoar)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDireBearForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEnrage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownEnrage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundEntanglingRoots)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFaerieFire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFerociousBite)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFlightForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFrenziedRegeneration)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownFrenziedRegeneration)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundGiftOfTheWild)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHealingTouch)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHibernate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundHurricane)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInnervate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownInnervate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLacerate)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundLifebloom)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMaim)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMangleBear)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMangleCat)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMarkOfTheWild)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMoonfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundPounce)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundProwl)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRake)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRavage)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRebirth)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRegrowth)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRejuvenation)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRemoveCurse)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundRip)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundShred)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundStarfire)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSwiftFlightForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSwipe)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundThorns)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownThorns)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTigersFury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownTigersFury)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTranquility)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTravelForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundWrath)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFaerieFireFeral)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundFeralCharge)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundForceOfNature)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundInsectSwarm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundMoonkinForm)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNaturesGrasp)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNaturesGrasp)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundNaturesSwiftness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownNaturesSwiftness)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundOmenOfClarity)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundDownOmenOfClarity)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundSwiftmend)
  mod.testReporter.AddToTestQueueWithDelay(me.TestSoundTreeOfLife)
end

function me.TestSoundAbolishPoison()
  mod.testHelper.TestSoundApplied(
    "TestSoundAbolishPoison",
    testCategory,
    "abolish_poison"
  )
end

function me.TestSoundDownAbolishPoison()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownAbolishPoison",
    testCategory,
    "abolish_poison"
  )
end

function me.TestSoundAquaticForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundAquaticForm",
    testCategory,
    "aquatic_form"
  )
end

function me.TestSoundBarkskin()
  mod.testHelper.TestSoundApplied(
    "TestSoundBarkskin",
    testCategory,
    "barkskin"
  )
end

function me.TestSoundDownBarkskin()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownBarkskin",
    testCategory,
    "barkskin"
  )
end

function me.TestSoundBash()
  mod.testHelper.TestSoundSuccess(
    "TestSoundBash",
    testCategory,
    "bash"
  )
end

function me.TestSoundBearForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundBearForm",
    testCategory,
    "bear_form"
  )
end

function me.TestSoundCatForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundCatForm",
    testCategory,
    "cat_form"
  )
end

function me.TestSoundClaw()
  mod.testHelper.TestSoundSuccess(
    "TestSoundClaw",
    testCategory,
    "claw"
  )
end

function me.TestSoundCurePoison()
  mod.testHelper.TestSoundApplied(
    "TestSoundCurePoison",
    testCategory,
    "cure_poison"
  )
end

function me.TestSoundDownCurePoison()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownCurePoison",
    testCategory,
    "cure_poison"
  )
end

function me.TestSoundCyclone()
  mod.testHelper.TestSoundSuccess(
    "TestSoundCyclone",
    testCategory,
    "cyclone"
  )
end

function me.TestSoundDash()
  mod.testHelper.TestSoundApplied(
    "TestSoundDash",
    testCategory,
    "dash"
  )
end

function me.TestSoundDownDash()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownDash",
    testCategory,
    "dash"
  )
end

function me.TestSoundDemoralizingRoar()
  mod.testHelper.TestSoundSuccess(
    "TestSoundDemoralizingRoar",
    testCategory,
    "demoralizing_roar"
  )
end

function me.TestSoundDireBearForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundDireBearForm",
    testCategory,
    "dire_bear_form"
  )
end

function me.TestSoundEnrage()
  mod.testHelper.TestSoundApplied(
    "TestSoundEnrage",
    testCategory,
    "enrage"
  )
end

function me.TestSoundDownEnrage()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownEnrage",
    testCategory,
    "enrage"
  )
end

function me.TestSoundEntanglingRoots()
  mod.testHelper.TestSoundSuccess(
    "TestSoundEntanglingRoots",
    testCategory,
    "entangling_roots"
  )
end

function me.TestSoundFaerieFire()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFaerieFire",
    testCategory,
    "faerie_fire"
  )
end

function me.TestSoundFerociousBite()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFerociousBite",
    testCategory,
    "ferocious_bite"
  )
end

function me.TestSoundFlightForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundFlightForm",
    testCategory,
    "flight_form"
  )
end

function me.TestSoundFrenziedRegeneration()
  mod.testHelper.TestSoundApplied(
    "TestSoundFrenziedRegeneration",
    testCategory,
    "frenzied_regeneration"
  )
end

function me.TestSoundDownFrenziedRegeneration()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownFrenziedRegeneration",
    testCategory,
    "frenzied_regeneration"
  )
end

function me.TestSoundGiftOfTheWild()
  mod.testHelper.TestSoundSuccess(
    "TestSoundGiftOfTheWild",
    testCategory,
    "gift_of_the_wild"
  )
end

function me.TestSoundHealingTouch()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHealingTouch",
    testCategory,
    "healing_touch"
  )
end

function me.TestSoundHibernate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHibernate",
    testCategory,
    "hibernate"
  )
end

function me.TestSoundHurricane()
  mod.testHelper.TestSoundSuccess(
    "TestSoundHurricane",
    testCategory,
    "hurricane"
  )
end

function me.TestSoundInnervate()
  mod.testHelper.TestSoundApplied(
    "TestSoundInnervate",
    testCategory,
    "innervate"
  )
end

function me.TestSoundDownInnervate()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownInnervate",
    testCategory,
    "innervate"
  )
end

function me.TestSoundLacerate()
  mod.testHelper.TestSoundSuccess(
    "TestSoundLacerate",
    testCategory,
    "lacerate"
  )
end

function me.TestSoundLifebloom()
  mod.testHelper.TestSoundSuccess(
    "TestSoundLifebloom",
    testCategory,
    "lifebloom"
  )
end

function me.TestSoundMaim()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMaim",
    testCategory,
    "maim"
  )
end

function me.TestSoundMangleBear()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMangleBear",
    testCategory,
    "mangle_bear"
  )
end

function me.TestSoundMangleCat()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMangleCat",
    testCategory,
    "mangle_cat"
  )
end

function me.TestSoundMarkOfTheWild()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMarkOfTheWild",
    testCategory,
    "mark_of_the_wild"
  )
end

function me.TestSoundMoonfire()
  mod.testHelper.TestSoundSuccess(
    "TestSoundMoonfire",
    testCategory,
    "moonfire"
  )
end

function me.TestSoundPounce()
  mod.testHelper.TestSoundSuccess(
    "TestSoundPounce",
    testCategory,
    "pounce"
  )
end

function me.TestSoundProwl()
  mod.testHelper.TestSoundSuccess(
    "TestSoundProwl",
    testCategory,
    "prowl"
  )
end

function me.TestSoundRake()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRake",
    testCategory,
    "rake"
  )
end

function me.TestSoundRavage()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRavage",
    testCategory,
    "ravage"
  )
end

function me.TestSoundRebirth()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRebirth",
    testCategory,
    "rebirth"
  )
end

function me.TestSoundRegrowth()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRegrowth",
    testCategory,
    "regrowth"
  )
end

function me.TestSoundRejuvenation()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRejuvenation",
    testCategory,
    "rejuvenation"
  )
end

function me.TestSoundRemoveCurse()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRemoveCurse",
    testCategory,
    "remove_curse"
  )
end

function me.TestSoundRip()
  mod.testHelper.TestSoundSuccess(
    "TestSoundRip",
    testCategory,
    "rip"
  )
end

function me.TestSoundShred()
  mod.testHelper.TestSoundSuccess(
    "TestSoundShred",
    testCategory,
    "shred"
  )
end

function me.TestSoundStarfire()
  mod.testHelper.TestSoundSuccess(
    "TestSoundStarfire",
    testCategory,
    "starfire"
  )
end

function me.TestSoundSwiftFlightForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundSwiftFlightForm",
    testCategory,
    "swift_flight_form"
  )
end

function me.TestSoundSwipe()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSwipe",
    testCategory,
    "swipe"
  )
end

function me.TestSoundThorns()
  mod.testHelper.TestSoundApplied(
    "TestSoundThorns",
    testCategory,
    "thorns"
  )
end

function me.TestSoundDownThorns()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownThorns",
    testCategory,
    "thorns"
  )
end

function me.TestSoundTigersFury()
  mod.testHelper.TestSoundApplied(
    "TestSoundTigersFury",
    testCategory,
    "tigers_fury"
  )
end

function me.TestSoundDownTigersFury()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownTigersFury",
    testCategory,
    "tigers_fury"
  )
end

function me.TestSoundTranquility()
  mod.testHelper.TestSoundSuccess(
    "TestSoundTranquility",
    testCategory,
    "tranquility"
  )
end

function me.TestSoundTravelForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundTravelForm",
    testCategory,
    "travel_form"
  )
end

function me.TestSoundWrath()
  mod.testHelper.TestSoundSuccess(
    "TestSoundWrath",
    testCategory,
    "wrath"
  )
end

function me.TestSoundFaerieFireFeral()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFaerieFireFeral",
    testCategory,
    "faerie_fire_feral"
  )
end

function me.TestSoundFeralCharge()
  mod.testHelper.TestSoundSuccess(
    "TestSoundFeralCharge",
    testCategory,
    "feral_charge"
  )
end

function me.TestSoundForceOfNature()
  mod.testHelper.TestSoundSuccess(
    "TestSoundForceOfNature",
    testCategory,
    "force_of_nature"
  )
end

function me.TestSoundInsectSwarm()
  mod.testHelper.TestSoundSuccess(
    "TestSoundInsectSwarm",
    testCategory,
    "insect_swarm"
  )
end

function me.TestSoundMoonkinForm()
  mod.testHelper.TestSoundApplied(
    "TestSoundMoonkinForm",
    testCategory,
    "moonkin_form"
  )
end

function me.TestSoundNaturesGrasp()
  mod.testHelper.TestSoundApplied(
    "TestSoundNaturesGrasp",
    testCategory,
    "natures_grasp"
  )
end

function me.TestSoundDownNaturesGrasp()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNaturesGrasp",
    testCategory,
    "natures_grasp"
  )
end

function me.TestSoundNaturesSwiftness()
  mod.testHelper.TestSoundApplied(
    "TestSoundNaturesSwiftness",
    testCategory,
    "natures_swiftness"
  )
end

function me.TestSoundDownNaturesSwiftness()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownNaturesSwiftness",
    testCategory,
    "natures_swiftness"
  )
end

function me.TestSoundOmenOfClarity()
  mod.testHelper.TestSoundApplied(
    "TestSoundOmenOfClarity",
    testCategory,
    "omen_of_clarity"
  )
end

function me.TestSoundDownOmenOfClarity()
  mod.testHelper.TestSoundRemoved(
    "TestSoundDownOmenOfClarity",
    testCategory,
    "omen_of_clarity"
  )
end

function me.TestSoundSwiftmend()
  mod.testHelper.TestSoundSuccess(
    "TestSoundSwiftmend",
    testCategory,
    "swiftmend"
  )
end

function me.TestSoundTreeOfLife()
  mod.testHelper.TestSoundApplied(
    "TestSoundTreeOfLife",
    testCategory,
    "tree_of_life"
  )
end
