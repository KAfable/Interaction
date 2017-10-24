//Tier 2 Progression
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var glowRoses = <silentgems:glowrose:*>;
var slimyGrass = <tconstruct:slime_grass_tall:*>;
var petals = <botania:petal:*>;

////////////////
//Ore Prospector
////////////////
<prospectors:prospector_lowest>.displayName = "Basic Prospector";
recipes.removeShaped(<prospectors:prospector_lowest>);

// Alternative Exploration Recipes
recipes.addShaped(<prospectors:prospector_lowest>, [
  [null, <immersiveengineering:material>, glowRoses],
  [null, <abyssalcraft:dltlog>, <immersiveengineering:material>],
  [<abyssalcraft:dltlog>, null, null]]);
recipes.addShaped(<prospectors:prospector_lowest>, [
  [null, <immersiveengineering:material>, slimyGrass],
  [<minecraft:cobblestone>, <tconstruct:firewood>, <immersiveengineering:material>],
  [<tconstruct:firewood>, <minecraft:cobblestone>, null]]);
mods.jei.JEI.addDescription(<prospectors:prospector_lowest>,"This prospector, made from subpar materials unique to its dimension, has an attunement towards all ores that occur in the surface world. It may have difficulty or limited use locating ores in other dimensions.");

<prospectors:prospector_low>.displayName = "Basic Magic Prospector";
recipes.removeShaped(<prospectors:prospector_low>);
recipes.addShaped(<prospectors:prospector_low>, [
  [null, <ore:gemAquamarine>, petals],
  [<ore:gemAquamarine>, <prospectors:prospector_lowest>, <ore:gemAquamarine>],
  [null, <ore:gemAquamarine>, null]]);
mods.jei.JEI.addDescription(<prospectors:prospector_lowest>,"This prospector, upgraded with magical materials, has an attunement towards all ores that occur in the Abyssal Wasteland and Twilight Forest. It may have difficulty or limited use locating ores in other dimensions.");




///////////////////////////
// Portable Storage Tiering
///////////////////////////

// ProjectE
var peBags = <projecte:item.pe_alchemical_bag:*>; //Reundant with Iron Backpacks - might re-add later
recipes.removeShaped(peBags);

// Iron Backpacks
var ibpb = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}});
var ibpi =  <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}});
var ibpi2 = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}});
var ibpg = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}});
var ibpg2 = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}});
var ibpd = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}});
var ibpd2 = <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}});

recipes.removeShaped(<actuallyadditions:item_bag>);
recipes.addShaped(<actuallyadditions:item_bag>, [
  [<minecraft:string>,<minecraft:leather>,<minecraft:string>],
  [<minecraft:string>, <ore:gearWood>,<minecraft:string>],
  [<minecraft:leather>, ibpb, <minecraft:leather>]]);
