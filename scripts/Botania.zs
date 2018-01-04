import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

	#Floral Fertilizer
var botDyes = <botania:dye>.definition;
for i in 0 to 16 {
	<ore:botaniaDyes>.add(botDyes.makeStack(i));}
recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>*2, [
	<minecraft:dye:15>, <ore:botaniaDyes>, <ore:botaniaDyes>, <plants2:plantball>, <plants2:plantball>]);
recipes.addShapeless(<botania:fertilizer>, [
	<minecraft:dye:15>, <minecraft:dye:1>, <minecraft:dye:1>, <minecraft:dye:11>, <minecraft:dye:11>]);

	#Petal Apothecary
recipes.addShaped(<botania:altar>, [
  [<ceramics:clay_slab>, null, <ceramics:clay_slab>],
  [null, <ceramics:clay_hard>, null],
  [<ceramics:clay_hard>, <ceramics:clay_hard>, <ceramics:clay_hard>]]);

	#Pure Daisy
recipes.addShaped(<botania:specialflower>.withTag({type: "puredaisy"}), [
	[<ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>],
	[<ore:petalWhite>, <ore:plant>, <ore:petalWhite>],
	[<ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>]]);
	
	#Mystic Flower Ore Dictionary
var botPlants = <botania:flower>.definition;
for i in 0 to 16 {<ore:mysticPlant>.add(botPlants.makeStack(i));}
