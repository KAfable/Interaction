import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var glowRoses = <silentgems:glowrose:*>;
var slimyGrass = <tconstruct:slime_grass_tall:*>;
var petals = <botania:petal:*>;

	#Basic Ore Prospector - Two Recipes
<prospectors:prospector_lowest>.displayName = "Basic Prospector";
recipes.removeShaped(<prospectors:prospector_lowest>);
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

	#Prospector Medium 
recipes.remove(<prospectors:prospector_med>);
	#Advanced Prospector High
recipes.remove(<prospectors:prospector_high>);
	#Ultimate Prospector
recipes.remove(<prospectors:prospector_best>);