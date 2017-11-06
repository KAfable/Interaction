//Tier 2 Progression
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.integrateddynamics.Squeezer as sq;
import mods.crossroads.Grindstone as gs;

var glowRoses = <silentgems:glowrose:*>;
var slimyGrass = <tconstruct:slime_grass_tall:*>;
var petals = <botania:petal:*>;
var cb = <minecraft:clay_ball>;
var brick = <minecraft:brick>;

////////////
//Grindstone
////////////
gs.removeRecipe(<crossroads:dust_copper>);
gs.addRecipe(<minecraft:gold_ore>, <thermalfoundation:material:1>);
gs.addRecipe(<minecraft:iron_ore>, <thermalfoundation:material:0>);
gs.addRecipe(<thermalfoundation:ore:0>, <thermalfoundation:material:64>);
gs.addRecipe(<thermalfoundation:ore:1>, <thermalfoundation:material:65>);
gs.addRecipe(<fp:erze:1>, <techreborn:dust:59>);
gs.addRecipe(<techreborn:ore:4>, <techreborn:dust:5>);
gs.addRecipe(<abyssalcraft:abyore>, <acintegration:dust>);

//////////
//Squeezer
//////////
sq.removeRecipesWithOutput(<thermalfoundation:material:0>);
sq.removeRecipesWithOutput(<thermalfoundation:material:1>);
sq.removeRecipesWithOutput(<thermalfoundation:material:64>);
sq.removeRecipesWithOutput(<thermalfoundation:material:65>);
sq.removeRecipesWithOutput(<thermalfoundation:material:66>);
sq.removeRecipesWithOutput(<thermalfoundation:material:67>);
sq.removeRecipesWithOutput(<thermalfoundation:material:69>);
sq.removeRecipesWithOutput(<thermalfoundation:material:70>);
sq.removeRecipesWithOutput(<thermalfoundation:material:72>);

//sq.removeRecipe(<minecraft:gold_ore>,<thermalfoundation:material:0>);
//sq.removeRecipe(<minecraft:iron_ore>,<thermalfoundation:material:1>);
//sq.removeRecipe(<thermalfoundation:ore:0>,<thermalfoundation:material:64>);
//sq.removeRecipe(<thermalfoundation:ore:1>,<thermalfoundation:material:65>);
//sq.removeRecipe(<thermalfoundation:ore:2>,<thermalfoundation:material:66>);
//sq.removeRecipe(<thermalfoundation:ore:3>,<thermalfoundation:material:67>);
//sq.removeRecipe(<thermalfoundation:ore:5>,<thermalfoundation:material:69>);
//sq.removeRecipe(<thermalfoundation:ore:6>,<thermalfoundation:material:70>);
//sq.removeRecipe(<thermalfoundation:ore:8>,<thermalfoundation:material:72>);

sq.addRecipe(<minecraft:gold_ore>,<contenttweaker:impuredustgold>,null);
sq.addRecipe(<minecraft:iron_ore>,<contenttweaker:impuredustiron>,null);
sq.addRecipe(<thermalfoundation:ore:0>,<contenttweaker:impuredustcopper>,null);
sq.addRecipe(<thermalfoundation:ore:1>,<contenttweaker:impuredusttin>,null);
sq.addRecipe(<abyssalcraft:abyore>, <contenttweaker:impuredustabyssalnite>, null);
sq.addRecipe(<fp:erze:1>, <contenttweaker:impuredustzinc>, null);
sq.addRecipe(<techreborn:ore:4>, <contenttweaker:impuredustbauxite>, null);

recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>, [[<ore:stickIron>, <minecraft:iron_block>, <ore:stickIron>],[<ore:stickIron>, <skyresources:casing:12>,<ore:stickIron>],[<ore:gearReinforcedStone>,<minecraft:heavy_weighted_pressure_plate>,<ore:gearReinforcedStone>]]);

/////////////////
// Astral Sorcery
/////////////////
recipes.removeShaped(<astralsorcery:blockblackmarble>);

///////////////////////
//Immersive Engineering
///////////////////////
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>, [
  [cb, brick, cb],
  [brick, <immersiveengineering:stone_decoration:10>, brick],
  [cb, brick, cb]]);
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.remove(<immersiveengineering:stone_decoration:2>);



/////////////////////////////////
// Those spicy boi hammer recipes
/////////////////////////////////
recipes.removeShapeless(<immersiveengineering:metal:31>);
recipes.removeShapeless(<immersiveengineering:metal:33>);
recipes.removeShapeless(<immersiveengineering:metal:34>);
recipes.removeShapeless(<immersiveengineering:metal:35>);
recipes.removeShapeless(<immersiveengineering:metal:36>);
recipes.removeShapeless(<immersiveengineering:metal:37>);
recipes.removeShapeless(<immersiveengineering:metal:40>);


