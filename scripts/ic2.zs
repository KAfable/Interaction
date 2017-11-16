recipes.removeShapeless(<ic2:resource:12>, [null]);

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