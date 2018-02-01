
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------- Calculator Start --------------");

	#Basic Greenhouse
recipes.remove(<calculator:basicgreenhouse>);
recipes.addShaped(<calculator:basicgreenhouse>, [
	[null, processorBasic, null],
	[robotArmBasic, casingBasic, <cyclicmagic:block_vacuum>],
	[null, processorBasic, null]]);
	#Reinforced Stone
recipes.remove(<sonarcore:reinforcedstoneblock>);
recipes.addShaped(<sonarcore:reinforcedstoneblock>,[
	[ingotReinforcedStone, ingotReinforcedStone, null],
	[ingotReinforcedStone, ingotReinforcedStone, null]]);
	#Tool Removal
val calcRemoved = [
	<calculator:reinforcedhoe>,
	<calculator:reinforcedshovel>,
	<calculator:reinforcedaxe>,
	<calculator:reinforcedpickaxe>,
	<calculator:reinforcedsword>
	] as IItemStack[];
for item in calcRemoved {mods.jei.JEI.removeAndHide(item);}

print("-------------- Calculator End --------------");
