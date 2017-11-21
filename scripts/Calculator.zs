import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

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
	[<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, null],
	[<contenttweaker:material_part:32>, <contenttweaker:material_part:32>, null]]);

