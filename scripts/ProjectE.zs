import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("-----------------Project E Start-----------------");

	#Alchemical Bags
var peBags = <projecte:item.pe_alchemical_bag:*>; //Reundant with Iron Backpacks - might re-add later
recipes.removeShaped(peBags);

	#Philosopher's Stone
recipes.remove(<projecte:item.pe_philosophers_stone>);
	#Alchemical Chest
recipes.remove(<projecte:alchemical_chest>);
recipes.addShaped(<projecte:alchemical_chest>, [
	[<ore:stone>, <skyresources:alchemyitemcomponent:2>, <ore:stone>],
	[<ore:stone>, <abyssalcraft:crate>, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]]);
	#Condenser
recipes.remove(<projecte:condenser_mk1>);
recipes.remove(<projecte:condenser_mk2>);

print("------------------Project E End------------------");