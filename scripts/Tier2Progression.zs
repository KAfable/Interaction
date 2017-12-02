import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.integrateddynamics.Squeezer as sq;
import mods.crossroads.Grindstone as gs;
import mods.tconstruct.Casting as tc;

//Tier 2 Progression
var glowRoses = <silentgems:glowrose:*>;
var slimyGrass = <tconstruct:slime_grass_tall:*>;
var petals = <botania:petal:*>;
var cb = <minecraft:clay_ball>;
var brick = <minecraft:brick>;

////////
//Plates
////////
var ingotPlateInput = [
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <thermalfoundation:material:128>,
  <thermalfoundation:material:129>,
  <thermalfoundation:material:130>,
  <thermalfoundation:material:131>,
  <thermalfoundation:material:132>,
  <thermalfoundation:material:133>,
  <thermalfoundation:material:134>,
  <thermalfoundation:material:135>,
  <thermalfoundation:material:136>,
  <thermalfoundation:material:160>,
  <thermalfoundation:material:161>,
  <thermalfoundation:material:162>,
  <thermalfoundation:material:163>,
  <thermalfoundation:material:164>,
  <thermalfoundation:material:165>,
  <thermalfoundation:material:166>,
  <thermalfoundation:material:167>
  ] as IItemStack[];

var plateOutput = [
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:322>,
  <thermalfoundation:material:323>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:325>,
  <thermalfoundation:material:326>,
  <thermalfoundation:material:327>,
  <thermalfoundation:material:328>,
  <thermalfoundation:material:352>,
  <thermalfoundation:material:353>,
  <thermalfoundation:material:354>,
  <thermalfoundation:material:355>,
  <thermalfoundation:material:356>,
  <thermalfoundation:material:357>,
  <thermalfoundation:material:358>,
  <thermalfoundation:material:359>
  ] as IItemStack[];

for i in 0 to 20 {
  recipes.addShapeless(plateOutput[i], [
    ingotPlateInput[i], ingotPlateInput[i], 
    ingotPlateInput[i], ingotPlateInput[i], <ore:toolHammer>]);}

//////////
//PipesEXU
//////////
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe>*8, [
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
  [<ore:glass>,<forestry:chipsets>,<ore:glass>],
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

/////////
//Pistons
/////////
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
[<ore:gearReinforcedStone>,<ore:ingotIron>,<ore:gearReinforcedStone>],
  [<ore:stone>,<ore:dustRedstone>,<ore:stone>]
  ]);
recipes.addShaped(<minecraft:piston>*8, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  [<ore:gearIron>,<ore:ingotIron>,<ore:gearIron>],
  [<ore:stone>,<ore:dustRedstone>,<ore:stone>]
  ]);

////////////////
//Ore Processing
////////////////
// Furnace Removals
val ingots = [
  <ore:ingotLead>,
  <ore:ingotSilver>,
  <ore:ingotGold>,
  <ore:ingotAbyssalnite>,
  <ore:ingotCopper>,
  <ore:ingotTin>,
  <ore:ingotIron>,
  <ore:ingotZinc>,
  <ore:ingotAluminum>
  ] as IOreDictEntry[];

val ores = [
  <ore:oreLead>,
  <ore:oreSilver>,
  <ore:oreGold>,
  <ore:oreAbyssalnite>,
  <ore:oreCopper>,
  <ore:oreTin>,
  <ore:oreIron>,
  <ore:oreZinc>,
  <ore:oreAluminum>
  ] as IOreDictEntry[];  

val dusts = [
  <thermalfoundation:material:67>,
  <thermalfoundation:material:66>,
  <thermalfoundation:material:1>,
  <acintegration:dust>,
  <thermalfoundation:material:64>,
  <thermalfoundation:material:65>,
  <thermalfoundation:material:0>,
  <techreborn:dust:59>,
  <techreborn:dust:5>
  ] as IIngredient[];

val impure = [
  <contenttweaker:impuredustlead>,
  <contenttweaker:impuredustsilver>,
  <contenttweaker:impuredustgold>,
  <contenttweaker:impuredustabyssalnite>,
  <contenttweaker:impuredustcopper>,
  <contenttweaker:impuredusttin>,
  <contenttweaker:impuredustiron>,
  <contenttweaker:impuredustzinc>,
  <contenttweaker:impuredustbauxite>
  ] as IItemStack[];

