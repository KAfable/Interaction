import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var servo = <thermaldynamics:servo>.definition;
var retrieve = <thermaldynamics:retriever>.definition;
var filter = <thermaldynamics:filter>.definition;
var tiers = [<ore:ingotIron>,<ore:ingotInvar>,<ore:ingotElectrum>,<ore:ingotSignalum>,<ore:ingotEnderium>] as IOreDictEntry[];

//Satchels
recipes.remove(<thermalexpansion:satchel>);
recipes.addShaped(<thermalexpansion:satchel>, [
	[null, <minecraft:leather>, null],
	[<minecraft:wool:11>, <minecraft:chest>, <minecraft:wool:11>],
	[<minecraft:leather>, <minecraft:chest>, <minecraft:leather>]]);

// Basic Satchel
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

//Servos
for i in 0 to 5 {
	recipes.remove(servo.makeStack(i));
	recipes.addShaped(servo.makeStack(i), [
	[<ore:nuggetIron>,<ore:circuitBasic>,<ore:nuggetIron>],
	[tiers[i],<minecraft:redstone>,tiers[i]],
	]);
	recipes.remove(retrieve.makeStack(i));
	recipes.addShaped(retrieve.makeStack(i), [
	[<ore:nuggetIron>,<ore:circuitBasic>,<ore:nuggetIron>],
	[tiers[i],<minecraft:ender_eye>,tiers[i]],
	]);
	recipes.remove(filter.makeStack(i));
	recipes.addShaped(filter.makeStack(i), [
	[<ore:nuggetIron>,<ore:circuitBasic>,<ore:nuggetIron>],
	[tiers[i],<minecraft:paper>,tiers[i]],
	]);
}

recipes.removeShaped(<thermaldynamics:duct_32:1>);
recipes.removeShaped(<thermaldynamics:duct_16:1>);
recipes.removeShaped(<thermaldynamics:duct_16:2>);
recipes.removeShaped(<thermaldynamics:duct_16:3>);

recipes.addShaped(<thermaldynamics:duct_32:1>, [
	[<ore:ingotTin>,<contenttweaker:basicvalve>,<ore:ingotTin>]]);
recipes.addShaped(<thermaldynamics:duct_16:1>, [
	[<ore:ingotCopper>,<contenttweaker:basicvalve>,<ore:ingotCopper>]]);
recipes.addShaped(<thermaldynamics:duct_16:2>, [
	[<ore:ingotIron>,<ore:blockGlassHardened>,<ore:ingotIron>]]);
recipes.addShaped(<thermaldynamics:duct_16:3>, [
	[<ore:ingotIron>,<contenttweaker:basicvalve>,<ore:ingotIron>]]);

	#Acqueous Accumulator (replaced by Evilcraft Eternal Water Block)
recipes.remove(<thermalexpansion:device>);

recipes.remove(<thermaldynamics:duct_0>);
<thermaldynamics:duct_0>.displayName = "Basic Fluxduct";

recipes.addShaped(<thermaldynamics:duct_0>*8, [
	[<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>],
	[<ore:plateRedstone>,<forestry:chipsets>,<ore:plateRedstone>],
	[<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>]]);
