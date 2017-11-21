import crafttweaker.item.IItemStack;

print("Misc");

//Chest Conversion
recipes.addShapeless(<minecraft:chest>, [<ore:chest>]);

//Adding all aluminium to Aluminum
<ore:gearAluminium>.add(<thermalfoundation:material:260>);
<ore:ingotALuminium>.add(<thermalfoundation:material:132>);

//Melons got overlooked
<ore:listAllfruit>.add(<minecraft:melon>);

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