val nuggets = [
  <thermalfoundation:material:195>,
  <thermalfoundation:material:194>,
  <minecraft:gold_nugget>,
  <abyssalcraft:ingotnugget>,
  <thermalfoundation:material:192>,
  <thermalfoundation:material:193>,
  <minecraft:iron_nugget>,
  <techreborn:nuggets:18>,
  <thermalfoundation:material:196>
  ] as IItemStack[];

var configOreAmount = 6;

/////////
//Furnace
/////////
for i in 0 to 9 {
  furnace.remove(ingots[i], ores[i]);}
for i in 0 to 9 {
  recipes.addShapeless(impure[i], [ores[i], <ore:toolHammer>]);}
for i in 0 to 9 {
  furnace.addRecipe(nuggets[i]*configOreAmount, impure[i]);}

// Bronze Dusts
recipes.remove(<techreborn:dust:7>);
recipes.remove(<ic2:dust>);

////////////
//Grindstone
////////////
gs.removeRecipe(<ore:dustCopper>);
gs.removeRecipe(<ore:gravel>);

for i in 0 to 7 {
  gs.addRecipe(ores[i], dusts[i]);
}

gs.addRecipe(<immersiveengineering:material:6>,<immersiveengineering:material:17>);
gs.addRecipe(<skyresources:techitemcomponent:3>, <minecraft:quartz>*2);
gs.addRecipe(<minecraft:netherrack>, <minecraft:quartz>*4);
gs.addRecipe(<minecraft:stone>, <skyresources:techitemcomponent>);
gs.addRecipe(<techreborn:rubber_log>, <ic2:misc_resource:4>);
gs.addRecipe(<ic2:rubber_wood>, <ic2:misc_resource:4>);


//////////
//Squeezer
//////////
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>, [
  [<ore:stickIron>, <minecraft:iron_block>, <ore:stickIron>],
  [<ore:gearReinforcedStone>, null, <ore:gearReinforcedStone>],
  [<ore:stickIron>,<minecraft:heavy_weighted_pressure_plate>,<ore:stickIron>]]);

val squeezerRemoved = [
  <thermalfoundation:material:0>,
  <thermalfoundation:material:1>,
  <thermalfoundation:material:64>,
  <thermalfoundation:material:65>,
  <thermalfoundation:material:66>,
  <thermalfoundation:material:67>,
  <thermalfoundation:material:69>,
  <thermalfoundation:material:70>,
  <thermalfoundation:material:72>,
  <minecraft:emerald>,
  <minecraft:diamond>,
  <evilcraft:dark_gem>,
  <minecraft:dye:4>*8,
  <minecraft:redstone>*8
  ] as IItemStack[];
for i in squeezerRemoved {
  sq.removeRecipesWithOutput(i, null);  
}

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

/////////////////
// Hammer Removal
var hammerRemoved = [
  <immersiveengineering:metal:31>,
  <immersiveengineering:metal:33>,
  <immersiveengineering:metal:34>,
  <immersiveengineering:metal:35>,
  <immersiveengineering:metal:36>,
  <immersiveengineering:metal:37>,
  <immersiveengineering:metal:40>
  ] as IItemStack[];

for i in hammerRemoved {
  recipes.removeShapeless(i);}

////////////////////////////
// MicroCrafting Ingredients
////////////////////////////
//Metal plates
val squeezerPlateInput = [
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <minecraft:redstone_block>,
  <thermalfoundation:material:128>,
  <thermalfoundation:material:129>,
  <thermalfoundation:material:163>,
  <abyssalcraft:abyingot>,
  <mekanism:ingot:4>,
  <techreborn:ingot:1>,
  <minecraft:dye:4>
  ] as IItemStack[];

val squeezerPlateOutput = [
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <techreborn:plates:4>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:355>,
  <contenttweaker:material_part:65>,
  <thermalfoundation:material:352>,
  <techreborn:plates:17>,
  <ic2:plate:4>
  ] as IItemStack[];

for i in 0 to 10 {
  mods.integrateddynamics.Squeezer.addRecipe(squeezerPlateInput[i], squeezerPlateOutput[i], null);}

