recipes.removeByRecipeName("natura:common/string");

mods.skyresources.infusion.removeRecipe(<natura:nether_sapling>);
mods.skyresources.infusion.addRecipe(<natura:nether_sapling>, <minecraft:bone_block>, <minecraft:sapling>, 8);

	#Respawn Obelisk
recipes.remove(<natura:respawn_obelisk>);
recipes.addShaped(<natura:respawn_obelisk>, [
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>],
  [<natura:nether_logs>, <mysticalagriculture:crafting>, <natura:nether_logs>],
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>]]);
