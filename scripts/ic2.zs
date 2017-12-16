var refIron = <techreborn:ingot:19>;
var bCir = <techreborn:part:29>;

recipes.removeShapeless(<ic2:resource:12>, [null]);
recipes.remove(<ic2:resource:12>);

furnace.remove(<ic2:crafting>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<ic2:misc_resource:4>);
furnace.remove(<techreborn:part:32>);
<ore:materialResin>.add(<ic2:misc_resource:4>);

recipes.addShapeless(<techreborn:part:31>, [<ic2:misc_resource:4>]);
recipes.addShapeless(<ic2:misc_resource:4>, [<techreborn:part:31>]);

recipes.addShapeless(<contenttweaker:vulcanizedresin>, [<ore:dustSulfur>, <ore:materialResin>]);
furnace.addRecipe(<ic2:crafting>, <contenttweaker:vulcanizedresin>);

recipes.remove(<techreborn:cable:*>);

recipes.remove(<ic2:crafting:1>);
recipes.remove(<techreborn:part:29>);
recipes.addShapeless(<techreborn:part:29>, 
	[<immersiveengineering:material:27>, <advgenerators:controller>, <forestry:soldering_iron>.giveBack()]);

recipes.removeShaped(<techreborn:machine_frame>);
recipes.addShaped(<ic2:resource:12>, [
[refIron,refIron,refIron],
[refIron,bCir,refIron],
[refIron,refIron,refIron]
]);

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

recipes.remove(<ic2:ingot>);