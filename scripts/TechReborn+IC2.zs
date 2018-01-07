import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("--------------------TechReborn Start-----------------------");

var refIron = <techreborn:ingot:19>;
var bCir = <techreborn:part:29>;

	#Too Easy Generators
mods.jei.JEI.removeAndHide(<techreborn:solar_panel>);
mods.jei.JEI.removeAndHide(<techreborn:solar_panel:1>);
mods.jei.JEI.removeAndHide(<techreborn:solar_panel:2>);
mods.jei.JEI.removeAndHide(<techreborn:solar_panel:3>);
mods.jei.JEI.removeAndHide(<techreborn:wind_mill>);
mods.jei.JEI.removeAndHide(<techreborn:water_mill>);

	#Basic Machine Frame
recipes.addShaped(<techreborn:machine_frame>, [
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>],
	[<ore:plateRefinedIron>, null, <ore:plateRefinedIron>],
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>]]);
	
recipes.addShapeless(<contenttweaker:vulcanizedresin>, [<ore:dustSulfur>, <ore:materialResin>]);

recipes.remove(<techreborn:part:29>);
recipes.addShapeless(<techreborn:part:29>, 
	[<immersiveengineering:material:27>, <advgenerators:controller>, <forestry:soldering_iron>.giveBack()]);

recipes.remove(<techreborn:industrial_electrolyzer>);
recipes.addShaped(<techreborn:industrial_electrolyzer>,[
[<ore:plateIron>,<techreborn:extractor>,<ore:plateIron>],
[<ore:circuitBasic>,<techreborn:extractor>,<ore:circuitBasic>],
[<ore:plateSteel>,<techreborn:extractor>,<ore:plateSteel>]
]);

recipes.remove(<techreborn:machine_casing>);
recipes.addShaped(<techreborn:machine_casing>*2, [
[<ore:plateSteel>,<techreborn:plates:34>,<ore:plateSteel>],
[<ore:circuitBasic>,<mekanism:enrichedalloy>,<ore:circuitBasic>],
[<ore:plateSteel>,<techreborn:plates:34>,<ore:plateSteel>]
]);

//////////////////////////////////
//Disallow crafting of bronze dust
//////////////////////////////////
recipes.remove(<techreborn:dust:7>);

print("--------------------TechReborn End-----------------------");