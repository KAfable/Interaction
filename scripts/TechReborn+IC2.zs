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
	[<ic2:te:46>, null,<ic2:te:46>],
	[plateRefinedIron, plateRefinedIron, plateRefinedIron]]);
recipes.addShaped(<techreborn:iron_alloy_furnace>, [
	[plateRefinedIron, plateRefinedIron, plateRefinedIron],
	[<ic2:te:46>, null, <natura:netherrack_furnace>],
	[plateRefinedIron, plateRefinedIron, plateRefinedIron]]);

print("--------------------TechReborn End-----------------------");

print("------------------------IC2 Start-------------------------");
	#Bronze Dust Removal
recipes.remove(<techreborn:dust:7>);
recipes.remove(<ic2:dust>);
	#Electronic Circuit
recipes.remove(<ic2:crafting:1>);
	#Machine Casing
recipes.remove(<ic2:resource:12>);
	#Rubber
<ore:materialResin>.add(<ic2:misc_resource:4>);




print("------------------------IC2 End-------------------------");

