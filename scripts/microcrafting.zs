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


recipes.remove(<ic2:crafting:5>);
recipes.addShaped(<ic2:crafting:5>, [
[cwire,cwire,cwire],
[cwire,<ore:stickIron>,cwire],
[cwire,cwire,cwire]
]);

recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.addShaped(<immersiveengineering:metal_decoration0>, [
[ccoil,ccoil,ccoil],
[ccoil,ccoil,ccoil],
[ccoil,ccoil,ccoil]
]);

recipes.remove(<advgenerators:controller>);
recipes.addShaped(<advgenerators:controller>, [
[cwire,<forestry:thermionic_tubes:0>,cwire],
[gwire,circuit3,gwire],
[twire,<forestry:thermionic_tubes:1>,twire]
]);
recipes.remove(<advgenerators:iron_tubing>);
recipes.addShaped(<advgenerators:iron_tubing>*3, [
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
[null, null, null],
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
]);

recipes.addShapeless(emitter, [control, <environmentaltech:diode>]);
recipes.addShaped(motor, [
[magnet,<ore:stickIron>,magnet],
[magnet,<ic2:crafting:5>,magnet],
[<ore:plateIron>,control,<ore:plateIron>]
]);
recipes.addShaped(conveyor, [
[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>],
[motor, null, <crossroads:gear_iron>],
[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>]
]);
recipes.addShaped(conveyor, [
[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>],
[<crossroads:gear_iron>, null, motor],
[<ore:itemRubber>,<ore:itemRubber>,<ore:itemRubber>]
]);
recipes.addShapeless(piston, [motor, cwire, <minecraft:piston>]);
recipes.addShaped(sensor, [
[<ore:plateIron>, null, emitter],
[<ore:plateIron>, emitter, null],
[control, <ore:plateIron>, <ore:plateIron>]
]);
recipes.addShaped(arm, [
[motor, <ore:plateIron>, motor],
[<ore:plateIron>, ccoil, <ore:plateIron>],
[sensor, null, piston]
]);
recipes.addShaped(valve, [
[null, <ore:plateIron>, <advgenerators:iron_tubing>],
[<ore:plateIron>, <minecraft:lever>, <ore:plateIron>],
[<advgenerators:iron_tubing>, <ore:plateIron>, null]
]);
recipes.remove(screen);
recipes.addShaped(screen, [
[<environmentaltech:diode>,<environmentaltech:diode>,<environmentaltech:diode>],
[<environmentaltech:diode>,control,<environmentaltech:diode>],
[<environmentaltech:diode>,<environmentaltech:diode>,<environmentaltech:diode>]
]);