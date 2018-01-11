import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

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

print("--------------------------Casing Recipes Intialized -------------------------");

print("--------------------------Crystal Recipes Intialized -------------------------");

print("--------------------------Dense_Plate Recipes Intialized -------------------------");

print("--------------------------Foil Recipes Intialized -------------------------");

function makeGearRecipe(output as IItemStack, input1 as IIngredient, input2 as IIngredient) {
  recipes.addShaped(output, [
    [input2, input1, input2],
    [input1, <ore:gearWood>, input1],
    [input2, input1, input2]]);
}
  #Abyssalnite Gear
makeGearRecipe(gearAbyssalnite, <ore:ingotAbyssalnite>, <ore:stickAbyssalnite>);
  #Aluminum Gear
makeGearRecipe(gearAluminum, <ore:ingotAluminum>, <ore:stickAluminum>);
  #Copper Gear
makeGearRecipe(gearCopper, <ore:ingotCopper>, <ore:stickAbyssalnite>); 
  #Tin Gear
makeGearRecipe(gearTin, <ore:ingotTin>, <ore:stickTin>); 
  #Iron Gear
makeGearRecipe(gearIron, <ore:ingotIron>, <ore:stickIron>);
  #Reinforced Stone Gear
makeGearRecipe(gearReinforcedStone, <ore:ingotReinforcedStone>, <ore:stickReinforcedStone>);
  #Steel Gear
makeGearRecipe(gearSteel, <ore:ingotSteel>, <ore:stickSteel>); 
  #Stone Gear
recipes.remove(gearStone);
makeGearRecipe(gearStone, <ore:stone>, null); 
  #Wood Gear
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

print("--------------------------Plate Recipes Intialized -------------------------");

print("--------------------------Ring Recipes Intialized -------------------------");

function makeStickRecipe(output as IItemStack, input as IIngredient){
  recipes.addShaped(output, [
    [input],
    [input]]);
}
  #Reinforced Stone Rod
makeStickRecipe(<contenttweaker:material_part:73>, <ore:ingotReinforcedStone>);
print("--------------------------Rod/Stick Recipes Intialized -------------------------");

print("--------------------------Rotor Recipes Intialized -------------------------");

recipes.addShaped(<contenttweaker:material_part:37>, [
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>],
  [<ore:ingotReinforcedStone>, <ore:toolHammer>.onlyDamageAtLeast(0), <ore:ingotReinforcedStone>],
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>]]);
recipes.addShaped(<contenttweaker:material_part:37>, [
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>],
  [<ore:ingotReinforcedStone>, <ore:gearStone>, <ore:ingotReinforcedStone>],
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>]]);

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

	#Hammer Shapeless Recipes
function makeHammerPlate(plate as IItemStack, ingot as IIngredient) {
  recipes.addShapeless(plate, [ingot, ingot, ingot, ingot, <ore:toolHammer>]);}

makeHammerPlate(<techreborn:plates:17>,           <ore:ingotBrass>);
makeHammerPlate(<thermalfoundation:material:32>,  <ore:ingotIron>);
makeHammerPlate(<thermalfoundation:material:33>,  <ore:ingotGold>);
makeHammerPlate(<thermalfoundation:material:320>, <ore:ingotCopper>);
makeHammerPlate(<thermalfoundation:material:321>, <ore:ingotTin>);
makeHammerPlate(<thermalfoundation:material:322>, <ore:ingotSilver>);
makeHammerPlate(<thermalfoundation:material:323>, <ore:ingotLead>);
makeHammerPlate(<thermalfoundation:material:324>, <ore:ingotAluminum>);
makeHammerPlate(<thermalfoundation:material:324>, <ore:ingotALuminium>);
makeHammerPlate(<thermalfoundation:material:325>, <ore:ingotNickel>);
makeHammerPlate(<thermalfoundation:material:326>, <ore:ingotPlatinum>);
makeHammerPlate(<thermalfoundation:material:327>, <ore:ingotIridium>);
makeHammerPlate(<thermalfoundation:material:328>, <ore:ingotMithril>);
makeHammerPlate(<thermalfoundation:material:352>, <ore:ingotSteel>);
makeHammerPlate(<thermalfoundation:material:353>, <ore:ingotElectrum>);
makeHammerPlate(<thermalfoundation:material:354>, <ore:ingotInvar>);
makeHammerPlate(<thermalfoundation:material:355>, <ore:ingotBronze>);
makeHammerPlate(<thermalfoundation:material:356>, <ore:ingotConstantan>);
makeHammerPlate(<thermalfoundation:material:357>, <ore:ingotSignalum>);
makeHammerPlate(<thermalfoundation:material:358>, <ore:ingotLumium>);
makeHammerPlate(<thermalfoundation:material:359>, <ore:ingotEnderium>);
makeHammerPlate(<contenttweaker:material_part:42>, <contenttweaker:material_part:35>);

	#Basic Microcrafting