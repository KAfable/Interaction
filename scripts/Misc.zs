import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// This script is for misc recipes such as ore dictionaries or those that don't belong anywhere else]

print("Misc");

//Chest Conversion
recipes.addShapeless(<minecraft:chest>, [<ore:chest>]);

//Adding all aluminium to Aluminum
<ore:gearAluminium>.add(<thermalfoundation:material:260>);
<ore:ingotALuminium>.add(<thermalfoundation:material:132>);

//Melons got overlooked
<ore:listAllfruit>.add(<minecraft:melon>);

//Bark Oredicting
var myBark = <ore:bark>;
var newBark = [
	<roots:bark_spruce>,
	<roots:bark_birch>,
	<roots:bark_jungle>,
	<roots:bark_dark_oak>,
	<roots:bark_acacia>,
	<roots:bark_oak>
	] as IItemStack[];
for i in newBark {myBark.add(i);}

//val useCraftingTool = <contenttweaker:craftingtool>.anyDamage().transformDamage();

// Adding hammers to ore dictionary
val hammers = <ore:toolHammer>;
val hammerList = [
	<roots:stone_hammer:*>,
	<roots:iron_hammer:*>,
	<roots:wood_hammer:*>
	] as IItemStack[];

hammers.addItems(hammerList);


