import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("------------------------Custom Items Start-------------------------");

	#Creosote Soaked Pellet
furnace.setFuel(<contenttweaker:creosotepellet>, 5000);
recipes.addShaped(<contenttweaker:creosotepellet>, [
	[null, <minecraft:paper>, null],
	[<minecraft:paper>, <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), <minecraft:paper>],
	[null, <minecraft:paper>, null]]);
recipes.addShaped(<contenttweaker:creosotepellet>, [
	[null, <ore:dustWood>, null],
	[<ore:dustWood>, <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), <ore:dustWood>],
	[null, <ore:dustWood>, null]]);

#Basic Tier
	#Basic Motor
recipes.addShaped(motorBasic, [
	[<ore:ringRubber>, fluxductBasic, <ore:stickRefinedIron>],
	[fluxductBasic, <ore:stickRefinedIron>, fluxductBasic],
	[<ore:stickRefinedIron>, fluxductBasic, <ore:ringRubber>]]);
	#Basic Valve
recipes.addShaped(valveBasic, [
	[<ore:boltSteel>, <ore:rotorSteel>, <ore:ringRubber>],
	[null, <thermaldynamics:duct_16>, null],
	[<ore:ringRubber>, motorBasic, <thermaldynamics:duct_0>]]);
	#Basic Conveyor
recipes.addShaped(conveyorBasic, [
	[plateRubber, plateRubber, plateRubber],
	[motorBasic, fluxductBasic, motorBasic],
	[plateRubber, plateRubber, plateRubber]]);
recipes.addShapeless(<thermaldynamics:servo>, [conveyorBasic]);

	#Basic Electric Piston
recipes.addShaped(electricPistonBasic, [
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>],
	[fluxductBasic, <ore:stickRefinedIron>, <ore:stickRefinedIron>],
	[fluxductBasic, motorBasic, <ore:gearRefinedIron>]]);
	#Basic Robot Arm
recipes.addShaped(robotArmBasic, [
  [motorBasic, <ore:stickRefinedIron>, motorBasic],
  [<ore:stickRefinedIron>, null, <ore:stickRefinedIron>],
  [null , null, electricPistonBasic]]);
	#Basic Emitter
recipes.addShaped(emitterBasic, [
	[<ore:stickCopper>, <ore:stickCopper>, circuitBasic],
	[fluxductBasic, <ore:crystalCertusQuartz>, <ore:stickCopper>],
	[circuitBasic, fluxductBasic, <ore:stickCopper>]]);
	#Basic Sensor
recipes.addShaped(sensorBasic, [
	[<ore:plateTin>, null, <minecraft:ender_eye>],
	[<ore:plateTin>, <ore:stickCopper>, null],
	[circuitBasic, <ore:plateTin>, <ore:plateTin>]]);


print("-------------------------Custom Items End--------------------------");

