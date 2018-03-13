import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import mods.artisanworktables.builder.RecipeBuilder;

print("----------------Forestry Start----------------");

	#Bog Earth
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:dirt>, <minecraft:sand>, <minecraft:dirt>],
    [<minecraft:sand>, <minecraft:rotten_flesh>, <minecraft:sand>],
    [<minecraft:dirt>, <minecraft:sand>, <minecraft:dirt>]])
  .addOutput(<forestry:bog_earth>*6)
  .setFluid(<liquid:water>*100)
  .create();

	#Bronze Pickaxe (Survivalist's Pickaxe)
mods.jei.JEI.removeAndHide(<forestry:bronze_pickaxe>);

	#Carpenter
recipes.remove(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>, [
	[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>],
	[<ore:plateBronze>, <forestry:sturdy_machine>, <ore:plateBronze>],
	[<ore:plateBronze>, <forestry:chipsets>, <ore:plateBronze>]]);
	#Carpenter Removal
var carpenterRemoved = [
	<forestry:ingot_bronze>,
	<skyresources:beeattractor>,
	<forestry:hardened_machine>] as IItemStack[];
for i in carpenterRemoved {
	mods.forestry.Carpenter.removeRecipe(i);}
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);

	#Circuit Board - Basic 
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
recipes.addShaped(<forestry:chipsets>*2, [
	[plateRubber, plateRubber, plateRubber],
	[plateTin, plateTin, plateTin],
	[plateRubber, plateRubber, plateRubber]]);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>, [
	[null, null, null],
	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
	[null, null, null]], 40, <liquid:menrilresin>*1000);
	
	#Circuit Board - Enhanced 
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
recipes.addShaped(<forestry:chipsets:1>, [
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]]);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:1>, [
	[null, null, null],
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[null, null, null]], 40, <liquid:menrilresin>*1000);
	
	#Circuit Board - Intricate
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>.withTag({T: 3 as short}));

	#Circuit Board - Refined 
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
recipes.addShaped(<forestry:chipsets:2>, [
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]]);


	#Farm - Arboretum
recipes.removeByRegex("forestry:arboretum");
recipes.addShaped(<forestry:arboretum>, [
	[<ore:plateBronze>, <ore:treeSapling>, <ore:plateBronze>],
	[<randomthings:itemcollector>, casingBasic, <itank:blocktank>],
	[<ore:plateBronze>, robotArmBasic, <ore:plateBronze>]]);

	#Farm - Farm (Crops)
recipes.removeByRegex("forestry:farm_crops");
recipes.addShaped(<forestry:farm_crops>, [
	[<ore:plateBronze>, <ore:listAllseed>, <ore:plateBronze>],
	[<randomthings:itemcollector>, casingBasic, <itank:blocktank>],
	[<ore:plateBronze>, robotArmBasic, <ore:plateBronze>]]);

	#Farm - Farm (Gourd)
recipes.removeByRegex("forestry:farm_gourd");
recipes.addShaped(<forestry:farm_gourd>, [
	[<ore:plateBronze>, <minecraft:melon_block>, <ore:plateBronze>],
	[<randomthings:itemcollector>, casingBasic, <itank:blocktank>],
	[<ore:plateBronze>, robotArmBasic, <ore:plateBronze>]]);

	#Farm - Farm (Netherwart)
recipes.removeByRegex("forestry:farm_nether");
recipes.addShaped(<forestry:farm_nether>, [
	[<ore:plateBronze>, <ore:cropNetherWart>, <ore:plateBronze>],
	[<randomthings:itemcollector>, casingBasic, <itank:blocktank>],
	[<ore:plateBronze>, robotArmBasic, <ore:plateBronze>]]);

	#Farm - Farm (Ender)
recipes.removeByRegex("forestry:farm_ender");
recipes.addShaped(<forestry:farm_ender>, [
	[<ore:plateBronze>, <minecraft:chorus_fruit>, <ore:plateBronze>],
	[<randomthings:itemcollector>, casingBasic, <itank:blocktank>],
	[<ore:plateBronze>, robotArmBasic, <ore:plateBronze>]]);

	#Farm - Peat_bog