////////////////
//Ore Processing
////////////////
// Furnace Removals
furnace.remove(<ore:ingotLead>, <ore:oreLead>);
furnace.remove(<ore:ingotLead>, <ic2:crushed:3>);
furnace.remove(<ore:ingotGold>, <ore:oreGold>);
furnace.remove(<ore:ingotGold>, <ic2:crushed:1>);
furnace.remove(<ore:ingotAbyssalnite>, <ore:oreAbyssalnite>);
furnace.remove(<ore:ingotCopper>, <ore:oreCopper>);
furnace.remove(<ore:ingotCopper>, <ic2:crushed>);
furnace.remove(<ore:ingotTin>, <ore:oreTin>);
furnace.remove(<ore:ingotTin>, <ic2:crushed:5>);
furnace.remove(<ore:ingotIron>, <ore:oreIron>);
furnace.remove(<ore:ingotIron>, <ic2:crushed:2>);
furnace.remove(<ore:ingotZinc>, <ore:oreZinc>);

var configOreAmount = 4;

furnace.addRecipe(<contenttweaker:impuredustcopper>, <ore:oreCopper>);
furnace.addRecipe(<thermalfoundation:material:192>*configOreAmount, <contenttweaker:impuredustcopper>);
mods.skyresources.cauldronclean.addRecipe(<thermalfoundation:material:64>, <contenttweaker:impuredustcopper>);

furnace.addRecipe(<contenttweaker:impuredustgold>, <ore:oreGold>);
furnace.addRecipe(<minecraft:gold_nugget>*configOreAmount, <contenttweaker:impuredustgold>);
mods.skyresources.cauldronclean.addRecipe(<thermalfoundation:material:1>, <contenttweaker:impuredustgold>);

furnace.addRecipe(<contenttweaker:impuredustiron>, <ore:oreIron>);
furnace.addRecipe(<minecraft:iron_nugget>*configOreAmount, <contenttweaker:impuredustiron>);
mods.skyresources.cauldronclean.addRecipe(<thermalfoundation:material>, <contenttweaker:impuredustiron>);

furnace.addRecipe(<contenttweaker:impuredusttin>, <ore:oreTin>);
furnace.addRecipe(<thermalfoundation:material:193>*configOreAmount, <contenttweaker:impuredusttin>);
mods.skyresources.cauldronclean.addRecipe(<thermalfoundation:material:65>, <contenttweaker:impuredusttin>);

furnace.addRecipe(<contenttweaker:impuredustabyssalnite>, <ore:oreAbyssalnite>);
furnace.addRecipe(<abyssalcraft:ingotnugget>*configOreAmount, <contenttweaker:impuredustabyssalnite>);
mods.skyresources.cauldronclean.addRecipe(<acintegration:dust>, <contenttweaker:impuredustabyssalnite>);

furnace.addRecipe(<contenttweaker:impuredustbauxite>, <techreborn:ore:4>);
furnace.addRecipe(<thermalfoundation:material:196>*configOreAmount, <contenttweaker:impuredustbauxite>);
mods.skyresources.cauldronclean.addRecipe(<techreborn:dust:5>, <contenttweaker:impuredustbauxite>);
furnace.addRecipe(<thermalfoundation:material:132>, <techreborn:dust:5>);

furnace.addRecipe(<contenttweaker:impuredustzinc>, <ore:oreZinc>);
furnace.addRecipe(<techreborn:nuggets:18>*configOreAmount, <contenttweaker:impuredustzinc>);
mods.skyresources.cauldronclean.addRecipe(<techreborn:dust:59>, <contenttweaker:impuredustzinc>);


// Bronze Dusts
recipes.remove(<techreborn:dust:7>);
recipes.remove(<ic2:dust>);


////////////////////////////
// MicroCrafting Ingredients
////////////////////////////

//Metal plates
mods.integrateddynamics.Squeezer.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:320>, null);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:33>, null);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:32>, null);
mods.integrateddynamics.Squeezer.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:material:321>, null);
mods.integrateddynamics.Squeezer.addRecipe(<thermalfoundation:material:163>, <thermalfoundation:material:355>, null);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:redstone_block>, <techreborn:plates:4>, null);
mods.integrateddynamics.Squeezer.addRecipe(<contenttweaker:material_part:67>, <contenttweaker:material_part:65>, null);
mods.integrateddynamics.Squeezer.addRecipe(<mekanism:ingot:4>, <thermalfoundation:material:352>, null);

