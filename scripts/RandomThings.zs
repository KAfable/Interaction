import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
print("-----------------Random Things Start----------------");
	#Random Things
recipes.remove(<randomthings:blockbreaker>);
recipes.addShaped(<randomthings:blockbreaker>, [
	[<ore:stone>, <minecraft:stone_pickaxe>, <ore:stone>],
	[<ore:stone>, processorBasic, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]]);

print("------------------Random Things End-----------------");