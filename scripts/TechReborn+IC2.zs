import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("--------------------TechReborn Start-----------------------");

	#Advanced Circuit
recipes.remove(<techreborn:part:30>);
	#Advanced Processor / Energy Flow Circuit
recipes.remove(processorAdvanced);
	#Electronic Circuit
recipes.remove(<techreborn:part:29>);
	#Basic Machine Frame
recipes.remove(<techreborn:machine_frame>);
recipes.addShaped(<techreborn:machine_frame>, [
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>],
	[<ore:plateRefinedIron>, null, <ore:plateRefinedIron>],
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
	[<ic2:te:46>, null,<ic2:te:46>],
	[plateRefinedIron, plateRefinedIron, plateRefinedIron]]);
recipes.addShaped(<techreborn:iron_alloy_furnace>, [
	[plateRefinedIron, plateRefinedIron, plateRefinedIron],
	[<ic2:te:46>, null, <natura:netherrack_furnace>],
	[plateRefinedIron, plateRefinedIron, plateRefinedIron]]);

print("--------------------TechReborn End-----------------------");

print("------------------------IC2 Start-------------------------");
	#Rubber
<ore:materialResin>.add(<ic2:misc_resource:4>);

	#Electronic Circuit
recipes.remove(<ic2:crafting:1>);
recipes.addShaped(<ic2:crafting:1>, [
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
	[<forestry:thermionic_tubes:8>, <forestry:chipsets>, <forestry:thermionic_tubes:8>],
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);


	#Disallow crafting of bronze dust
recipes.remove(<techreborn:dust:7>);
recipes.remove(<ic2:dust>);

print("------------------------IC2 End-------------------------");

