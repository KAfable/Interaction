import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Compactor;

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
makeBoltRecipe(<contenttweaker:material_part:103>*4, <ore:stick>);
  #Steel Bolt
makeBoltRecipe(<contenttweaker:material_part:103>*4, <ore:stick>);
  #Wood Bolt
makeBoltRecipe(<contenttweaker:material_part:103>*4, <ore:stick>);
print("--------------------------Bolt Recipes Intialized -------------------------");

function makeBlockCraftRecipe(output as IItemStack, input as IIngredient){
  recipes.addShaped(output, [
  [input, input, input],
  [input, input, input],
  [input, input, input]]);
}

makeBlockCraftRecipe(blockReinforcedStone, ingotReinforcedStone);


print("--------------------------Block Recipes Intialized -------------------------");

print("--------------------------Casing Recipes Intialized -------------------------");

print("--------------------------Crystal Recipes Intialized -------------------------");

print("--------------------------Dense_Plate Recipes Intialized -------------------------");

print("--------------------------Foil Recipes Intialized -------------------------");

function makeGearCraftRecipe(output as IItemStack, input1 as IIngredient, input2 as IIngredient) {
  recipes.addShaped(output, [
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

function makeBlockToIngotRecipe(output as IItemStack, input as IIngredient){
  recipes.addShaped(output*9, [
    [input, input, input],
    [input, input, input],
    [input, input, input]]);
}
function makeNuggetToIngotRecipe(output as IItemStack, input as IIngredient){
  recipes.addShapeless(output, 
    [input, input, input, input, input, input, input, input, input]);
}
  #Reinforced Stone
makeBlockToIngotRecipe(ingotReinforcedStone, <ore:blockReinforcedStone>);
makeNuggetToIngotRecipe(ingotReinforcedStone, <ore:nuggetReinforcedStone>);

print("--------------------------Ingot Recipes Intialized -------------------------");
function makeIngotToNuggetRecipe(output as IItemStack, input as IIngredient){
  recipes.addShapeless(output*9, 
    [input]);
}
makeIngotToNuggetRecipe(nuggetReinforcedStone, <ore:ingotReinforcedStone>);


print("--------------------------Nugget Recipes Intialized -------------------------");

  #Hammer Shapeless Recipes
function makeHammerPlate(plate as IItemStack, ingot as IIngredient) {
  recipes.addShapeless(plate, [ingot, ingot, ingot, ingot, <ore:toolHammer>]);}
  #Squeezer Plate Recipes
function makeSqueezerPlateRecipe(plate as IItemStack, ingot as IItemStack) {
  mods.integrateddynamics.Squeezer.addRecipe(ingot, plate, null);}

  #Abyssalnite Plates
makeHammerPlate(plateAbyssalnite, <ore:ingotAbyssalnite>);
makeSqueezerPlateRecipe(<abyssalcraft:abyingot>, plateAbyssalnite);
  #Aluminum Plates
makeHammerPlate(plateAluminum, <ore:ingotAluminum>);
makeHammerPlate(plateAluminum, <ore:ingotAluminium>);
makeSqueezerPlateRecipe(plateAluminum, ingotAluminium);
makeSqueezerPlateRecipe(plateAluminum, ingotAluminum);
  #Brass Plate
makeHammerPlate(plateBrass, <ore:ingotBrass>);
makeSqueezerPlateRecipe(ingotBrass, plateBrass);
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
makeHammerPlate(plateRedstone, <minecraft:redstone_block>);
makeSqueezerPlateRecipe(plateRedstone, <minecraft:redstone_block>);
  #Reinforced Stone Plates
makeHammerPlate(plateReinforcedStone, ingotReinforcedStone);
makeSqueezerPlateRecipe(plateReinforcedStone, ingotReinforcedStone);
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

print("--------------------------Ring Recipes Intialized -------------------------");

function makeStickRecipe(output as IItemStack, input as IIngredient){
  recipes.addShaped(output, [
    [input],
    [input]]);
}

  #Copper Rod
makeStickRecipe(<contenttweaker:material_part:24>, <ore:ingotCopper>);
  #Reinforced Stone Rod
makeStickRecipe(<contenttweaker:material_part:73>, <ore:ingotReinforcedStone>);
  #Refined Iron Rod
makeStickRecipe(rodRefinedIron, <ore:ingotRefinedIron>);  
  #Steel Rod
recipes.removeByRecipeName("immersiveengineering:material/stick_steel");
makeStickRecipe(stickSteel, <ore:ingotSteel>);

print("--------------------------Rod/Stick Recipes Intialized -------------------------");

print("--------------------------Rotor Recipes Intialized -------------------------");

	#Impure Smelting
var configOreAmount = 6;
furnace.addRecipe(<thermalfoundation:material:195>*configOreAmount,  <contenttweaker:impuredustlead>);
furnace.addRecipe(<thermalfoundation:material:194>*configOreAmount,  <contenttweaker:impuredustsilver>);
furnace.addRecipe(<minecraft:gold_nugget>*configOreAmount,           <contenttweaker:impuredustgold>);
furnace.addRecipe(<abyssalcraft:ingotnugget>*configOreAmount,        <contenttweaker:impuredustabyssalnite>);
furnace.addRecipe(<thermalfoundation:material:192>*configOreAmount,  <contenttweaker:impuredustcopper>);
furnace.addRecipe(<thermalfoundation:material:193>*configOreAmount,  <contenttweaker:impuredusttin>);
furnace.addRecipe(<minecraft:iron_nugget>*configOreAmount,           <contenttweaker:impuredustiron>);
furnace.addRecipe(<techreborn:nuggets:18>*configOreAmount,           <contenttweaker:impuredustzinc>);
furnace.addRecipe(<thermalfoundation:material:196>*configOreAmount,  <contenttweaker:impuredustbauxite>);

	#Impure Hammer Crushing
recipes.addShapeless(<contenttweaker:impuredustlead>,        [<ore:oreLead>,        <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredustsilver>,      [<ore:oreSilver>,      <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredustgold>,        [<ore:oreGold>,        <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredustabyssalnite>, [<ore:oreAbyssalnite>, <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredustcopper>,      [<ore:oreCopper>,      <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredusttin>,         [<ore:oreTin>,         <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredustiron>,        [<ore:oreIron>,        <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredustzinc>,        [<ore:oreZinc>,        <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:impuredustbauxite>,     [<ore:oreAluminum>,    <ore:toolHammer>]);


