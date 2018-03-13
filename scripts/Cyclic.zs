import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

	#Automatic Torch
recipes.remove(<cyclicmagic:tool_auto_torch>);
//Make this recipe an astral sorcery related recipes
	
	#Boat Charm
recipes.remove(<cyclicmagic:charm_boat>);
mods.botania.ManaInfusion.addInfusion(<cyclicmagic:charm_boat>, <minecraft:boat>, 1000);

	#Climbing Glove
recipes.remove(<cyclicmagic:glove_climb>);
recipes.addShaped(<cyclicmagic:glove_climb>, [
	[itemSap, itemSap, <minecraft:leather>],
	[itemSap, <ore:dyeBlack>, <minecraft:leather>],
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

	#Experience Pylon
recipes.remove(<cyclicmagic:exp_pylon>);
mods.botania.ManaInfusion.addInfusion(<cyclicmagic:exp_pylon>, <mob_grinding_utils:tank_sink>, 250000);

	#Rod of Elevation
recipes.remove(<cyclicmagic:tool_elevate>);
<cyclicmagic:tool_elevate>.maxDamage = 2;

	#Tank - Fluid Storage
recipes.remove(<cyclicmagic:block_storeempty>);
recipes.addShaped(<cyclicmagic:block_storeempty>, [
	[<ore:plateObsidian>, null, <ore:plateObsidian>],
	[null, <mob_grinding_utils:tank>, null],
	[<ore:plateObsidian>, null, <ore:plateObsidian>]]);
	#Tank - Clearing Recipe

	#Torch Launcher
recipes.remove(<cyclicmagic:tool_torch_launcher>);
recipes.addShaped(<cyclicmagic:tool_torch_launcher>, [
	[null, <minecraft:gold_ingot>, <minecraft:ender_pearl>],
	[null, <silentgems:torchbandolier:1024>, <minecraft:gold_ingot>],
	[<ore:logWood>, null, null]]);

	#Vacuum Collector (Item Collector)
recipes.remove(<cyclicmagic:block_vacuum>);

	#WorkBench
recipes.remove(<cyclicmagic:block_workbench>);
recipes.addShapeless(<cyclicmagic:block_workbench>, [<minecraft:crafting_table>]);



