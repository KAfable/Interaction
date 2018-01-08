import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

	#Reinforced Stone Gear / Block / Ingot / Rod
var rstone = <contenttweaker:material_part:35>;

recipes.addShaped(<contenttweaker:material_part:41>, [
  [<ore:ingotReinforcedStone>],
  [<ore:ingotReinforcedStone>]]);

recipes.addShaped(<contenttweaker:material_part:37>, [
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>],
  [<ore:ingotReinforcedStone>, <ore:toolHammer>.onlyDamageAtLeast(0), <ore:ingotReinforcedStone>],
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>]]);
recipes.addShaped(<contenttweaker:material_part:37>, [
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>],
  [<ore:ingotReinforcedStone>, <ore:gearStone>, <ore:ingotReinforcedStone>],
  [<contenttweaker:material_part:41>, <ore:ingotReinforcedStone>, <contenttweaker:material_part:41>]]);

recipes.addShapeless(rstone*9, [<contenttweaker:sub_block_holder_0:2>]);
recipes.addShapeless(<contenttweaker:sub_block_holder_0:2>, 
  [<ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>, <ore:ingotReinforcedStone>]);
recipes.addShapeless(<contenttweaker:material_part:40>*9, [<ore:ingotReinforcedStone>]);
recipes.addShapeless(rstone, [<contenttweaker:material_part:40>, <contenttweaker:material_part:40>, <contenttweaker:material_part:40>,
  <contenttweaker:material_part:40>, <contenttweaker:material_part:40>,<contenttweaker:material_part:40>,
<contenttweaker:material_part:40>,<contenttweaker:material_part:40>,<contenttweaker:material_part:40>]);

	#Wooden Gear
recipes.addShaped(<contenttweaker:material_part:13>, [
  [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
  [<ore:plankWood>, <ore:toolHammer>.onlyDamageAtLeast(0), <ore:plankWood>],
  [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>]]);

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
var cwire = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte});
var gwire = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte});
var twire = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte});
var ccoil = <ic2:crafting:5>;
var ccoilblock = <immersiveengineering:metal_decoration0>;
var control = <advgenerators:controller>;
var circuit3 = <forestry:chipsets:3>;
var magnet = <fp:itemerze:4>;

var emitter = <contenttweaker:basicemitter>;
var motor = <contenttweaker:basicmotor>;
var conveyor = <contenttweaker:basicconveyor>;
var piston = <contenttweaker:basicpiston>;
var sensor = <contenttweaker:basicsensor>;
var arm = <contenttweaker:basicrobotarm>;
var valve = <contenttweaker:basicvalve>;
var screen = <rftools:screen>;

recipes.addShapeless(magnet*2, [<minecraft:iron_ingot>, <immersiveengineering:tool>, magnet]);
recipes.addShapeless(magnet*8, [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>,<immersiveengineering:tool>,magnet]);
recipes.addShapeless(magnet, [<ic2:single_use_battery>, <ic2:crafting:5>, <minecraft:iron_ingot>]);

	#IC2 Coil
recipes.remove(<ic2:crafting:5>);
recipes.addShaped(<ic2:crafting:5>, [
	[cwire,cwire,cwire],
	[cwire,<ore:stickIron>,cwire],
	[cwire,cwire,cwire]]);

	#IE Copper Coil Block
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.addShaped(<immersiveengineering:metal_decoration0>, [
	[ccoil,ccoil,ccoil],
	[ccoil,ccoil,ccoil],
	[ccoil,ccoil,ccoil]]);

recipes.remove(<advgenerators:controller>);
recipes.addShaped(<advgenerators:controller>, [
	[cwire,<forestry:thermionic_tubes:0>,cwire],
	[gwire,circuit3,gwire],
	[twire,<forestry:thermionic_tubes:1>,twire]]);

recipes.remove(<advgenerators:iron_tubing>);
recipes.addShaped(<advgenerators:iron_tubing>*3, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
	[null, null, null],
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

recipes.addShapeless(emitter, [control, <immersiveengineering:toolupgrade:10>]);
recipes.addShaped(motor, [
	[magnet,<ore:stickIron>,magnet],
	[magnet,<ic2:crafting:5>,magnet],
	[<ore:plateIron>,control,<ore:plateIron>]]);

recipes.addShaped(conveyor, [
	[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>],
	[motor, null, <crossroads:gear_iron>],
	[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>]]);

recipes.addShaped(conveyor, [
	[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>],
	[<crossroads:gear_iron>, null, motor],
	[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>]]);

recipes.addShapeless(piston, [motor, cwire, <minecraft:piston>]);
recipes.addShaped(sensor, [
	[<ore:plateIron>, null, emitter],
	[<ore:plateIron>, emitter, null],
	[control, <ore:plateIron>, <ore:plateIron>]]);

recipes.addShaped(arm, [
	[motor, <ore:plateIron>, motor],
	[<ore:plateIron>, ccoil, <ore:plateIron>],
	[sensor, null, piston]]);

recipes.addShaped(valve, [
	[null, <ore:plateIron>, <advgenerators:iron_tubing>],
	[<ore:plateIron>, <minecraft:lever>, <ore:plateIron>],
	[<advgenerators:iron_tubing>, <ore:plateIron>, null]]);

recipes.remove(screen);
recipes.addShaped(screen, [
	[<immersiveengineering:toolupgrade:10>,<immersiveengineering:toolupgrade:10>,<immersiveengineering:toolupgrade:10>],
	[<immersiveengineering:toolupgrade:10>,control,<immersiveengineering:toolupgrade:10>],
	[<immersiveengineering:toolupgrade:10>,<immersiveengineering:toolupgrade:10>,<immersiveengineering:toolupgrade:10>]
	]);


	#Gears
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
  <contenttweaker:material_part:65>,
  <techreborn:plates:4>					//Redstone Plate
  ] as IItemStack[];

val gearOutput = [ 
  <thermalfoundation:material:24>,
  <thermalfoundation:material:25>,
  <thermalfoundation:material:256>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:260>,
  <thermalfoundation:material:288>,
  <thermalfoundation:material:291>,
  <contenttweaker:material_part:64>,
  <contenttweaker:material_part:194>	//Redstone Gear
  ] as IItemStack[];

for i in 0 to 8 {
  recipes.addShaped(gearOutput[i], [
    [gearInput[i], gearInput[i], gearInput[i]],
    [gearInput[i], <ore:gearReinforcedStone>, gearInput[i]],
    [gearInput[i], gearInput[i], gearInput[i]]]);
}

  #Wood Gear
recipes.addShaped(<contenttweaker:material_part:58>, [
  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
  [<ore:plankWood>, null, <ore:plankWood>],
  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]]);