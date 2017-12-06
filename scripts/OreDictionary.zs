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
val hammers = <ore:toolHammer>;
val hammerList = [
	<roots:stone_hammer:*>,
	<roots:iron_hammer:*>,
	<roots:wood_hammer:*>,
	<immersiveengineering:tool>,
	<thermalfoundation:tool.hammer_iron:*>,
	<thermalfoundation:tool.hammer_electrum:*>,
	<thermalfoundation:tool.hammer_invar:*>,
	<thermalfoundation:tool.hammer_gold:*>,
	<thermalfoundation:tool.hammer_diamond:*>,
	<thermalfoundation:tool.hammer_constantan:*>,
	<thermalfoundation:tool.hammer_bronze:*>,
	<thermalfoundation:tool.hammer_steel:*>,
	<thermalfoundation:tool.hammer_nickel:*>,
	<thermalfoundation:tool.hammer_aluminum:*>,
	<thermalfoundation:tool.hammer_platinum:*>,
	<thermalfoundation:tool.hammer_silver:*>,
	<thermalfoundation:tool.hammer_tin:*>,
	<thermalfoundation:tool.hammer_copper:*>,
	<thermalfoundation:tool.hammer_lead:*>
	] as IItemStack[];

hammers.addItems(hammerList);

//Portal Block Ore Dict'ing
//Overworld
var overworld = <ore:portalOverworld>;
overworld.add(<contenttweaker:portalblockt>);
overworld.add(<xtones:bitt:6>);

	#gearWood
<ore:gearWood>.remove(<buildcraftcore:gear_wood>);
<ore:gearWood>.remove(<teslacorelib:gear_wood>);


	#gearStone
<ore:gearStone>.remove(<teslacorelib:gear_stone>);

	#gearIron
<ore:gearIron>.remove(<buildcraftcore:gear_iron>);
<ore:gearIron>.remove(<hammercore:iron_gear>);

	#gearDiamond
<ore:gearDiamond>.remove(<teslacorelib:gear_diamond>);

	#ingotTIn
<ore:ingotTin>.remove(<mekanism:ingot:6>);
<ore:ingotTin>.remove(<forestry:ingot_tin>);
<ore:ingotTin>.remove(<techreborn:ingot:13>);
<ore:ingotTin>.remove(<fp:itemerze>);
<ore:ingotTin>.remove(<sgextraparts:ingot:1>);
<ore:ingotTin>.remove(<abyssalcraft:tiningot>);

	#plateAluminum
<ore:plateAluminum>.remove(<embers:plate_aluminum>);
<ore:plateAluminum>.remove(<immersiveengineering:metal:31>);

	#plateBronze
<ore:plateBronze>.remove(<embers:plate_bronze>);

	#plateConstantan/CuproNickel
<ore:plateConstantan>.remove(<immersiveengineering:metal:36>);

	#<ore:plateCopper>
<ore:plateCopper>.remove(<embers:plate_copper>);

	#plateElectrum
<ore:plateElectrum>.remove(<embers:plate_electrum>);
<ore:plateElectrum>.remove(<immersiveengineering:metal:37>);

	#plateGold
<ore:plateGold>.remove(<embers:plate_gold>);
<ore:plateGold>.remove(<immersiveengineering:metal:40>);
<ore:plateGold>.remove(<ic2:plate:2>);
<ore:plateGold>.remove(<techreborn:plates:1>);

	#plateLead
<ore:plateNickel>.remove(<embers:plate_lead>);

	#plateNickel
<ore:plateNickel>.remove(<embers:plate_nickel>);
<ore:plateNickel>.remove(<techreborn:plates:25>);
<ore:plateNickel>.remove(<immersiveengineering:metal:34>);

	#plateSilver
<ore:plateSilver>.remove(<embers:plate_silver>);
<ore:plateSilver>.remove(<immersiveengineering:metal:33>);

	#plateTin
<ore:plateTin>.remove(<embers:plate_tin>);
	
	#plateIron
<ore:plateIron>.remove(<ic2:plate:3>);
<ore:plateIron>.remove(<techreborn:plates>);
<ore:plateIron>.remove(<immersiveengineering:metal:39>);
<ore:plateIron>.remove(<embers:plate_iron>);

	#stickIron
<ore:stickIron>.remove(<fp:spaceship:12>);

print("-------------- Ore Dictionary End --------------");