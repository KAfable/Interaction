import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;


	#Luminous Crafting Table
recipes.addShaped(<astralsorcery:blockaltar>, [
	[<ore:blockMarble>, <ore:dyeBlack>, <ore:blockMarble>],
	[<ore:blockMarble>, <ore:dyeBlack>, <ore:blockMarble>],
	[null, <artisanworktables:worktable:5>, null]]);

	#Sooty Marble
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:blockblackmarble>, 0);
recipes.removeShaped(<astralsorcery:blockblackmarble>);
	//Spawns in Twilight Forest Fire Swamps.
	#Disabling Hand Telescope
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:itemhandtelescope>, 0);