recipes.removeByRegex("forestry:peat_bog");
recipes.addShaped(<forestry:peat_bog>, [
	[<ore:brickPeat>, processorBasic, <ore:brickPeat>],
	[<randomthings:itemcollector>, casingBasic, <charset:fluidtank>],
	[<ore:brickPeat>, robotArmBasic, <ore:brickPeat>]]);

	#Multifarm Materials
var farmMaterials as IItemStack[] = [
	<minecraft:stonebrick>,
	<minecraft:stonebrick:1>,
	<minecraft:stonebrick:2>,
	<minecraft:brick_block>,
	<minecraft:sandstone:2>,
	<minecraft:sandstone:1>,
	<minecraft:nether_brick>,
	<minecraft:stonebrick:3>,
	<minecraft:quartz_block>,
	<minecraft:quartz_block:1>,
	<minecraft:quartz_block:2>];
	#Farm Block
recipes.remove(<forestry:ffarm>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShaped(<forestry:ffarm>.withTag(tag), [
		[null, null, null],
		[<ore:stickIron>, farmMaterials[i], <ore:stickIron>],
		[null, <forestry:thermionic_tubes:1>, null]]);
}
	#Farm Control (for Redstone Control)
recipes.remove(<forestry:ffarm:5>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShapeless(<forestry:ffarm:5>.withTag(tag), 
		[<forestry:ffarm>.withTag(tag), gearRedstone]);
}
	#Farm Gearbox (Power Input)
recipes.remove(<forestry:ffarm:2>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShaped(<forestry:ffarm:2>.withTag(tag), [
		[null, <industrialforegoing:block_destroyer>, null],
		[null, <forestry:ffarm>.withTag(tag), null],
		[<ore:gearTin>, <ore:gearTin>, <ore:gearTin>]]);
}

	#Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 0}));
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShaped(<forestry:ffarm:3>.withTag(tag), [
		[null, <contenttweaker:basicconveyor>, null],
		[null, <forestry:ffarm>.withTag(tag), null],
		[null, <minecraft:chest>, null]]);
}
	#Farm Valve
recipes.remove(<forestry:ffarm:4>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShapeless(<forestry:ffarm:4>.withTag(tag), [
		<forestry:ffarm>.withTag(tag), <contenttweaker:basicvalve>]);
}

	#Pickaxe Kit
mods.jei.JEI.removeAndHide(<forestry:kit_pickaxe>);

	#Sturdy Casing
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [
	[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>],
	[<ore:plateBrass>,<minecraft:minecart>,<ore:plateBrass>],
	[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>]]);	
	#Thermionic Fabricator
mods.jei.JEI.removeAndHide(<forestry:fabricator>);
#All Recipes were moved to Artisan's Worktables

	#Soldering Iron
mods.forestry.Carpenter.removeRecipe(<forestry:soldering_iron>);

	#Peat-Fired Engine
recipes.remove(<forestry:engine_peat>);
recipes.addShaped(<forestry:engine_peat>, [
	[null, fluxductBasic, null],
	[<ore:gearBronze>, <forestry:chipsets>, <ore:gearBronze>],
	[<ore:blockBronze>, electricPistonBasic, <ore:blockBronze>]]);

	#Biogas Engine
recipes.remove(<forestry:engine_biogas>);
recipes.addShaped(<forestry:engine_biogas>, [
	[null,<thermaldynamics:duct_0>,null],
	[<ore:gearBronze>,<forestry:chipsets>,<ore:gearBronze>],
	[<ore:blockBronze>,<minecraft:lava_bucket>,<ore:blockBronze>]]);


	#Soldering Iron
recipes.remove(<forestry:soldering_iron>);
recipes.addShaped(<forestry:soldering_iron>, [
	[null,<ore:ingotIron>,null],
	[<ore:ingotIron>,null,<ore:ingotIron>],
	[null,null,<ore:ingotSteel>]]);


print("-----------------Forestry End-----------------");