import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

# Remove all recipes for standard swords (this removes example recipes and the
# actual crafting recipes).
recipes.remove(<silentgems:sword>);

#Add tool recipes. This function also adds appropriate example recipes.
#mods.silentgems.setToolRecipe(toolClass:string, tierRestriction:int,
#                              recipeLayout:array, extraParameters:array)
# Argument 1: Tool name (sword, pickaxe, katana, etc.)
# Argument 2: Tier restriction. Set to -1 to use the same recipe for all
#             tiers. Otherwise, 0 is mundane, 1 is regular, 2 is super. You
#             will need to set a recipe for each tier you want to be craftable
#             if not using -1.
# Argument 3: Array with recipe layout. This is similar to how mods define (or
#             used to define) recipes. Must contain at least one 'h' (head)
#             and one 'r' (rod). The length of each string in the array must
#             be equal. Use spaces for empty positions.
# Argument 4: Array with item map for optional pieces. This is where you map
#             out letters in the layout to specific items. You may not map 'h'
#             or 'r'. This array may be empty.
#             You cannot use the usual way of defining items in CraftTweaker
#             (using the angle brackets). I could not figure out how to make
#             that work with what I needed to do. Instead, replace the angle
#             brackets with quotes. Otherwise, it should work the same way,
#             including ore dictionary support.

#Re-add the mundane and regular recipes, unmodified.
mods.silentgems.setToolRecipe('sword', 0, ['h', 'h', 'r'], []);
mods.silentgems.setToolRecipe('sword', 1, ['h', 'h', 'r'], []);

#Add ender frost to super-tier sword recipe. It could be an item from any mod or vanilla, of course.
mods.silentgems.setToolRecipe('sword', 2, ['h ', 'h ', 'rs'], ['s', 'silentgems:craftingmaterial:18']);
recipes.remove(<silentgems:katana>);

#Katana recipe that also changes the shape, adding an extra head material.
#Allow any tier to be crafted if enabled in the config.
mods.silentgems.setToolRecipe('katana', -1, ['hh', 'hs', 'hr'], ['s', 'ore:plankWood']);

recipes.remove(<silentgems:leggings>);
recipes.remove(<silentgems:boots>);
recipes.remove(<silentgems:helmet>);
recipes.remove(<silentgems:chestplate>);

	#Polisher
recipes.remove(<sgextraparts:polisher>);
recipes.addShaped(<sgextraparts:polisher>, [
  [<ore:logWood>, <ore:logWood>, null],
  [<ore:stick>, <ore:stick>, null]]);
	#Enchantment Token - Holding
recipes.addShaped(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "cofhcore:holding"}]}), [
	[<actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest>],
	[<actuallyadditions:block_giant_chest>, <minecraft:glowstone>, <actuallyadditions:block_giant_chest>],
	[<actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest> ]]);
	#Torch Bandolier
recipes.removeShaped(<silentgems:torchbandolier:1024>);
recipes.addShaped(<silentgems:torchbandolier:1024>, [
	[<ore:leather>, <ore:leather>, <ore:leather>],
	[<ore:stickWood>, <actuallyadditions:block_giant_chest>, <ore:stickWood>],
	[<ore:leather>, <ore:leather>, <ore:leather>]]);