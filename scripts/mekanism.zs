import mods.mekanism.infuser as inf;

//inf.removeRecipe(<mekanism:controlcircuit>);

var casingSteel = <mekanism:basicblock:8>;

recipes.remove(<mekanism:basicblock:8>);
recipes.addShapeless(<mekanism:basicblock:8>,[
<immersiveengineering:metal_decoration1:1>, <ic2:resource:12>]);

recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [
	[<ore:ingotSteel>,<ic2:te:33>,<cyclicmagic:block_storeempty>],
	[<contenttweaker:basicvalve>,casingSteel,<cyclicmagic:block_storeempty>],
	[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]
	]);

inf.addRecipe("TIN", 100, <twilightforest:fiery_ingot>, <contenttweaker:material_part:16>);