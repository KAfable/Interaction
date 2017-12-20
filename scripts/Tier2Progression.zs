import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.integrateddynamics.Squeezer as sq;
import mods.tconstruct.Casting as tc;

print("-------------- Tier 2 Progression Start --------------");

//Tier 2 Progression
var glowRoses = <silentgems:glowrose:*>;
var slimyGrass = <tconstruct:slime_grass_tall:*>;
var petals = <botania:petal:*>;
var cb = <minecraft:clay_ball>;
var brick = <minecraft:brick>;

  #Plates
function makeHammerPlate(plate as IItemStack, ingot as IIngredient) {
  recipes.addShapeless(plate, [ingot, ingot, ingot, ingot, <ore:toolHammer>]);}

  //makeHammerPlate(, );
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

//PipesEXU
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe>*8, [
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
  [<ore:glass>,<forestry:chipsets>,<ore:glass>],
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

  #Pistons
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  [<ore:gearReinforcedStone>,<ore:ingotIron>,<ore:gearReinforcedStone>],
  [<ore:stone>,<ore:dustRedstone>,<ore:stone>]]);
recipes.addShaped(<minecraft:piston>*8, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  [<ore:gearIron>,<ore:ingotIron>,<ore:gearIron>],
  [<ore:stone>,<ore:dustRedstone>,<ore:stone>]]);


  #Furnace Removals
furnace.remove(<ore:ingotLead>,         <ore:oreLead>);
furnace.remove(<ore:ingotSilver>,       <ore:oreSilver>);
furnace.remove(<ore:ingotGold>,         <ore:oreGold>);
furnace.remove(<ore:ingotAbyssalnite>,  <ore:oreAbyssalnite>);
furnace.remove(<ore:ingotCopper>,       <ore:oreCopper>);
furnace.remove(<ore:ingotTin>,          <ore:oreTin>);
furnace.remove(<ore:ingotIron>,         <ore:oreIron>);
furnace.remove(<ore:ingotZinc>,         <ore:oreZinc>);
furnace.remove(<ore:ingotAluminum>,     <ore:oreAluminum>);

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

// Disallow crafting of bronze dust
recipes.remove(<techreborn:dust:7>);
recipes.remove(<ic2:dust>);





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

recipes.remove(<immersiveengineering:material:1>);
recipes.addShaped(<immersiveengineering:material:1>, [
  [<minecraft:iron_ingot>],
  [<minecraft:iron_ingot>]]);

recipes.addShaped(<minecraft:armor_stand>, [
  [<minecraft:stick>, <silentgems:armorframe:1>, <minecraft:stick>],
  [null, <silentgems:armorframe:2>, null],
  [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

//Ore Prospector - Two Recipes
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

//Hammer Repair
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

// ProjectE
recipes.removeShaped(<projecte:item.pe_philosophers_stone>);

var peBags = <projecte:item.pe_alchemical_bag:*>; //Reundant with Iron Backpacks - might re-add later
recipes.removeShaped(peBags);

////////////////////////////
//Silent's Gems and Strainer
////////////////////////////


print("-------------- Tier 2 Progression End --------------");