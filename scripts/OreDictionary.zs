import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// This script is for misc recipes such as ore dictionaries or those that don't belong anywhere else]

print("-------------- Ore Dictionary Start --------------");

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
var hammers = <ore:toolHammer>;
var hammerList = [
	<roots:stone_hammer:*>,
	<roots:iron_hammer:*>,
	<roots:wood_hammer:*>,
	<immersiveengineering:tool>
	] as IItemStack[];
hammers.addItems(hammerList);
	
	#blockBronze
recipes.addShapeless(<thermalfoundation:storage_alloy:3>, [
	<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>,
	<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>,
	<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]);

	#dustInvar
recipes.remove(<techreborn:dust:26>);
recipes.addShapeless(<thermalfoundation:material:98>, 
	[<techreborn:smalldust:26>, <techreborn:smalldust:26>, <techreborn:smalldust:26>, <techreborn:smalldust:26>]);

	#dustIron
<ore:dustIron>.remove(<ic2:dust:8>);

	#dustStone
<ore:dustStone>.add(<skyresources:techitemcomponent>);

	#gearBronze
<ore:gearBronze>.remove(<forestry:gear_bronze>);

	#gearDiamond
<ore:gearDiamond>.remove(<teslacorelib:gear_diamond>);

	#gearIron

	#gearTin
<ore:gearTin>.remove(<forestry:gear_tin>);
	#gearStone
<ore:gearStone>.remove(<teslacorelib:gear_stone>);

	#gearWood
<ore:gearWood>.remove(<teslacorelib:gear_wood>);

	#ingotAluminum
<ore:ingotAluminum>.add(<frogcraftrebirth:metal_ingot>);

	#ingotTin
<ore:ingotTin>.remove(<mekanism:ingot:6>);
<ore:ingotTin>.remove(<forestry:ingot_tin>);
<ore:ingotTin>.remove(<techreborn:ingot:13>);
<ore:ingotTin>.remove(<fp:itemerze>);
<ore:ingotTin>.remove(<sgextraparts:ingot:1>);
<ore:ingotTin>.remove(<abyssalcraft:tiningot>);
	#nuggetGem
var gemShards = <silentgems:gemshard>.definition;
for i in 0 to 48{
    <ore:nuggetGem>.add(gemShards.makeStack(i));}
	#plateAluminum
<ore:plateAluminum>.remove(<immersiveengineering:metal:31>);

	#plateBronze
<ore:plateBronze>.remove(<techreborn:plates:18>);
recipes.addShapeless(<thermalfoundation:material:355>, [<ore:plateBronze>]);

	#plateConstantan/CuproNickel
<ore:plateConstantan>.remove(<immersiveengineering:metal:36>);

	#<ore:plateCopper>
<ore:plateCopper>.remove(<embers:plate_copper>);

	#plateElectrum
<ore:plateElectrum>.remove(<immersiveengineering:metal:37>);

	#plateGold
<ore:plateGold>.remove(<embers:plate_gold>);
<ore:plateGold>.remove(<immersiveengineering:metal:40>);
<ore:plateGold>.remove(<ic2:plate:2>);
<ore:plateGold>.remove(<techreborn:plates:1>);

	#plateLead
	#plateNickel
<ore:plateNickel>.remove(<techreborn:plates:25>);
<ore:plateNickel>.remove(<immersiveengineering:metal:34>);

	#plateSilver
<ore:plateSilver>.remove(<immersiveengineering:metal:33>);

	#plateTin
<ore:plateTin>.remove(<techreborn:plates:29>);

	#plateIron
<ore:plateIron>.remove(<techreborn:plates>);
<ore:plateIron>.remove(<immersiveengineering:metal:39>);

	#Portal Block
var overworld = <ore:portalOverworld>;
overworld.add(<contenttweaker:portalblockt>);
overworld.add(<xtones:bitt:6>);

	#stickIron
<ore:stickIron>.remove(<fp:spaceship:12>);
<ore:stickIron>.add(<silentgems:craftingmaterial:7>);
<ore:stickIron>.add(<psi:cad_assembly>);

	#stickRedstone
//<ore:stickRedstone>.add

print("-------------- Ore Dictionary End --------------");