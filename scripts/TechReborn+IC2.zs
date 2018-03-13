import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("--------------------TechReborn Start-----------------------");

	#Advanced Circuit
recipes.remove(<techreborn:part:30>);
	#Advanced Processor / Energy Flow Circuit
recipes.remove(processorAdvanced);


	#Bauxite Dust
recipes.removeByRegex("thermalfoundation:dust_19");
recipes.remove(<techreborn:smalldust:5>);

	#Copper Dust / Small Pile of Copper Dust
mods.jei.JEI.removeAndHide(<techreborn:dust:14>);
mods.jei.JEI.removeAndHide(<techreborn:smalldust:14>);

	#Electronic Circuit
recipes.remove(<techreborn:part:29>);
recipes.addShaped(circuitBasic, [
	[plateRubber, <ore:wireCopper>, plateRubber],
	[plateRedstone, <ore:plateRefinedIron>, plateRedstone],
	[<ore:wireCopper>, <ore:wireCopper>, <ore:wireCopper>]]);
	#Basic Machine Frame
recipes.remove(<techreborn:machine_frame>);
recipes.addShaped(<techreborn:machine_frame>, [
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>],
	[<ore:plateRefinedIron>, fluxductBasic, <ore:plateRefinedIron>],
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]]);
	#Too Easy Generators
mods.jei.JEI.removeAndHide(<techreborn:solar_panel>);
mods.jei.JEI.removeAndHide(<techreborn:solar_panel:1>);
mods.jei.JEI.removeAndHide(<techreborn:solar_panel:2>);
mods.jei.JEI.removeAndHide(<techreborn:solar_panel:3>);
mods.jei.JEI.removeAndHide(<techreborn:wind_mill>);
mods.jei.JEI.removeAndHide(<techreborn:water_mill>);
	#Industrial Electrolyzer
recipes.remove(<techreborn:industrial_electrolyzer>);
recipes.addShaped(<techreborn:industrial_electrolyzer>,[
	[<ore:plateIron>, <techreborn:extractor>, <ore:plateIron>],
	[circuitBasic, casingBasic, circuitBasic],
	[<ore:plateSteel>, <techreborn:extractor>, <ore:plateSteel>]]);

	#Iron Furnace Disabled due to redundancy
mods.jei.JEI.removeAndHide(<techreborn:iron_furnace>);

	#Iron Alloy Smelter
recipes.remove(<techreborn:iron_alloy_furnace>);
recipes.addShaped(<techreborn:iron_alloy_furnace>, [
	[plateRefinedIron, plateRefinedIron, plateRefinedIron],
	[plateRefinedIron, null, <natura:netherrack_furnace>],
	[plateRefinedIron, plateRefinedIron, plateRefinedIron]]);

	#Pickaxes
	#Pickaxe - Bronze
mods.jei.JEI.removeAndHide(<techreborn:bronzepickaxe>);

	#Rubber
mods.techreborn.extractor.removeInputRecipe(<ore:slimeball>);
mods.techreborn.extractor.removeInputRecipe(<techreborn:part:31>);
mods.techreborn.extractor.removeInputRecipe(<techreborn:rubber_sapling>);
mods.techreborn.extractor.removeInputRecipe(<techreborn:rubber_log>);

print("--------------------TechReborn End-----------------------");

