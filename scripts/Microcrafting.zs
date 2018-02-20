import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.Worktable;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

print("--------------------------Microcrafting Start-------------------------");

function makeBeamRecipe(output as IItemStack, core as IIngredient, support as IIngredient) {
  recipes.addShaped(output, [
    [null, support, core],
    [support, core, support],
    [core, support, null]]);
}
  #Reinforced Stone Beam
makeBeamRecipe(<contenttweaker:material_part:68>, <ore:rodReinforcedStone>, <ore:itemRubber>);
print("--------------------------Beam Recipes Intialized -------------------------");

function makeBoltRecipe(output as IItemStack, input as IIngredient) {
  recipes.addShaped(output, [
    [input],
    [input]]);
}

  #Iron Bolt
makeBoltRecipe(boltIron*4, <ore:stickIron>);
  #Steel Bolt
makeBoltRecipe(boltSteel*4, <ore:stickSteel>);
  #Wood Bolt
makeBoltRecipe(boltWood*4, <ore:stickWood>);
print("--------------------------Bolt Recipes Intialized -------------------------");

function makeBlockCraftRecipe(output as IItemStack, input as IIngredient){
  recipes.addShaped(output, [
  [input, input, input],
  [input, input, input],
  [input, input, input]]);
}

  #Reinforced Stone Block
makeBlockCraftRecipe(blockReinforcedStone, ingotReinforcedStone);
mods.forestry.Carpenter.addRecipe(blockReinforcedStone, [
  [null, <minecraft:clay>, null],
  [<skyresources:techitemcomponent>, <minecraft:brick_block>, <skyresources:techitemcomponent>],
  [null, <minecraft:sandstone>, null]
  ], 20, <liquid:lava>*100);


print("--------------------------Block Recipes Intialized -------------------------");

print("--------------------------Casing Recipes Intialized -------------------------");
  #Ethylene - from Naphtha
mods.forestry.Still.addRecipe(<liquid:liquidethene>*150, <liquid:refined_oil>*300, 100);
mods.thermalexpansion.Refinery.addRecipe(<liquid:liquidethene>*150, null, <liquid:refined_oil>*300, 10000);
  #Hydrogen Sulfide
mods.nuclearcraft.chemical_reactor.addRecipe(<liquid:sulfur>*100, <liquid:hydrogen>*100, <liquid:hydrogen_sulfide>*50, <liquid:hydrogen_sulfide>*50, 100);
  #Molten Plastic
mods.nuclearcraft.chemical_reactor.addRecipe(<liquid:sulfuric_acid>*200, <liquid:polyethylene>*200, <liquid:plastic>*200, <liquid:diluted_sulfuric_acid>*200, 100);
  #Polyethylene - from Ethylene
mods.forestry.Still.addRecipe(<liquid:polyethylene>*150, <liquid:liquidethene>*300, 100);
mods.thermalexpansion.Refinery.addRecipe(<liquid:polyethylene>*150, null, <liquid:liquidethene>*300, 10000);
  #Polyethylene - Ethanol
mods.nuclearcraft.chemical_reactor.addRecipe(<liquid:ethanol>*100, <liquid:sulfuric_acid>*100, <liquid:polyethylene>*150, <liquid:diluted_sulfuric_acid>*500, 100);
  #Sulfuric Acid from Diluted
mods.forestry.Still.addRecipe(<liquid:sulfuric_acid>*100, <liquid:diluted_sulfuric_acid>*300, 100);
mods.thermalexpansion.Refinery.addRecipe(<liquid:sulfuric_acid>*100, null, <liquid:diluted_sulfuric_acid>*300, 10000);
  #Sulfuric Acid from Hydrogen Sulfide
mods.nuclearcraft.chemical_reactor.addRecipe(<liquid:water>*100, <liquid:hydrogen_sulfide>*100, <liquid:sulfuric_acid>*50, <liquid:sulfuric_acid>*50, 100);
  #Sulfur Dioxide
mods.nuclearcraft.chemical_reactor.addRecipe(<liquid:hydrogen_sulfide>*100, <liquid:oxygen>*200, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 100);
  #Sulfur

print("--------------------------Chemical Recipes Intialized -------------------------");

print("--------------------------Crystal Recipes Intialized -------------------------");

print("--------------------------Dense Plate Recipes Intialized -------------------------");

  #Aluminum Dust
