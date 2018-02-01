import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.liquid.ILiquidStack;

print("--------------Modular Machinery Start----------------");


val casing = <modularmachinery:blockcasing>;
val rstone = <contenttweaker:material_part:32>;
val p = <skyresources:baseitemcomponent:3>;

var chest = <minecraft:chest>;
var hopper = <minecraft:hopper>;



	#Input Busses
	#Basic Item Input
<modularmachinery:blockinputbus>.displayName = "Basic Item Input";
recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockinputbus>, [
	[<ore:dyeOrange>, hopper, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, chest, <ore:dyeOrange>]]);
	#Intermediate Item Input
<modularmachinery:blockinputbus:1>.displayName = "Intermediate Item Input";
	#Advanced Item Input
<modularmachinery:blockinputbus:2>.displayName = "Advanced Item Input";
	#Elite Item Input
<modularmachinery:blockinputbus:3>.displayName = "Elite Item Input";
	#Insane Item Input
<modularmachinery:blockinputbus:4>.displayName = "Insane Item Input";
	#Ultimate Item Input
<modularmachinery:blockinputbus:5>.displayName = "Ultimate Item Input";
	#Ludicrous Item Input

	#Output Busses
	#Basic Output Bus
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShaped(<modularmachinery:blockoutputbus>, [
	[<ore:dyeOrange>, chest, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, hopper, <ore:dyeOrange>]]);
	#Intermediate Output Bus

	#Advanced Output Bus

	#Elite Output Bus

	#Insane Output Bus

	#Ultimate Output Bus

	#Ludicrous Output Bus


	#Fluid Input Hatches
recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>, [
	[<ore:dyeOrange>, <itank:blocktank>, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, <minecraft:bucket>, <ore:dyeOrange>]]);

	#Fluid Output Hatches
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [
	[<ore:dyeOrange>, <minecraft:bucket>, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, <itank:blocktank>, <ore:dyeOrange>]]);


	#Energy Input Hatches


	#Energy Output Hatches

	#Controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [
	[<ore:dyeOrange>, <minecraft:tripwire_hook>, <ore:dyeOrange>],
	[<minecraft:tripwire_hook>, <actuallyadditions:item_worm>, <minecraft:tripwire_hook>],
	[<ore:dyeOrange>, <skyresources:casing:3>, <ore:dyeOrange>]]);
recipes.addShaped(<modularmachinery:blockcontroller>, [
	[<ore:dyeOrange>, processorBasic, <ore:dyeOrange>],
	[null, casingBasic, null],
	[<ore:dyeOrange>, null, <ore:dyeOrange>]]);

	#Decorative Casings
	#Machine Gearbox
recipes.addShaped(<modularmachinery:blockcasing:3>,[
	[<techreborn:plates:35>,<ore:gearGold>,<techreborn:plates:35>],
	[<contenttweaker:material_part:18>,<mekanism:basicblock:8>,<contenttweaker:material_part:18>],
	[<techreborn:plates:35>,<ore:gearGold>,<techreborn:plates:35>]]);

	#Blueprints
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"}), [
		[<ore:dyeBlack>, <ore:dyeOrange>, <ore:dyeBlack>],
		[<ore:dyeOrange>, <minecraft:paper>, <ore:dyeOrange>],
		[<ore:dyeBlack>, <ore:dyeOrange>, <ore:dyeBlack>]]);

recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assembly_machine"}), [
		<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"})]);

print("---------------Modular Machinery End-----------------");