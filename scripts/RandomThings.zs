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
recipes.remove(<randomthings:itemcollector>);
recipes.addShaped(<randomthings:itemcollector>, [
	[plateReinforcedStone, null, plateReinforcedStone],
	[<ore:hopper>, <ore:chestWood>, <ore:hopper>],
	[<ore:hopper>, <ore:enderpearl>, <ore:hopper>]]);
recipes.addShaped(<randomthings:itemcollector>, [
	[<ore:plateIron>, null, <ore:plateIron>],
	[<ore:hopper>, <ore:chestWood>, <ore:hopper>],
	[<ore:hopper>, <ore:enderpearl>, <ore:hopper>]]);

	#Item Collector - Advanced
recipes.remove(<randomthings:advanceditemcollector>);

	#Lapis Lamp
recipes.remove(<randomthings:lapislamp>);
recipes.addShaped(<randomthings:lapislamp>, [
	[null, <ore:gemLapis>, null],
	[<ore:gemLapis>, <ore:torch>, <ore:gemLapis>],
	[null, <ore:gemLapis>, null]]);
	
print("------------------Random Things End-----------------");