recipes.remove(dustAluminum);
  #Copper Dust
recipes.remove(dustCopper);
print("--------------------------Dust Recipes Intialized -------------------------");

print("--------------------------Foil Recipes Intialized -------------------------");

function makeGearCraftRecipe(output as IItemStack, input1 as IIngredient, input2 as IIngredient) {
  Worktable.addRecipeShaped( "basic", output, <ore:toolHammer>, 4, false, [
    [input2, input1, input2],
    [input1, <ore:gearWood>, input1],
    [input2, input1, input2]]);
}

function makeGearCastingRecipe(output as IItemStack, cast as IItemStack, molten as ILiquidStack) {
  mods.tconstruct.Casting.addTableRecipe(output, cast, molten, 1152, true);
}

  # Removes all recipes of a gear from different mods and crafting grids
  # When modtweaker updates, we can clean Compactor Gear Recipes.
function cleanGearRecipes(gear as IItemStack) {
  recipes.remove(gear);
  mods.tconstruct.Casting.removeTableRecipe(gear);
  mods.immersiveengineering.MetalPress.removeRecipe(gear);
}

  #Abyssalnite Gear
cleanGearRecipes(gearAbyssalnite);
makeGearCraftRecipe(gearAbyssalnite, <ore:ingotAbyssalnite>, <ore:stickAbyssalnite>);
makeGearCastingRecipe(gearAbyssalnite, gearWood, <liquid:moltenabyssalnite>);

  #Aluminum Gear
cleanGearRecipes(gearAluminum);
makeGearCastingRecipe(gearAluminum, gearWood, <liquid:aluminum>);
makeGearCraftRecipe(gearAluminum, <ore:ingotAluminum>, <ore:stickAluminum>);

  #Bronze
cleanGearRecipes(gearBronze);
makeGearCastingRecipe(gearBronze, gearWood, <liquid:bronze>);
makeGearCraftRecipe(gearBronze, <ore:ingotBronze>, <ore:stickBronze>);

  #Copper Gear
cleanGearRecipes(gearCopper);
makeGearCastingRecipe(gearCopper, gearWood, <liquid:copper>);
makeGearCraftRecipe(gearCopper, <ore:ingotCopper>, <ore:stickAbyssalnite>); 

  #Diamond Gear
cleanGearRecipes(gearDiamond);
makeGearCraftRecipe(gearDiamond, <ore:diamond>, null);

  #Electrum Gear
cleanGearRecipes(gearElectrum);
makeGearCastingRecipe(gearElectrum, gearWood, <liquid:electrum>);
makeGearCraftRecipe(gearElectrum, <ore:ingotElectrum>, stickFluxInfused);

  #Enderium Gear
cleanGearRecipes(gearEnderium);
makeGearCastingRecipe(gearEnderium, gearGold, <liquid:enderium>);
makeGearCraftRecipe(gearEnderium, <ore:ingotEnderium>, stickFluxInfused);

  #Fluxed Electrum Gear
cleanGearRecipes(gearFluxedElectrum);
makeGearCastingRecipe(gearFluxedElectrum, gearGold, <liquid:electrumflux>);
makeGearCraftRecipe(gearFluxedElectrum, <ore:ingotFluxedElectrum>, stickFluxInfused);

  #Gold Gear
cleanGearRecipes(gearGold);
makeGearCastingRecipe(gearGold, gearWood, <liquid:gold>);
makeGearCraftRecipe(gearGold, <ore:ingotGold>, <ore:stickGold>);

  #Invar Gear
cleanGearRecipes(gearInvar);
makeGearCastingRecipe(gearInvar, gearWood, <liquid:invar>);
makeGearCraftRecipe(gearInvar, <ore:ingotInvar>, <ore:stickIron>);

  #Iridium Gear
cleanGearRecipes(gearIridium);
makeGearCastingRecipe(gearIridium, gearGold, <liquid:iridium>);
makeGearCraftRecipe(gearIridium, <ore:plateIridium>, stickFluxInfused);

  #Lumium Gear

  #Nickel Gear

  #Platinum Gear
cleanGearRecipes(gearPlatinum);
makeGearCastingRecipe(gearPlatinum, gearGold, <liquid:platinum>);
makeGearCraftRecipe(gearPlatinum, <ore:ingotPlatinum>, stickFluxInfused);

  #Iron Gear
