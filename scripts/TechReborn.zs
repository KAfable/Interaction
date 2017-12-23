import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("--------------------TechReborn Start-----------------------");

	#Refined iron
furnace.remove(<techreborn:ingot:19>);
mods.immersiveengineering.AlloySmelter.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>,
	<minecraft:iron_ingot>, 1200);

print("--------------------TechReborn End-----------------------");