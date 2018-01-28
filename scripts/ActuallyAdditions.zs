import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("--------------------------Actually Additions Start--------------------------");

	#Small Crate
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.addShaped(<actuallyadditions:block_giant_chest>, [
	[<ore:chestWood>, <ore:plankWood>, <ore:chestWood>],
	[<ore:plankWood>, <projecte:alchemical_chest>, <ore:plankWood>],
	[<ore:chestWood>, <ore:plankWood>, <ore:chestWood>]]);
	#Void Bag
mods.jei.JEI.removeAndHide(<actuallyadditions:item_void_bag>);
recipes.remove(<actuallyadditions:item_bag>);
recipes.addShaped(<actuallyadditions:item_bag>, [
	[<minecraft:string>, <minecraft:leather>, <minecraft:string>],
	[<minecraft:string>, <thermalexpansion:satchel>, <minecraft:string>],
	[<minecraft:leather>, null, <minecraft:leather>]]);
	#Worm
recipes.addShaped(<actuallyadditions:item_worm>, [
	[null, null, null],
	[<waterstrainer:worm>, <waterstrainer:worm>, <waterstrainer:worm>],
	[null, null, null]]);
	#Powered Furnace
recipes.remove(<actuallyadditions:block_furnace_double>);
	#Vertical Miner
mods.jei.JEI.removeAndHide(<actuallyadditions:block_miner>);
	#Flax
vanilla.seeds.addSeed(<actuallyadditions:item_flax_seed> % 10);

print("--------------------------Actually Additions End--------------------------");
