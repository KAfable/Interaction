furnace.remove(<ic2:crafting>);
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<ic2:misc_resource:4>);
furnace.remove(<techreborn:part:32>);
<ore:materialResin>.add(<ic2:misc_resource:4>);
recipes.addShapeless(<techreborn:part:31>, [<ic2:misc_resource:4>]);
recipes.addShapeless(<ic2:misc_resource:4>, [<techreborn:part:31>]);

recipes.addShapeless(<contenttweaker:vulcanizedresin>, [<ore:dustSulfur>, <ore:materialResin>]);
furnace.addRecipe(<ic2:crafting>, <contenttweaker:vulcanizedresin>);