cleanGearRecipes(gearIron);
makeGearCastingRecipe(gearIron, gearWood, <liquid:iron>);
makeGearCraftRecipe(gearIron, <ore:ingotIron>, <ore:stickIron>);

  #Mana Infused
cleanGearRecipes(gearMithril);
makeGearCastingRecipe(gearMithril, gearGold, <liquid:manasteel>);
makeGearCraftRecipe(gearMithril, <ore:ingotManasteel>, <ore:ingotManasteel>);

  #Redstone
cleanGearRecipes(gearRedstone);
makeGearCastingRecipe(gearRedstone, gearWood, <liquid:redstone>);
makeGearCraftRecipe(gearRedstone, <ore:blockRedstone>, <ore:stickRedstone>);

  #Reinforced Stone Gear
cleanGearRecipes(gearReinforcedStone);
makeGearCastingRecipe(gearReinforcedStone, gearWood, <liquid:reinforced_stone>);
makeGearCraftRecipe(gearReinforcedStone, <ore:ingotReinforcedStone>, <ore:stickReinforcedStone>);

  #Steel Gear
cleanGearRecipes(gearSteel);
makeGearCastingRecipe(gearSteel, gearWood, <liquid:steel>);
makeGearCraftRecipe(gearSteel, <ore:ingotSteel>, <ore:stickSteel>);

  #Signalum Gear
cleanGearRecipes(gearSignalum);
makeGearCastingRecipe(gearSignalum, gearGold, <liquid:signalum>);
makeGearCraftRecipe(gearSignalum, <ore:ingotSignalum>, <thermalfoundation:material:514>);

  #Stone Gear
cleanGearRecipes(gearStone);
makeGearCraftRecipe(gearStone, <ore:stone>, null);

  #Tin Gear
cleanGearRecipes(gearTin);
makeGearCastingRecipe(gearTin, gearWood, <liquid:tin>);
makeGearCraftRecipe(gearTin, <ore:ingotTin>, <ore:stickTin>); 

  #Wood Gearr
recipes.addShaped(gearWood, [
  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
  [<ore:plankWood>, null, <ore:plankWood>],
  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]]);
print("--------------------------Gear Recipes Intialized -------------------------");

function cleanIngotRecipes(output as IItemStack) {
  mods.tconstruct.Casting.removeTableRecipe(output);
}

function makeBlockToIngotRecipe(output as IItemStack, input as IIngredient){
  recipes.addShapeless(output*9, [input]);
}
function makeNuggetToIngotRecipe(output as IItemStack, input as IIngredient){
  recipes.addShapeless(output, 
    [input, input, input, input, input, input, input, input, input]);
}
  
  #Bronze Ingot

  #Refined Iron
cleanIngotRecipes(ingotRefinedIron);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.addRecipe(ingotRefinedIron, <minecraft:iron_ingot>, <minecraft:iron_ingot>, 10000);


  #Reinforced Stone
makeBlockToIngotRecipe(ingotReinforcedStone, <ore:blockReinforcedStone>);
makeNuggetToIngotRecipe(ingotReinforcedStone, <ore:nuggetReinforcedStone>);

print("--------------------------Ingot Recipes Intialized -------------------------");

function cleanMoltenRecipes(output as ILiquidStack, input as IItemStack){
  mods.thermalexpansion.Crucible.removeRecipe(input);
  mods.tconstruct.Melting.removeRecipe(output);
}

function makeMoltenRecipes(input as string, output as ILiquidStack) {
  var meltReference = {
    "stick" : 72,
    "ring" : 72,
    "ingot" : 144,
    "block" : 1296,
    "nugget" : 16,
    "plate" : 144, 
    "gear" : 576,
    "dust" : 144,
    "foil" : 72,
    "beam" : 288,
    "casing" : 72,
    "bolt" : 36
  } as int[string];

  for key, value in meltReference {
    var odName as string = key~input;
    var solidItem = oreDict.get(odName);
    for item in solidItem.items{
      mods.tconstruct.Melting.addRecipe(output*value, item);
    }
  }
}

  #Tinkers Smeltery
//  mods.tconstruct.Melting.addRecipe(output, input);
  #Thermal Expansion Magma Crucible
//  mods.thermalexpansion.Crucible.addRecipe(output, input, 5000);
  #NuclearCraft Melter
//  mods.nuclearcraft.melter.addRecipe(input, output, int processTime)

  #Molten Aluminum
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>);

  #Molten Bronze
