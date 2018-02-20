import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("-----------------PneumaticCraft Start-----------------");
	
	#Agitator
recipes.remove(<pneumaticcraft:spawner_agitator>);

	#Disabling due to reundancy and replaced with MM or other machines
mods.jei.JEI.removeAndHide(<pneumaticcraft:plastic_mixer>);
mods.jei.JEI.removeAndHide(<pneumaticcraft:thermopneumatic_processing_plant>);
mods.pneumaticcraft.thermopneumaticprocessingplant.removeAllRecipes();


	

print("------------------PneumaticCraft End------------------");