//Gears
val gearRemoved = [
  <contenttweaker:material_part:5>,
  <contenttweaker:material_part:13>,
  <contenttweaker:material_part:21>,
  <contenttweaker:material_part:37>,
  <contenttweaker:material_part:64>,
  <redstonearsenal:material:96>,
  <teslacorelib:gear_diamond>,
  <teslacorelib:gear_stone>,
  <thermalfoundation:material:24>,
  <thermalfoundation:material:25>,
  <thermalfoundation:material:256>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:258>,
  <thermalfoundation:material:259>,
  <thermalfoundation:material:260>,
  <thermalfoundation:material:261>,
  <thermalfoundation:material:262>,
  <thermalfoundation:material:263>,
  <thermalfoundation:material:264>,
  <thermalfoundation:material:288>,
  <thermalfoundation:material:289>,
  <thermalfoundation:material:290>,
  <thermalfoundation:material:291>,
  <thermalfoundation:material:292>,
  <thermalfoundation:material:293>,
  <thermalfoundation:material:294>,
  <thermalfoundation:material:295>,
  <teslacorelib:gear_wood>,
  <extrautils2:ingredients:1>
  ] as IItemStack[];

for i in gearRemoved {
  recipes.remove(i);}

val gearInput = [
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:352>,
  <thermalfoundation:material:355>,
  <contenttweaker:material_part:65>
  ] as IItemStack[];

val gearOutput = [ 
  <thermalfoundation:material:24>,
  <thermalfoundation:material:25>,
  <thermalfoundation:material:256>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:260>,
  <thermalfoundation:material:288>,
  <thermalfoundation:material:291>,
  <contenttweaker:material_part:64>
  ] as IItemStack[];

for i in 0 to 8 {
  recipes.addShaped(gearOutput[i], [
    [gearInput[i], gearInput[i], gearInput[i]],
    [gearInput[i], <ore:gearReinforcedStone>, gearInput[i]],
    [gearInput[i], gearInput[i], gearInput[i]]]);
}

// Armor
recipes.remove(<silentgems:craftingmaterial:24>);
recipes.addShaped(<silentgems:craftingmaterial:24>, [
  [<ore:string>, <minecraft:flint>, <ore:string>],
  [<minecraft:flint>, <ore:wool>, <minecraft:flint>],
  [<ore:string>, <minecraft:flint>, <ore:string>]]);

recipes.remove(<minecraft:iron_helmet>);
tc.addTableRecipe(<minecraft:iron_helmet>, <silentgems:armorframe>, <liquid:iron>, 720, true);
recipes.remove(<minecraft:iron_chestplate>);
tc.addTableRecipe(<minecraft:iron_chestplate>, <silentgems:armorframe:1>, <liquid:iron>, 1152, true);
recipes.remove(<minecraft:iron_leggings>);
tc.addTableRecipe(<minecraft:iron_leggings>, <silentgems:armorframe:2>, <liquid:iron>, 1008, true);
recipes.remove(<minecraft:iron_boots>);
tc.addTableRecipe(<minecraft:iron_boots>, <silentgems:armorframe:3>, <liquid:iron>, 576, true);

recipes.remove(<thermalfoundation:armor.helmet_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.helmet_bronze>, <silentgems:armorframe>, <liquid:bronze>, 720, true);
recipes.remove(<thermalfoundation:armor.plate_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.plate_bronze>, <silentgems:armorframe:1>, <liquid:bronze>, 1152, true);
recipes.remove(<thermalfoundation:armor.legs_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.legs_bronze>, <silentgems:armorframe:2>, <liquid:bronze>, 1008, true);
recipes.remove(<thermalfoundation:armor.boots_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.boots_bronze>, <silentgems:armorframe:3>, <liquid:bronze>, 576, true);

recipes.remove(<abyssalcraft:ahelmet>);
tc.addTableRecipe(<abyssalcraft:ahelmet>, <silentgems:armorframe>, <liquid:moltenabyssalnite>, 720, true);
recipes.remove(<abyssalcraft:aplate>);
tc.addTableRecipe(<abyssalcraft:aplate>, <silentgems:armorframe:1>, <liquid:moltenabyssalnite>, 1152, true);
recipes.remove(<abyssalcraft:alegs>);
tc.addTableRecipe(<abyssalcraft:alegs>, <silentgems:armorframe:2>, <liquid:moltenabyssalnite>, 1008, true);
recipes.remove(<abyssalcraft:aboots>);
tc.addTableRecipe(<abyssalcraft:aboots>, <silentgems:armorframe:3>, <liquid:moltenabyssalnite>, 576, true);

