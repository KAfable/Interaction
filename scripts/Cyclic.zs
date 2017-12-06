import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

recipes.remove(<cyclicmagic:glove_climb>);
recipes.addShaped(<cyclicmagic:glove_climb>, [
	[<ic2:misc_resource:4>, <ic2:misc_resource:4>, <minecraft:leather>],
	[<ic2:misc_resource:4>, <ore:dyeBlack>, <minecraft:leather>],
	[<minecraft:leather>, <minecraft:leather>, ]]);

recipes.remove(<cyclicmagic:clock>);
recipes.addShaped(<cyclicmagic:clock>, [
	[<minecraft:iron_ingot>, <minecraft:redstone>,<minecraft:iron_ingot>],
	[<minecraft:redstone>, <extrautils2:redstoneclock>, <minecraft:redstone>],
	[<minecraft:iron_ingot>, <contenttweaker:material_part:194>,<minecraft:iron_ingot>]]);