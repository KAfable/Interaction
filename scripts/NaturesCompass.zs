import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------------Nature's Compass Start-----------------");

mods.botania.RuneAltar.addRecipe(<naturescompass:naturescompass>, 
	[<ore:runeWaterB>, <ore:treeSapling>, 
	<ore:runeFireB>, <ore:treeSapling>, 
	<ore:runeEarthB>, <ore:treeSapling>, 
	<ore:runeAirB>, <ore:treeSapling>], 3200);

print("--------------------Nature's Compass End------------------");

