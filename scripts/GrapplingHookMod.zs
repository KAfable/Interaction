import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("-----------------Grappling Hook Start-----------------");
	#Longfall Boots - Available Tier 4
recipes.remove(<grapplemod:longfallboots>);

	#Grappling Hook
recipes.remove(<grapplemod:grapplinghook>);
recipes.addShaped(<grapplemod:grapplinghook>, [
	[null, <minecraft:stone_pickaxe>], 
	[<minecraft:lead>, null]]);

print("------------------Grappling Hook End------------------");