mods.tconstruct.Melting.addRecipe(<liquid:bronze>*1152, <iceandfire:dragonscales_bronze>);

  #Molten Iron
mods.tconstruct.Melting.addRecipe(<liquid:iron>*1152, <iceandfire:dragonscales_gray>);
  #Molten Rubber - Rubber
mods.thermalexpansion.Crucible.addRecipe(<liquid:rubber>*144, <ic2:crafting>, 5000);
mods.tconstruct.Melting.addRecipe(<liquid:rubber>*144, <ic2:crafting>);
mods.nuclearcraft.melter.addRecipe(<ic2:crafting>, <liquid:rubber>*144, 800);
  #Molten Rubber - Rubber Dust
mods.thermalexpansion.Crucible.addRecipe(<liquid:rubber>*144, dustRubber, 5000);
mods.tconstruct.Melting.addRecipe(<liquid:rubber>*144, dustRubber);
mods.nuclearcraft.melter.addRecipe(dustRubber, <liquid:rubber>*144, 800);
  #Molten Seared Stone
mods.tconstruct.Melting.addRecipe(<fluid:stone>*1296, <extrautils2:compressedcobblestone>);
  #Molten Steel
mods.tconstruct.Melting.removeRecipe(<liquid:steel>);
makeMoltenRecipes("Steel", <liquid:steel>);
print("--------------------------Molten Recipes Intialized -------------------------");

function makeIngotToNuggetRecipe(output as IItemStack, input as IIngredient){
  recipes.addShapeless(output*9, 
    [input]);
}
makeIngotToNuggetRecipe(nuggetReinforcedStone, <ore:ingotReinforcedStone>);
print("--------------------------Nugget Recipes Intialized -------------------------");

  #Removing Plate Recipes
function cleanPlateRecipes(plate as IItemStack) {
  mods.nuclearcraft.pressurizer.removeRecipe(plate);
  mods.techreborn.compressor.removeRecipe(plate);
}

  #Hammer Shapeless Recipes
function makeHammerPlate(plate as IItemStack, ingot as IIngredient) {
  Worktable.addRecipeShapeless("basic", plate, <ore:toolHammer>, 1, 
    [ingot, ingot, ingot, ingot]);}
  #Squeezer Plate Recipes
function makeSqueezerPlateRecipe(plate as IItemStack, ingot as IItemStack) {
  mods.integrateddynamics.Squeezer.addRecipe(ingot, plate, 1 as float);}
function makeMetalPressPlateRecipe(plate as IItemStack, input as IIngredient, energy as int) {
  mods.immersiveengineering.MetalPress.addRecipe(plate, input, <immersiveengineering:mold>, energy);
}

  #Abyssalnite Plates
makeHammerPlate(plateAbyssalnite, <ore:ingotAbyssalnite>);
makeSqueezerPlateRecipe(plateAbyssalnite, <abyssalcraft:abyingot>);
  #Aluminum Plates
makeHammerPlate(plateAluminum, <ore:ingotAluminum>);
makeHammerPlate(plateAluminum, <ore:ingotAluminium>);
makeSqueezerPlateRecipe(plateAluminum, ingotAluminium);
makeSqueezerPlateRecipe(plateAluminum, ingotAluminum);
  #Brass Plate
makeHammerPlate(plateBrass, <ore:ingotBrass>);
makeSqueezerPlateRecipe(plateBrass, ingotBrass);
  #Bronze Plates
makeHammerPlate(plateBronze, <ore:ingotBronze>);
makeSqueezerPlateRecipe(plateBronze, ingotBronze);
  #Copper Plates
makeHammerPlate(plateCopper, <ore:ingotCopper>);
makeSqueezerPlateRecipe(plateCopper, ingotCopper);
  #Constantan Plates
makeHammerPlate(plateConstantan, <ore:ingotConstantan>);
makeSqueezerPlateRecipe(plateConstantan, ingotConstantan);
  #Enderium Plates
makeHammerPlate(plateEnderium, <ore:ingotEnderium>);
makeSqueezerPlateRecipe(plateEnderium, ingotEnderium);
  #Electrum Plates
makeHammerPlate(plateElectrum, <ore:ingotElectrum>);
makeSqueezerPlateRecipe(plateElectrum, ingotElectrum);
  #Gold Plates
