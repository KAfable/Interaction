import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------------Natura Start-----------------");

	#Recipe Removals
recipes.removeByRegex("natura:common/string");
recipes.removeByRegex("natura:common/bread");
recipes.removeByRegex("natura:common/barley_flour");

	#Ghostwood Sapling
mods.skyresources.infusion.removeRecipe(<natura:nether_sapling>);
mods.skyresources.infusion.addRecipe(<natura:nether_sapling>, <minecraft:bone_block>, <minecraft:sapling>, 8);

	#Respawn Obelisk
recipes.remove(<natura:respawn_obelisk>);
recipes.addShaped(<natura:respawn_obelisk>, [
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>],
  [<natura:nether_logs>, <mysticalagriculture:crafting>, <natura:nether_logs>],
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>]]);

print("-------------------Natura End-----------------");

