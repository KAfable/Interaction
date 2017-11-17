import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

//Floral Fertilizer
var botDyes = <botania:dye>.definition;
for i in 0 to 16 {
	<ore:botaniaDyes>.add(botDyes.makeStack(i));}
recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>*2, [
	<minecraft:dye:15>, <ore:botaniaDyes>, <ore:botaniaDyes>, <plants2:plantball>, <plants2:plantball>]);
recipes.addShapeless(<botania:fertilizer>, [
	<minecraft:dye:15>, <minecraft:dye:1>, <minecraft:dye:1>, <minecraft:dye:11>, <minecraft:dye:11>]);