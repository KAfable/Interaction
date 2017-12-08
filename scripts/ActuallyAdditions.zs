import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("Actually Additions Start");

recipes.addShaped(<actuallyadditions:item_worm>, [
	[null, null, null],
	[<waterstrainer:worm>, <waterstrainer:worm>, <waterstrainer:worm>],
	[null, null, null]]);

mods.jei.JEI.removeAndHide(<actuallyadditions:item_void_bag>);
recipes.remove(<actuallyadditions:item_bag>);
recipes.addShaped(<actuallyadditions:item_bag>, [
	[<minecraft:string>, <minecraft:leather>, <minecraft:string>],
	[<minecraft:string>, <thermalexpansion:satchel>, <minecraft:string>],
	[<minecraft:leather>, null, <minecraft:leather>]]);

print("Actually Additions End");
