
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

print("-------------- Calculator Start --------------");

	#Basic Greenhouse
recipes.remove(<calculator:basicgreenhouse>);
recipes.addShaped(<calculator:basicgreenhouse>, [
	[null, processorBasic, null],
	[robotArmBasic, casingBasic, <cyclicmagic:block_vacuum>],
	[null, processorBasic, null]]);

	#Calculator
recipes.remove(<calculator:calculator>);
<calculator:calculator>.addTooltip(format.red("Disabled"));
	#Calculator - Atomic
recipes.remove(<calculator:atomiccalculator>);
<calculator:atomiccalculator>.addTooltip(format.red("Disabled"));
	#Calculator - Flawless
recipes.remove(<calculator:flawlesscalculator>);
<calculator:flawlesscalculator>.addTooltip(format.red("Disabled"));
	#Calculator - Scientific
recipes.remove(<calculator:scientificcalculator>);
<calculator:scientificcalculator>.addTooltip(format.red("Disabled"));

	#Reinforced Stone
recipes.remove(<sonarcore:reinforcedstoneblock>);
recipes.addShaped(<sonarcore:reinforcedstoneblock>,[
	[ingotReinforcedStone, ingotReinforcedStone],
	[ingotReinforcedStone, ingotReinforcedStone]]);

	#Stone Separator
recipes.remove(<calculator:stoneseparator>);
	
	#Tool Removal
val calcRemoved = [
	<calculator:reinforcedhoe>,
	<calculator:reinforcedshovel>,
	<calculator:reinforcedaxe>,
	<calculator:reinforcedpickaxe>,
	<calculator:reinforcedsword>
	] as IItemStack[];
for item in calcRemoved {mods.jei.JEI.removeAndHide(item);}

	#Stable Glass
recipes.removeByRegex("sonarcore:tile.stableglass84");
recipes.addShaped(<sonarcore:stableglass>*4, [
	[<ore:blockGlass>, plateRubber],
	[plateRubber, <ore:blockGlass>]]);

RecipeBuilder.get("basic")
    .setShapeless([<ore:blockGlass>, <ore:blockGlass>])
    .setFluid(<liquid:rubber> * 288)
    .addTool(<ore:artisansCutters>, 4)
    .addOutput(<sonarcore:stableglass>*4)
    .create();

print("-------------- Calculator End --------------");