makeHammerPlate(plateGold,  <ore:ingotGold>);
makeSqueezerPlateRecipe(plateGold, <minecraft:gold_ingot>);
  #Invar Plates
makeHammerPlate(plateInvar, <ore:ingotInvar>);
makeSqueezerPlateRecipe(plateInvar, ingotInvar);
  #Iridium PLates
makeHammerPlate(plateIridium, <ore:ingotIridium>);
makeSqueezerPlateRecipe(plateIridium, ingotIridium);
  #Iron Plates
makeHammerPlate(plateIron,  <ore:ingotIron>);
makeSqueezerPlateRecipe(plateIron, <minecraft:iron_ingot>);
  #Lapis Plate
makeHammerPlate(plateLapis,  <minecraft:lapis_block>);
makeSqueezerPlateRecipe(plateLapis, <minecraft:lapis_block>);
  #Lead Plates
makeHammerPlate(plateLead, <ore:ingotLead>);
makeSqueezerPlateRecipe(plateLead, ingotLead);
  #Lumium Plates
makeHammerPlate(plateLumium, <ore:ingotLumium>);
makeSqueezerPlateRecipe(plateLumium, ingotLumium);
  #Mithril Plates
makeHammerPlate(plateMithril, <ore:ingotMithril>);
makeSqueezerPlateRecipe(plateMithril, ingotMithril);
  #Nickel Plates
makeHammerPlate(plateNickel, <ore:ingotNickel>);
makeSqueezerPlateRecipe(plateNickel, ingotNickel);
  #Platinum PLates
makeHammerPlate(platePlatinum, <ore:ingotPlatinum>);
makeSqueezerPlateRecipe(platePlatinum, ingotPlatinum);
  #Redstone Plate
mods.techreborn.compressor.removeRecipe(<techreborn:plates:4>);
mods.thermalexpansion.Compactor.removePressRecipe(<extrautils2:ingredients>);
mods.thermalexpansion.Compactor.removePressRecipe(<minecraft:redstone_block>);
makeHammerPlate(plateRedstone, <minecraft:redstone_block>);
makeSqueezerPlateRecipe(plateRedstone, <minecraft:redstone_block>);
makeMetalPressPlateRecipe(plateRedstone, <minecraft:redstone_block>, 3200);
mods.thermalexpansion.Compactor.addPressRecipe(plateRedstone, <minecraft:redstone_block>, 30000);
   #Refined Iron Plates
mods.nuclearcraft.pressurizer.removeRecipe(<techreborn:plates:34>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:34>);
mods.thermalexpansion.Compactor.removePressRecipe(ingotRefinedIron);
makeHammerPlate(plateRefinedIron, <ore:ingotRefinedIron>);
makeSqueezerPlateRecipe(plateRefinedIron, ingotRefinedIron);
  #Reinforced Stone Plates
makeHammerPlate(plateReinforcedStone, ingotReinforcedStone);
makeSqueezerPlateRecipe(plateReinforcedStone, ingotReinforcedStone);
  #Rubber Plates
makeHammerPlate(plateRubber, <ore:itemRubber>);
makeSqueezerPlateRecipe(plateRubber, <ic2:crafting>);
  #Tin Plates
makeHammerPlate(plateTin, <ore:ingotTin>);
makeSqueezerPlateRecipe(plateTin, ingotTin);
  #Steel Plates
makeHammerPlate(plateSteel, <ore:ingotSteel>);
makeSqueezerPlateRecipe(plateSteel, ingotSteel);
  #Signalum Plates
makeHammerPlate(plateSignalum, <ore:ingotSignalum>);
makeSqueezerPlateRecipe(plateSignalum, ingotSignalum);
  #Silver Plates
makeHammerPlate(plateSilver, <ore:ingotSilver>);
makeSqueezerPlateRecipe(plateSilver, ingotSilver);

print("--------------------------Plate Recipes Intialized -------------------------");

  #Rings
function makeRingCraftRecipe(output as IItemStack, input as IOreDictEntry) {
  recipes.addShaped(output*4, [
    [input, input, input],
    [input, null, input],
    [input, input, input]]);
}
  #Copper Ring
makeRingCraftRecipe(ringCopper, <ore:ingotCopper>);
  #Iron Ring
makeRingCraftRecipe(ringIron, <ore:ingotIron>);
  #Steel Ring
makeRingCraftRecipe(ringSteel, <ore:ingotSteel>);
  #Rubber Ring
