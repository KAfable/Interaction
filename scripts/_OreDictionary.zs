#priority 998
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// This script is for misc recipes such as ore dictionaries or those that don't belong anywhere else]

print("-------------- Ore Dictionary Start --------------");

print("-----------One Ingot To Rule Them All--------------");
function metalRecipeFix(
    oredictBlock  as IOreDictEntry,
    oredictIngot  as IOreDictEntry,
    oredictNugget as IOreDictEntry,
    preferedBlock as IItemStack,
    preferedIngot as IItemStack,
    preferedNugget as IItemStack
    ){
	//Fix block to ingot recipes
        for metalBlock in oredictBlock.items {
            recipes.removeShaped(metalBlock);
            recipes.removeShapeless(metalBlock);

            recipes.addShapeless(preferedIngot * 9, [
                metalBlock
                ]);
        }
		
        //Fix ingot to block and ingot to nugget recipes
        for metalIngot in oredictIngot.items {
            recipes.removeShaped(metalIngot * 9);
            recipes.removeShapeless(metalIngot * 9);
            recipes.removeShaped(metalIngot);
            recipes.removeShapeless(metalIngot);

            recipes.addShapeless(preferedNugget * 9, [metalIngot]);
            recipes.addShapeless(preferedBlock, [
                metalIngot, metalIngot, metalIngot,
                metalIngot, metalIngot, metalIngot,
                metalIngot, metalIngot, metalIngot]);
        }
		
	//Fix nugget to ingot recipes
        for metalNugget in oredictNugget.items {
            recipes.removeShaped(metalNugget * 9);
            recipes.removeShapeless(metalNugget * 9);

            recipes.addShapeless(preferedIngot, [
                metalNugget, metalNugget, metalNugget,
                metalNugget, metalNugget, metalNugget,
                metalNugget, metalNugget, metalNugget]);
        }

        //Backup oredict ingot to block and nugget to ingot recipes for if a player tries to combine various mod ingots
        recipes.addShapeless(preferedBlock, [
                oredictIngot, oredictIngot, oredictIngot,
                oredictIngot, oredictIngot, oredictIngot,
                oredictIngot, oredictIngot, oredictIngot]);
        recipes.addShapeless(preferedIngot, [
                oredictNugget, oredictNugget, oredictNugget,
                oredictNugget, oredictNugget, oredictNugget,
                oredictNugget, oredictNugget, oredictNugget]);
}

	#Copper Fix
metalRecipeFix(
    <ore:blockCopper>, <ore:ingotCopper>, <ore:nuggetCopper>,
    <thermalfoundation:storage>, <thermalfoundation:material:128>, <thermalfoundation:material:192>
    );

    #Steel Fix
metalRecipeFix(
    <ore:blockSteel>, <ore:ingotSteel>, <ore:nuggetSteel>,
    <mekanism:basicblock:5>, <mekanism:ingot:4>, <mekanism:nugget:4>
    );

//Adding all aluminium to Aluminum
<ore:gearAluminium>.add(<thermalfoundation:material:260>);
<ore:ingotALuminium>.add(<thermalfoundation:material:132>);

	#Melons got overlooked
<ore:listAllfruit>.add(<minecraft:melon>);

	#Adding hammers to ore dictionary
var hammerList = [
	<thermalfoundation:tool.hammer_copper>,
	<thermalfoundation:tool.hammer_tin>,
	<thermalfoundation:tool.hammer_silver>,
	<thermalfoundation:tool.hammer_lead>,
	<thermalfoundation:tool.hammer_aluminum>,
	<thermalfoundation:tool.hammer_nickel>,
	<thermalfoundation:tool.hammer_platinum>,
	<thermalfoundation:tool.hammer_steel>,
	<thermalfoundation:tool.hammer_electrum>,
	<thermalfoundation:tool.hammer_invar>,
	<thermalfoundation:tool.hammer_bronze>,
	<thermalfoundation:tool.hammer_constantan>,
	<thermalfoundation:tool.hammer_iron>,
	<thermalfoundation:tool.hammer_diamond>,
	<thermalfoundation:tool.hammer_gold>,
	<artisanworktables:artisans_hammer_wood>,
	<artisanworktables:artisans_hammer_stone>,
	<artisanworktables:artisans_hammer_iron>,
	<artisanworktables:artisans_hammer_gold>,
	<artisanworktables:artisans_hammer_diamond>,
	<artisanworktables:artisans_hammer_flint>,
	<artisanworktables:artisans_hammer_bone>,
	<artisanworktables:artisans_hammer_aluminum>,
	<artisanworktables:artisans_hammer_bronze>,
	<artisanworktables:artisans_hammer_constantan>,
	<artisanworktables:artisans_hammer_copper>,
	<artisanworktables:artisans_hammer_electrum>,
	<artisanworktables:artisans_hammer_invar>,
	<artisanworktables:artisans_hammer_lead>,
	<artisanworktables:artisans_hammer_nickel>,
	<artisanworktables:artisans_hammer_platinum>,
	<artisanworktables:artisans_hammer_silver>,
	<artisanworktables:artisans_hammer_steel>,
	<artisanworktables:artisans_hammer_tin>,
	<artisanworktables:artisans_hammer_manasteel>,
	<artisanworktables:artisans_hammer_elementium>,
	<artisanworktables:artisans_hammer_terrasteel>
	] as IItemStack[];
