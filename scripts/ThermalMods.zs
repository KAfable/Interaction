import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var servos = <thermaldynamics:servo>.definition;
var retrieve = <thermaldynamics:retriever>.definition;
var filter = <thermaldynamics:filter>.definition;
var tiers = [<ore:ingotIron>,<ore:ingotInvar>,<ore:ingotElectrum>,<ore:ingotSignalum>,<ore:ingotEnderium>] as IOreDictEntry[];

	#Acqueous Accumulator (replaced by Evilcraft Eternal Water Block)
mods.jei.JEI.removeAndHide(<thermalexpansion:device>);

	#Compactor
recipes.remove(<thermalexpansion:machine:5>);
<thermalexpansion:machine:5>.addTooltip("Compactor recipe WIP");

	#Hammers

/*
function repairHammer (recName as string, hammer as IItemStack, repairMaterial as IItemStack, repairValue as int) {
	recipes.addShapeless(recName, hammer, [
		hammer.anyDamage().marked("mark").noReturn(), repairMaterial],
  		function(out, ins, cInfo) {
    		return ins.mark.withDamage(max(0, ins.mark.damage - repairValue));
    		}, 
    	null);
}
repairHammer("copperHammerRepair", <thermalfoundation:tool.hammer_copper>, <thermalfoundation:material:128>, 200);
*/
	#Hammer Repair
recipes.addShapeless("electrumHammerRepair", <thermalfoundation:tool.hammer_electrum>, [
	<thermalfoundation:tool.hammer_electrum>.anyDamage().marked("mark").noReturn(), <ore:ingotElectrum>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 100));}, null);
recipes.addShapeless("leadHammerRepair", <thermalfoundation:tool.hammer_lead>, [
	<thermalfoundation:tool.hammer_lead>.anyDamage().marked("mark").noReturn(), <ore:ingotLead>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 150));}, null);
recipes.addShapeless("copperHammerRepair", <thermalfoundation:tool.hammer_copper>, [
	<thermalfoundation:tool.hammer_copper>.anyDamage().marked("mark").noReturn(), <ore:ingotCopper>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 200));}, null);
recipes.addShapeless("tinHammerRepair", <thermalfoundation:tool.hammer_tin>, [
	<thermalfoundation:tool.hammer_tin>.anyDamage().marked("mark").noReturn(), <ore:ingotTin>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 250));}, null);
recipes.addShapeless("silverHammerRepair", <thermalfoundation:tool.hammer_silver>, [
	<thermalfoundation:tool.hammer_silver>.anyDamage().marked("mark").noReturn(), <ore:ingotsilver>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 250));}, null);
recipes.addShapeless("aluminumHammerRepair", <thermalfoundation:tool.hammer_aluminum>, [
	<thermalfoundation:tool.hammer_aluminum>.anyDamage().marked("mark").noReturn(), <ore:ingotAluminum>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 300));}, null);
recipes.addShapeless("ironHammerRepair", <thermalfoundation:tool.hammer_iron>, [
	<thermalfoundation:tool.hammer_iron>.anyDamage().marked("mark").noReturn(), <ore:ingotIron>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 350));}, null);
recipes.addShapeless("nickelHammerRepair", <thermalfoundation:tool.hammer_nickel>, [
	<thermalfoundation:tool.hammer_nickel>.anyDamage().marked("mark").noReturn(), <ore:ingotNickel>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 400));}, null);
recipes.addShapeless("invarHammerRepair", <thermalfoundation:tool.hammer_invar>, [
	<thermalfoundation:tool.hammer_invar>.anyDamage().marked("mark").noReturn(), <ore:ingotInvar>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 600));}, null);
recipes.addShapeless("steelHammerRepair", <thermalfoundation:tool.hammer_steel>, [
	<thermalfoundation:tool.hammer_steel>.anyDamage().marked("mark").noReturn(), <ore:ingotSteel>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 650));}, null);
recipes.addShapeless("bronzeHammerRepair", <thermalfoundation:tool.hammer_bronze>, [
	<thermalfoundation:tool.hammer_bronze>.anyDamage().marked("mark").noReturn(), <ore:ingotBronze>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 650));}, null);
recipes.addShapeless("diamondHammerRepair", <thermalfoundation:tool.hammer_diamond>, [
	<thermalfoundation:tool.hammer_diamond>.anyDamage().marked("mark").noReturn(), <ore:gemDiamond>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 2000));}, null);
recipes.addShapeless("platinumHammerRepair", <thermalfoundation:tool.hammer_platinum>, [
	<thermalfoundation:tool.hammer_platinum>.anyDamage().marked("mark").noReturn(), <ore:ingotPlatinum>],
  	function(out, ins, cInfo) {
    	return ins.mark.withDamage(max(0, ins.mark.damage - 2500));}, null);


	#Satchels
recipes.remove(<thermalexpansion:satchel>);
recipes.addShaped(<thermalexpansion:satchel>, [
	[null, <minecraft:leather>, null],
	[<minecraft:wool:11>, <minecraft:chest>, <minecraft:wool:11>],
	[<minecraft:leather>, <minecraft:chest>, <minecraft:leather>]]);

	#Basic Satchel
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

	#Machine Frame
recipes.remove(<thermalexpansion:frame>);

	#Servos
for i in 0 to 5 {
	recipes.remove(servos.makeStack(i));
	recipes.addShaped(servos.makeStack(i), [
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

	#Itemduct
recipes.remove(<thermaldynamics:duct_32>);
recipes.addShaped(<thermaldynamics:duct_32>, [
	[<ore:ingotTin>,<contenttweaker:basicvalve>,<ore:ingotTin>]]);

	#Fluiduct
recipes.remove(<thermaldynamics:duct_16>);
recipes.addShaped(<thermaldynamics:duct_16>, [
	[<ore:plateCopper>,<ore:blockGlass>, <ore:plateCopper>]]);

	#Fluiduct (Hardened)
recipes.remove(<thermaldynamics:duct_16:2>);

	#Fluiduct (Signalum Plated)
recipes.remove(<thermaldynamics:duct_16:4>);

	#Fluiduct (Super Laminar)
recipes.remove(<thermaldynamics:duct_16:6>);

recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped(<thermaldynamics:duct_0>*8, [
	[<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>],
	[<ore:plateRedstone>,<forestry:chipsets>,<ore:plateRedstone>],
	[<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>]]);
