import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------- Calculator Start --------------");

//SG replaces these
val calcRemoved = [
	<calculator:reinforcedhoe>,
	<calculator:reinforcedshovel>,
	<calculator:reinforcedaxe>,
	<calculator:reinforcedpickaxe>,
	<calculator:reinforcedsword>
	] as IItemStack[];

for item in calcRemoved {mods.jei.JEI.removeAndHide(item);}

recipes.remove(<sonarcore:reinforcedstoneblock>);
recipes.addShaped(<sonarcore:reinforcedstoneblock>,[
	[<contenttweaker:material_part:35>, <contenttweaker:material_part:35>, null],
	[<contenttweaker:material_part:35>, <contenttweaker:material_part:35>, null]]);

print("-------------- Calculator End --------------");