//Tool MicroCrafting
//val useCraftingTool = <contenttweaker:craftingtool>.anyDamage().transformDamage();
val hammers = <ore:hammerTool>;
val hammerList = [
  <thermalfoundation:tool.hammer_nickel:*>,
  <thermalfoundation:tool.hammer_aluminum:*>,
  <thermalfoundation:tool.hammer_lead:*>,
  <thermalfoundation:tool.hammer_silver:*>,
  <thermalfoundation:tool.hammer_tin:*>,
  <thermalfoundation:tool.hammer_copper:*>,
  <redstonearsenal:tool.hammer_flux:*>,
  <immersiveengineering:tool:*>,
  <ic2:forge_hammer:*>,
  <roots:gold_hammer:*>,
  <roots:diamond_hammer:*>,
  <roots:iron_hammer:*>,
  <roots:stone_hammer:*>,
  <roots:wood_hammer:*>,
  <thermalfoundation:tool.hammer_diamond:*>,
  <thermalfoundation:tool.hammer_bronze:*>,
  <thermalfoundation:tool.hammer_constantan:*>,
  <thermalfoundation:tool.hammer_invar:*>,
  <thermalfoundation:tool.hammer_electrum:*>,
  <thermalfoundation:tool.hammer_steel:*>,
  <thermalfoundation:tool.hammer_platinum:*>,
  <thermalfoundation:tool.hammer_iron:*>,
  <thermalfoundation:tool.hammer_gold:*>]
  as IItemStack[];


hammers.addItems(hammerList);

val endPlate = <thermalfoundation:material:359>;
val enderium = <thermalfoundation:material:167>;
val useHammerTool = <ore:hammerTool>.transformDamage();
recipes.addShapeless("hammer_endplate", 
  endPlate,
  [useHammerTool, enderium, enderium, enderium, enderium]);

//////////////////////////////
//Ore Prospector - Two Recipes
///////////////////////////////
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


///////////////////////////
// Portable Storage Tiering
///////////////////////////

// ProjectE
recipes.removeShaped(<projecte:item.pe_philosophers_stone>);

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

////////////////////////////
//Silent's Gems and Strainer
////////////////////////////
recipes.removeShaped(<waterstrainer:strainer_survivalist>);
recipes.addShaped(<waterstrainer:strainer_survivalist>, [
  [<contenttweaker:material_part:18>,<minecraft:leather>, <contenttweaker:material_part:18>],
  [<minecraft:leather>, <waterstrainer:net>, <minecraft:leather>],
  [<contenttweaker:material_part:18>, <minecraft:leather>, <contenttweaker:material_part:18>]]);
<waterstrainer:strainer_survivalist>.displayName = "Lapidarist's Strainer";

recipes.removeShaped(<waterstrainer:strainer_survivalist_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_solid>, [
  [<contenttweaker:material_part:18>,<minecraft:obsidian>,<contenttweaker:material_part:18>],
  [<minecraft:obsidian>, <waterstrainer:net>, <minecraft:obsidian>],
  [<contenttweaker:material_part:18>, <minecraft:obsidian>, <contenttweaker:material_part:18>]]);
<waterstrainer:strainer_survivalist_solid>.displayName = "Gemcutter's Strainer";

recipes.removeShaped(<waterstrainer:strainer_survivalist_reinforced>);
recipes.addShaped(<waterstrainer:strainer_survivalist_reinforced>, [
  [<contenttweaker:material_part:18>, <ore:gemApatite>, <contenttweaker:material_part:18>],
  [<ore:gemApatite>, <waterstrainer:net>, <ore:gemApatite>],
  [<contenttweaker:material_part:18>, <ore:gemApatite>, <contenttweaker:material_part:18>]]);
<waterstrainer:strainer_survivalist_reinforced>.displayName = "Jeweler's Strainer";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense>, [
  [<contenttweaker:material_part:17>, <minecraft:leather>,<contenttweaker:material_part:17>],
  [<minecraft:leather>, <waterstrainer:net>, <minecraft:leather>],
  [<contenttweaker:material_part:17>, <minecraft:leather>, <contenttweaker:material_part:17>]]);
<waterstrainer:strainer_survivalist_dense>.displayName = "Lapidarist's Strainer (Dense)";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_solid>, [
  [<contenttweaker:material_part:17>, <minecraft:obsidian>,<contenttweaker:material_part:17>],
  [<minecraft:obsidian>, <waterstrainer:net>,<minecraft:obsidian>],
  [<contenttweaker:material_part:17>, <minecraft:obsidian>, <contenttweaker:material_part:17>]]);
<waterstrainer:strainer_survivalist_dense_solid>.displayName = "Gemcutter's Strainer (Dense)";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense_reinforced>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_reinforced>, [
  [<ore:gemApatite>,  <minecraft:obsidian>, <ore:gemApatite>],
  [ <minecraft:obsidian>, <waterstrainer:net>, <minecraft:obsidian>],
  [<ore:gemApatite>,  <minecraft:obsidian>, <ore:gemApatite>]]);
<waterstrainer:strainer_survivalist_dense_reinforced>.displayName = "Jeweler's Strainer (Dense)";
