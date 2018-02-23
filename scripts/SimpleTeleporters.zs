
print("-------------- Simple Teleporters Start --------------");
	#Ender Shard
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<minecraft:ender_eye>);
furnace.remove(<lteleporters:endercrystal>);
mods.botania.ManaInfusion.addInfusion(<lteleporters:endercrystal>, <minecraft:ender_eye>, 100000);

	#Teleporter
recipes.remove(<lteleporters:teleporter>);
recipes.addShaped(<lteleporters:teleporter>, [
	[<lteleporters:endercrystal>, <minecraft:gold_block>, <lteleporters:endercrystal>],
	[<ore:stoneMarble>, <botania:pool>, <ore:stoneMarble>],
	[<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]]);

print("-------------- Simple Teleporters End ----------------");