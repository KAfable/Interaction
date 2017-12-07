import crafttweaker.item.IItemStack;

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