import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
print("-----------------Random Things Start----------------");
	#Block Breaker
recipes.remove(<randomthings:blockbreaker>);
recipes.addShaped(<randomthings:blockbreaker>, [
	[<ore:stone>, <minecraft:stone_pickaxe>, <ore:stone>],
	[<ore:stone>, processorBasic, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]]);

	#Item Collector
recipes.remove(<cyclicmagic:block_vacuum>);
recipes.addShaped(<cyclicmagic:block_vacuum>, [
	[plateReinforcedStone, <minecraft:lever>, plateReinforcedStone],
	[<ore:hopper>, <ore:chestWood>, <ore:hopper>],
	[<ore:hopper>, <ore:enderpearl>, <ore:hopper>]]);

print("------------------Random Things End-----------------");