recipes.remove(<abyssalcraft:corhelmet>);
tc.addTableRecipe(<abyssalcraft:corhelmet>, <silentgems:armorframe>, <liquid:moltenrefinedcoralium>, 720, true);
recipes.remove(<abyssalcraft:corplate>);
tc.addTableRecipe(<abyssalcraft:corplate>, <silentgems:armorframe:1>, <liquid:moltenrefinedcoralium>, 1152, true);
recipes.remove(<abyssalcraft:corlegs>);
tc.addTableRecipe(<abyssalcraft:corlegs>, <silentgems:armorframe:2>, <liquid:moltenrefinedcoralium>, 1008, true);
recipes.remove(<abyssalcraft:corboots>);
tc.addTableRecipe(<abyssalcraft:corboots>, <silentgems:armorframe:3>, <liquid:moltenrefinedcoralium>, 576, true);

recipes.remove(<silentgems:craftingmaterial:25>);
recipes.remove(<silentgems:craftingmaterial:26>);

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

///////////////
//Hammer Repair
///////////////
/*
recipes.addShapeless("pickrepair",diaPick, //we start normal, by writing the output
  [diaPick.anyDamage().marked("mark"),<minecraft:diamond>], //followed by the input array. One change though - we mark the diamond pickaxe, so we can use it in the function later
                              //We'll only need the input parameter, though.
  function(out, ins, cInfo){  //It needs 3 parameters, one for the output, one for the inputs and one for crafting info. 
    return ins.mark.withDamage(max(0,ins.mark.damage - 10)); //now we return the pickaxe with either 0 DMG or Current damage -10, whatever is higher. This is to prevent negative damage values.
  }, 
  null);  //We don't need a recipeAction here so just set it to null
*/

recipes.addShapeless("ironHammerRepair", <thermalfoundation:tool.hammer_iron>, 
  [<thermalfoundation:tool.hammer_iron>.anyDamage().marked("mark").noReturn(), <minecraft:iron_ingot>],
  function(out, ins, cInfo) {
    return ins.mark.withDamage(max(0, ins.mark.damage - 400));
    }, null);

// Satchels
recipes.addShapeless("basicSatchelUpgrade", <thermalexpansion:satchel>.withTag({ench: [{lvl: 1 as short, id: 52 as short}]}), [
  <thermalexpansion:satchel>, 
  <thermalexpansion:satchel>]);

recipes.addShapeless("basicSatchelUpgrade2", <thermalexpansion:satchel>.withTag({ench: [{lvl: 2 as short, id: 52 as short}]}), [
  <thermalexpansion:satchel>, 
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>]);

recipes.addShapeless("basicSatchelUpgrade3", <thermalexpansion:satchel>.withTag({ench: [{lvl: 3 as short, id: 52 as short}]}), [
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>]);

recipes.addShapeless("basicSatchelUpgrade4", <thermalexpansion:satchel>.withTag({ench: [{lvl: 4 as short, id: 52 as short}]}), [
  <thermalexpansion:satchel>, 
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>]);


// ProjectE
recipes.removeShaped(<projecte:item.pe_philosophers_stone>);

var peBags = <projecte:item.pe_alchemical_bag:*>; //Reundant with Iron Backpacks - might re-add later
recipes.removeShaped(peBags);



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
  [<minecraft:leather>, <waterstrainer:net:1>, <minecraft:leather>],
  [<contenttweaker:material_part:17>, <minecraft:leather>, <contenttweaker:material_part:17>]]);
<waterstrainer:strainer_survivalist_dense>.displayName = "Lapidarist's Strainer (Dense)";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_solid>, [
  [<contenttweaker:material_part:17>, <minecraft:obsidian>,<contenttweaker:material_part:17>],
  [<minecraft:obsidian>, <waterstrainer:net:1>,<minecraft:obsidian>],
  [<contenttweaker:material_part:17>, <minecraft:obsidian>, <contenttweaker:material_part:17>]]);
<waterstrainer:strainer_survivalist_dense_solid>.displayName = "Gemcutter's Strainer (Dense)";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense_reinforced>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_reinforced>, [
  [<ore:gemApatite>,  <minecraft:obsidian>, <ore:gemApatite>],
  [ <minecraft:obsidian>, <waterstrainer:net:1>, <minecraft:obsidian>],
  [<ore:gemApatite>,  <minecraft:obsidian>, <ore:gemApatite>]]);
<waterstrainer:strainer_survivalist_dense_reinforced>.displayName = "Jeweler's Strainer (Dense)";
