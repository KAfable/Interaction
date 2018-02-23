import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.liquid.ILiquidStack;

print("--------------Modular Machinery Start----------------");

#Casings
	#Machine Gearbox
	#Machine Casing
recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing>*2, [
	[plateBronze, null, plateBronze],
	[null, casingBasic, null],
	[plateBronze, null, plateBronze]]);
	#Machine Casing - Intermediate
recipes.remove(<modularmachinery:blockcasing:4>);


#Input Busses
	#Basic Item Input
<modularmachinery:blockinputbus>.displayName = "Basic Item Input";
recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockinputbus>, [
	[<ore:dyeOrange>, <minecraft:hopper>, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, <minecraft:chest>, <ore:dyeOrange>]]);
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
<modularmachinery:blockinputbus:6>.displayName = "Ludicrous Item Input";

#Output Busses
	#Basic Output Bus
<modularmachinery:blockoutputbus>.displayName = "Basic Item Output";
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShaped(<modularmachinery:blockoutputbus>, [
	[<ore:dyeOrange>, <minecraft:chest>, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, <minecraft:chest>, <ore:dyeOrange>]]);
	#Intermediate Output Bus
<modularmachinery:blockoutputbus:1>.displayName = "Intermediate Item Output";
	#Advanced Output Bus
<modularmachinery:blockoutputbus:2>.displayName = "Advanced Item Output";
	#Elite Output Bus
<modularmachinery:blockoutputbus:3>.displayName = "Elite Item Output";
	#Insane Output Bus
<modularmachinery:blockoutputbus:4>.displayName = "Insane Item Output";
	#Ultimate Output Bus
<modularmachinery:blockoutputbus:5>.displayName = "Ultimate Item Output";
	#Ludicrous Output Bus
<modularmachinery:blockoutputbus:6>.displayName = "Ludicrous Item Output";

#Fluid Input Hatches
	#Basic Fluid Input Hatch
<modularmachinery:blockfluidinputhatch>.displayName = "Basic Fluid Input Hatch";
recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>, [
	[<ore:dyeOrange>, <itank:blocktank>, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, <minecraft:bucket>, <ore:dyeOrange>]]);
	#Intermediate Fluid Input Hatch
<modularmachinery:blockfluidinputhatch:1>.displayName = "Intermediate Fluid Input Hatch";
	#Advanced Fluid Input Hatch
<modularmachinery:blockfluidinputhatch:2>.displayName = "Advanced Fluid Input Hatch";
	#Elite Fluid Input Hatch
<modularmachinery:blockfluidinputhatch:3>.displayName = "Elite Fluid Input Hatch";
	#Insane Fluid Input Hatch
<modularmachinery:blockfluidinputhatch:4>.displayName = "Insane Fluid Input Hatch";
	#Ultimate Fluid Input Hatch
<modularmachinery:blockfluidinputhatch:5>.displayName = "Ultimate Fluid Input Hatch";
	#Ludicrous Fluid Input Hatch
<modularmachinery:blockfluidinputhatch:6>.displayName = "Ludicrous Fluid Input Hatch";

#Fluid Output Hatches
	#Basic Fluid Output Hatch
<modularmachinery:blockfluidoutputhatch>.displayName = "Basic Fluid Output Hatch";
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [
	[<ore:dyeOrange>, <minecraft:bucket>, <ore:dyeOrange>],
	[null, <skyresources:casing:3>, null],
	[<ore:dyeOrange>, <itank:blocktank>, <ore:dyeOrange>]]);
	#Intermediate Fluid Output Hatch
<modularmachinery:blockfluidoutputhatch:1>.displayName = "Intermediate Fluid Output Hatch";
	#Advanced Fluid Output Hatch
<modularmachinery:blockfluidoutputhatch:2>.displayName = "Advanced Fluid Output Hatch";
	#Elite Fluid Output Hatch
<modularmachinery:blockfluidoutputhatch:3>.displayName = "Elite Fluid Output Hatch";
	#Insane Fluid Output Hatch
<modularmachinery:blockfluidoutputhatch:4>.displayName = "Insane Fluid Output Hatch";
	#Ultimate Fluid Output Hatch
<modularmachinery:blockfluidoutputhatch:5>.displayName = "Ultimate Fluid Output Hatch";
	#Ludicrous Fluid Output Hatch
<modularmachinery:blockfluidoutputhatch:6>.displayName = "Ludicrous Fluid Output Hatch";

#Energy Input Hatches
	#Basic Energy Input Hatch
<modularmachinery:blockenergyinputhatch>.displayName = "Basic Energy Input Hatch";
recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch>, [
	[null, fluxductBasic, null],
	[null, <modularmachinery:blockcasing>, null],
	[null, fluxductBasic, null]]);
	#Intermediate Energy Input Hatch
<modularmachinery:blockenergyinputhatch:1>.displayName = "Intermediate Energy Input Hatch";
	#Advanced Energy Input Hatch
<modularmachinery:blockenergyinputhatch:2>.displayName = "Advanced Energy Input Hatch";
	#Elite Energy Input Hatch
<modularmachinery:blockenergyinputhatch:3>.displayName = "Elite Energy Input Hatch";
	#Insane Energy Input Hatch
<modularmachinery:blockenergyinputhatch:4>.displayName = "Insane Energy Input Hatch";
	#Ultimate Energy Input Hatch
<modularmachinery:blockenergyinputhatch:5>.displayName = "Ultimate Energy Input Hatch";
	#Ludicrous Energy Input Hatch
<modularmachinery:blockenergyinputhatch:6>.displayName = "Ludicrous Energy Input Hatch";

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


#Blueprints
	#Portal Fabricator - Tier 2
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"}), [
		[<ore:dyeBlack>, <ore:dyeOrange>, <ore:dyeBlack>],
		[<ore:dyeOrange>, <minecraft:paper>, <ore:dyeOrange>],
		[<ore:dyeBlack>, <ore:dyeOrange>, <ore:dyeBlack>]]);

	#Universal Utility Machine
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assembly_machine"}), [
		<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"})]);

print("---------------Modular Machinery End-----------------");
