import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;

print("------------------Thermal Suite Start------------------");

var tiers = [
  <ore:ingotIron>, 
  <ore:ingotInvar>,
  <ore:ingotElectrum>,
  <ore:ingotSignalum>,
  <ore:ingotEnderium>] as IOreDictEntry[];

	#Compactor
recipes.remove(<thermalexpansion:machine:5>);
<thermalexpansion:machine:5>.addTooltip("Compactor recipe WIP");

	#Compactor - Gearworking Die
recipes.remove(<thermalexpansion:augment:337>);
<thermalexpansion:augment:337>.addTooltip("Disabled until Modtweaker adds Gear Compator functionality");
	
  #Fluiduct 
recipes.remove(<thermaldynamics:duct_16>);
recipes.addShaped(<thermaldynamics:duct_16>, [
  [<ore:plateCopper>,<ore:blockGlass>, <ore:plateCopper>]]);
  #Fluiduct Opaque
recipes.remove(<thermaldynamics:duct_16:1>);
recipes.addShapeless(<thermaldynamics:duct_16:1>, [<thermaldynamics:duct_16>]);

  #Fluiduct (Hardened)
recipes.remove(<thermaldynamics:duct_16:2>);
recipes.addShaped(<thermaldynamics:duct_16:2>, [
  [<ore:plateSteel>, <thermaldynamics:duct_16>, <ore:plateSteel>]]);
  #Fluiduct (Hardened Opaque)
recipes.remove(<thermaldynamics:duct_16:3>);
recipes.addShapeless(<thermaldynamics:duct_16:3>, [<thermaldynamics:duct_16:2>]);

  #Fluiduct (Signalum Plated)
recipes.remove(<thermaldynamics:duct_16:4>);
  #Fluiduct (Signalum Plated Opaque)
recipes.remove(<thermaldynamics:duct_16:5>);

  #Fluiduct (Super Laminar)
recipes.remove(<thermaldynamics:duct_16:6>);
  #Fluiduct (Super Laminar Opaque)
recipes.remove(<thermaldynamics:duct_16:7>);

  #Fluxduct - Basic
recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped(<thermaldynamics:duct_0>*8, [
  [<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>],
  [<ore:plateRedstone>,<forestry:chipsets>,<ore:plateRedstone>],
  [<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>]]);

  #Hammers
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


  #Itemduct
recipes.remove(<thermaldynamics:duct_32>);
recipes.addShaped(<thermaldynamics:duct_32>, [
  [<ore:plateTin>, <ore:blockGlass> ,<ore:plateTin>]]);

  #Itemduct - Opaque
recipes.remove(<thermaldynamics:duct_32:1>);
recipes.addShapeless(<thermaldynamics:duct_32:1>, [<thermaldynamics:duct_32>]);

  #Itemduct - Impulse
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32>, <liquid:glowstone>);
recipes.remove(<thermaldynamics:duct_32:2>);
recipes.addShaped(<thermaldynamics:duct_32:2>, [
  [null, <thermalfoundation:glass:3>, null],
  [<ore:plateGold>, <thermaldynamics:duct_32>, <ore:plateGold>],
  [null, <thermalfoundation:glass:3>, null]]);
mods.botania.ManaInfusion.addInfusion(<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32>, 10000);

  #Itemduct - Impulse Opaque
mods.thermalexpansion.Transposer.removeFillRecipe(<thermaldynamics:duct_32:1>, <liquid:glowstone>*200);
recipes.remove(<thermaldynamics:duct_32:3>);
recipes.addShapeless(<thermaldynamics:duct_32:3>, [<thermaldynamics:duct_32:2>]);

  #Itemduct - Signalum Plated
recipes.remove(<thermaldynamics:duct_32:4>);

  #Itemduct - Signalum Plated Opaque
recipes.remove(<thermaldynamics:duct_32:5>);
recipes.addShapeless(<thermaldynamics:duct_32:5>, [<thermaldynamics:duct_32:4>]);

  #Itemduct - Signalum Plated Impulse
recipes.remove(<thermaldynamics:duct_32:6>);

  #Itemduct - Signalum Plated Impulse Opaque
recipes.remove(<thermaldynamics:duct_32:7>);
recipes.addShapeless(<thermaldynamics:duct_32:7>, [<thermaldynamics:duct_32:6>]);

	#Satchels - Basic
recipes.remove(<thermalexpansion:satchel>);
recipes.addShaped(<thermalexpansion:satchel>, [
	[null, <minecraft:leather>, null],
	[<minecraft:wool:11>, <minecraft:chest>, <minecraft:wool:11>],
	[<minecraft:leather>, <minecraft:chest>, <minecraft:leather>]]);

	#Basic Satchel - Upgrade
recipes.addShapeless("basicSatchelUpgrade", <thermalexpansion:satchel>.withTag({ench: [{lvl: 1 as short, id: 53 as short}]}), [
  <thermalexpansion:satchel>, 
  <thermalexpansion:satchel>]);
recipes.addShapeless("basicSatchelUpgrade2", <thermalexpansion:satchel>.withTag({ench: [{lvl: 2 as short, id: 53 as short}]}), [
  <thermalexpansion:satchel>, 
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>]);
recipes.addShapeless("basicSatchelUpgrade3", <thermalexpansion:satchel>.withTag({ench: [{lvl: 3 as short, id: 53 as short}]}), [
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>]);
recipes.addShapeless("basicSatchelUpgrade4", <thermalexpansion:satchel>.withTag({ench: [{lvl: 4 as short, id: 53 as short}]}), [
  <thermalexpansion:satchel>, 
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>,
  <thermalexpansion:satchel>]);

  #Satchel - Hardened
recipes.removeByRegex("thermalexpansion:satchel_1");

	#Machine Frame
recipes.remove(<thermalexpansion:frame>);

	#Servos
recipes.remove(<thermaldynamics:servo>);
recipes.addShapeless(<thermaldynamics:servo>, [conveyorBasic]);
<thermaldynamics:servo>.displayName = "Basic Servo";
	#Servos - Hardened
recipes.remove(<thermaldynamics:servo:1>);
recipes.addShapeless(<thermaldynamics:servo:1>, [conveyorIntermediate]);
<thermaldynamics:servo:1>.displayName = "Intermediate Servo";
	#Servos - Reinforced
recipes.remove(<thermaldynamics:servo:2>);
recipes.addShapeless(<thermaldynamics:servo:2>, [conveyorAdvanced]);
<thermaldynamics:servo:2>.displayName = "Advanced Servo";
	#Servos - Signalum
recipes.remove(<thermaldynamics:servo:3>);
recipes.addShapeless(<thermaldynamics:servo:3>, [conveyorElite]);
<thermaldynamics:servo:3>.displayName = "Elite Servo";
	#Servos - Enderium
recipes.remove(<thermaldynamics:servo:4>);
recipes.addShapeless(<thermaldynamics:servo:4>, [conveyorInsane]);
<thermaldynamics:servo:4>.displayName = "Insane Servo";



print("-------------------Thermal Suite End-------------------");