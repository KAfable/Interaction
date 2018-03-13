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

	#Enchantment Tokens
recipes.remove(<silentgems:enchantmenttoken:256>);

	#Flint LEggings

	#Pickaxes
	#Pickaxe - Bronze
recipes.remove(<silentgems:pickaxe>.withTag({SG_UUIDLeast: -7356875614766090619 as long, SGProperties: {ToolTier: 1, MeleeDamage: 2.0 as float, MagicDamage: 1.0 as float, Enchantability: 11, ChargeSpeed: 1.0 as float, HarvestSpeed: 6.0 as float, MeleeSpeed: 1.1 as float, Durability: 500, HarvestLevel: 2, Protection: 17.0 as float}, SGStatistics: {OriginalOwner: "a cheater!"}, SGConstruction: {PartRod: "silentgems:rodwood#NONE", Part0: "sgextraparts:bronze#NONE", Part2: "sgextraparts:bronze#NONE", Part1: "sgextraparts:bronze#NONE"}, display: {Name: "Bronze Pickaxe"}, SG_UUIDMost: 2271937597147136964 as long}), true);

	#Polisher
recipes.remove(<sgextraparts:polisher>);
recipes.addShaped(<sgextraparts:polisher>, [
  [<ore:logWood>, <ore:logWood>],
  [<ore:stickWood>, <ore:stickWood>]]);

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
	#Iron Rod
recipes.remove(<silentgems:craftingmaterial:7>);
recipes.addShaped(<silentgems:craftingmaterial:7>*3,[
	[<ore:ingotIron>, <ore:nuggetGem>, <ore:ingotIron>],
	[<ore:ingotIron>, <ore:nuggetGem>, <ore:ingotIron>],
	[<ore:ingotIron>, <ore:nuggetGem>, <ore:ingotIron>]]);

	#Sword
	#Sword - Bronze
recipes.remove(<silentgems:sword>.withTag({SG_UUIDLeast: -5907124049235523094 as long, SGProperties: {ToolTier: 1, MeleeDamage: 2.0 as float, MagicDamage: 1.0 as float, Enchantability: 11, ChargeSpeed: 1.0 as float, HarvestSpeed: 6.0 as float, MeleeSpeed: 1.1 as float, Durability: 500, HarvestLevel: 2, Protection: 17.0 as float}, SGStatistics: {OriginalOwner: "a cheater!"}, SGConstruction: {PartRod: "silentgems:rodwood#NONE", Part0: "sgextraparts:bronze#NONE", Part2: "sgextraparts:bronze#NONE", Part1: "sgextraparts:bronze#NONE"}, display: {Name: "Bronze Sword"}, SG_UUIDMost: 5291820184477910609 as long}), true);


	#Soul Gem: Cow
recipes.addShapeless(<minecraft:beef>*2, [<silentgems:soulgem>.withTag({sg_soul_gem: "Cow"})]);
	#Soul Gem: Pig
recipes.addShapeless(<minecraft:porkchop>*2, [<silentgems:soulgem>.withTag({sg_soul_gem: "Pig"})]);
