import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

	#Auto Workbench
recipes.remove(<buildcraftfactory:autoworkbench_item>);
recipes.addShaped(<buildcraftfactory:autoworkbench_item>, [
	[null, <minecraft:crafting_table>, null],
	[<ore:gearStone>, <actuallyadditions:item_worm>, <ore:gearStone>],
	[null, <minecraft:crafting_table>, null]]);