<ore:toolHammer>.addItems(hammerList);

	#breakerBasic
<ore:breakerBasic>.add(<industrialforegoing:block_destroyer>);
<ore:breakerBasic>.add(<randomthings:blockbreaker>);

	#breakerIntermediate
<ore:breakerIntermediate>.add(<actuallyadditions:block_breaker>);

	#blockCopper
<ore:blockCopper>.remove(<forestry:resource_storage:1>);
<ore:blockCopper>.remove(<immersiveengineering:storage>);
<ore:blockCopper>.remove(<techreborn:storage2:8>);
recipes.remove(<crossroads:block_copper>);

	#blockPlastic
var blockPlastic = <ore:blocKPlastic>;
blockPlastic.addItems([
	<mekanism:plasticblock>,
	<mekanism:plasticblock:1>,
	<mekanism:plasticblock:2>,
	<mekanism:plasticblock:3>,
	<mekanism:plasticblock:4>,
	<mekanism:plasticblock:5>,
	<mekanism:plasticblock:6>,
	<mekanism:plasticblock:7>,
	<mekanism:plasticblock:8>,
	<mekanism:plasticblock:9>,
	<mekanism:plasticblock:10>,
	<mekanism:plasticblock:11>,
	<mekanism:plasticblock:12>,
	<mekanism:plasticblock:13>,
	<mekanism:plasticblock:14>,
	<mekanism:plasticblock:15>]);
	
	#Chest Conversion
recipes.addShapeless(<minecraft:chest>, [<ore:chest>]);

	#Chips Ore Dictionary
var chips = <ore:foodChips>;
chips.add(<harvestcraft:potatochipsitem>);
chips.add(<harvestcraft:cheddarandsourcreampotatochipsitem>);
chips.add(<harvestcraft:bbqpotatochipsitem>);
chips.add(<harvestcraft:sourcreamandonionpotatochipsitem>);

	#Coralium Chunk
<ore:chunkCoralium>.add(<abyssalcraft:cchunk>);

	#dustAsh
<ore:dustAsh>.add(<iceandfire:ash>);

	#dustInvar
recipes.remove(<techreborn:dust:26>);
recipes.addShapeless(<thermalfoundation:material:98>, 
	[<techreborn:smalldust:26>, <techreborn:smalldust:26>, <techreborn:smalldust:26>, <techreborn:smalldust:26>]);

	#dustIron

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

	#ingotTin
<ore:ingotTin>.remove(<mekanism:ingot:6>);
<ore:ingotTin>.remove(<forestry:ingot_tin>);
<ore:ingotTin>.remove(<techreborn:ingot:13>);
<ore:ingotTin>.remove(<sgextraparts:ingot:1>);
<ore:ingotTin>.remove(<abyssalcraft:tiningot>);

	#itemRubber
<ore:itemRubber>.remove(<industrialforegoing:plastic>);
	
	#Mystic Flower Ore Dictionary
var botPlants = <botania:flower>.definition;
for i in 0 to 16 {<ore:mysticPlant>.add(botPlants.makeStack(i));}

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

	#plateElectrum
<ore:plateElectrum>.remove(<immersiveengineering:metal:37>);

	#plateGold
<ore:plateGold>.remove(<immersiveengineering:metal:40>);
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
overworld.add(<xtones:zion:6>);

	#stickIron
<ore:stickIron>.add(<silentgems:craftingmaterial:7>);
<ore:stickIron>.add(<psi:cad_assembly>);





print("-------------- Ore Dictionary End --------------");