makeRingCraftRecipe(ringRubber, <ore:itemRubber>);

print("--------------------------Ring Recipes Intialized -------------------------");

function makeStickCraftRecipe(output as IItemStack, input as IIngredient){
  recipes.addShaped(output, [
    [input],
    [input]]);
}

function makeStickWorktableRecipe(output as IItemStack, input as IIngredient) {
  Worktable.createRecipeBuilder("basic")
  .setShaped([[input],[input]])
  .addTool(<ore:blacksmiths_cutters>, 5)
  .setFluid(<fluid:lava>*125)
  .addOutput(output)
  .create();
}

  #Abyssalnite Rod
makeStickCraftRecipe(<contenttweaker:material_part:3>, <ore:ingotAbyssalnite>);
  #Copper Rod
makeStickCraftRecipe(<contenttweaker:material_part:24>, <ore:ingotCopper>);
  #Iron Rod
makeStickCraftRecipe(stickIron, <ore:ingotIron>);
makeStickWorktableRecipe(stickIron*2, <ore:ingotIron>);
  #Redstone Rod
makeStickCraftRecipe(stickRedstone*4, <minecraft:redstone_block>);
  #Reinforced Stone Rod
makeStickCraftRecipe(stickReinforcedStone*2, <ore:ingotReinforcedStone>);
makeStickWorktableRecipe(stickReinforcedStone*4, <ore:ingotReinforcedStone>);
  #Refined Iron Rod
makeStickCraftRecipe(stickRefinedIron, <ore:ingotRefinedIron>);
makeStickWorktableRecipe(stickRefinedIron, <ore:ingotRefinedIron>);
  #Steel Rod
recipes.removeByRegex("immersiveengineering:material/stick_steel");
makeStickCraftRecipe(stickSteel, <ore:ingotSteel>);

print("--------------------------Rod/Stick Recipes Intialized -------------------------");
function makeRotorCraftRecipe(output as IItemStack, primary as IIngredient, core as IIngredient) {
  recipes.addShaped(output, [
    [null, primary, null],
    [primary, core, primary],
    [null, primary, null]]);
}

  #Steel Rotor
makeRotorCraftRecipe(rotorSteel, plateSteel, ringSteel);

print("--------------------------Rotor Recipes Intialized -------------------------");

	#Impure Smelting
var nuggetAmt = 6;
furnace.addRecipe(<thermalfoundation:material:195>*nuggetAmt,  <contenttweaker:impuredustlead>);
furnace.addRecipe(<thermalfoundation:material:194>*nuggetAmt,  <contenttweaker:impuredustsilver>);
furnace.addRecipe(<minecraft:gold_nugget>*nuggetAmt,           <contenttweaker:impuredustgold>);
furnace.addRecipe(<abyssalcraft:ingotnugget>*nuggetAmt,        <contenttweaker:impuredustabyssalnite>);
furnace.addRecipe(<thermalfoundation:material:192>*nuggetAmt,  <contenttweaker:impuredustcopper>);
furnace.addRecipe(<thermalfoundation:material:193>*nuggetAmt,  <contenttweaker:impuredusttin>);
furnace.addRecipe(<minecraft:iron_nugget>*nuggetAmt,           <contenttweaker:impuredustiron>);
furnace.addRecipe(<techreborn:nuggets:18>*nuggetAmt,           <contenttweaker:impuredustzinc>);

	#Impure Ores
function makeImpureOreCraftRecipe(dust as IItemStack, ore as IIngredient) {
  Worktable.addRecipeShapeless("basic", dust, <ore:toolHammer>, 1, 
    [ore]);}

makeImpureOreCraftRecipe(<contenttweaker:impuredustabyssalnite>, <ore:oreAbyssalnite>);
makeImpureOreCraftRecipe(<contenttweaker:impuredustgold>, <ore:oreGold>);
makeImpureOreCraftRecipe(<contenttweaker:impuredustiron>, <ore:oreIron>);
makeImpureOreCraftRecipe(<contenttweaker:impuredustzinc>, <ore:oreZinc>);
makeImpureOreCraftRecipe(<contenttweaker:impuredustcopper>, <ore:oreCopper>);
makeImpureOreCraftRecipe(<contenttweaker:impuredusttin>, <ore:oreTin>);


print("--------------------------Impure Recipes Intialized -------------------------");


print("-------------------------- Recipes Intialized -------------------------");
