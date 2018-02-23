import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

	#Automatic Torch
recipes.remove(<cyclicmagic:tool_auto_torch>);
//Make this recipe an astral sorcery related recipes
	
	#Climbing Glove
recipes.remove(<cyclicmagic:glove_climb>);
recipes.addShaped(<cyclicmagic:glove_climb>, [
	[<ic2:misc_resource:4>, <ic2:misc_resource:4>, <minecraft:leather>],
	[<ic2:misc_resource:4>, <ore:dyeBlack>, <minecraft:leather>],
	[<minecraft:leather>, <minecraft:leather>, ]]);
	
	#Clock
recipes.remove(<cyclicmagic:clock>);
recipes.addShaped(<cyclicmagic:clock>, [
	[<minecraft:iron_ingot>, <minecraft:redstone>,<minecraft:iron_ingot>],
	[<minecraft:redstone>, <extrautils2:redstoneclock>, <minecraft:redstone>],
	[<minecraft:iron_ingot>, gearRedstone,<minecraft:iron_ingot>]]);
	
	#Combat Dynamite
recipes.remove(<cyclicmagic:dynamite_safe>);
recipes.addShaped(<cyclicmagic:dynamite_safe>*3, [
	[<evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>],
	[null, <minecraft:tnt>, null],
	[<evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>]]);
	#Torch Launcher
recipes.remove(<cyclicmagic:tool_torch_launcher>);
recipes.addShaped(<cyclicmagic:tool_torch_launcher>, [
	[null, <minecraft:gold_ingot>, <minecraft:ender_pearl>],
	[null, <silentgems:torchbandolier:1024>, <minecraft:gold_ingot>],
	[<ore:logWood>, null, null]]);

	#WorkBench
recipes.remove(<cyclicmagic:block_workbench>);
recipes.addShapeless(<cyclicmagic:block_workbench>, [<minecraft:crafting_table>]);


