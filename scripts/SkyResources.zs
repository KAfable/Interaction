import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------- Sky Resources Start --------------");

var stoneReinforced = <contenttweaker:material_part:35>;

//////////////////////////
// Removal of Excess Tiers
//////////////////////////

val skyRemoved = [
	<skyresources:dirtfurnace>,
	<skyresources:combustionheater:2>,
	<skyresources:combustionheater:4>,
	<skyresources:combustionheater:5>,
	<skyresources:combustionheater:7>,
	<skyresources:combustionheater:8>,
	<skyresources:combustionheater:9>,
	<skyresources:combustionheater:11>,
	<skyresources:heatprovider:2>,
	<skyresources:heatprovider:4>,
	<skyresources:heatprovider:5>,
	<skyresources:heatprovider:7>,
	<skyresources:heatprovider:8>,
	<skyresources:heatprovider:9>,
	<skyresources:heatprovider:11>,
	<skyresources:casing:2>,
	<skyresources:casing:4>,
	<skyresources:casing:5>,
	<skyresources:casing:7>,
	<skyresources:casing:8>,
	<skyresources:casing:9>,
	<skyresources:casing:11>,
	<skyresources:heat:2>,
	<skyresources:heat:4>,
	<skyresources:heat:5>,
	<skyresources:heat:7>,
	<skyresources:heat:8>,
	<skyresources:heat:9>,
	<skyresources:heat:11>,
	<skyresources:alchemy:2>,
	<skyresources:alchemy:4>,
	<skyresources:alchemy:5>,
	<skyresources:alchemy:7>,
	<skyresources:alchemy:8>,
	<skyresources:alchemy:9>,
	<skyresources:alchemy:11>,
	<skyresources:wildlifeattractor>
	] as IItemStack[];
for item in skyRemoved { mods.jei.JEI.removeAndHide(item);}

//Can be used later in the higher ore multiplication process
mods.jei.JEI.removeAndHide(<skyresources:orealchdust:*>);
val oreAlcDust = <skyresources:orealchdust>.definition;
for item in 0 to 25 { mods.skyresources.fusion.removeRecipe(oreAlcDust.makeStack(item));}

var gems = <skyresources:dirtygem>.definition;
for i in 0 to 43 {
  mods.skyresources.rockgrinder.removeRecipe(gems.makeStack(i));
  mods.jei.JEI.removeAndHide(gems.makeStack(i));}

////////////////////
// Cauldron Cleaning
/////////////////////
val cauldronRemoved = [
	<actuallyadditions:item_misc:5>,
	<bigreactors:dustmetals>,
	<draconicevolution:draconium_dust>,
	<evilcraft:dark_gem>,
	<fp:dust:12044>,
	<fp:dust:14186>,
	<immersiveengineering:metal:9>,
	<immersiveengineering:metal:10>,
	<immersiveengineering:metal:11>,
	<immersiveengineering:metal:12>,
	<immersiveengineering:metal:13>,
	<immersiveengineering:metal:14>,
	<immersiveengineering:metal:18>,
	<immersiveengineering:metal:19>,
	<ic2:dust:4>,
	<ic2:dust:7>,
	<ic2:dust:8>,
	<ic2:dust:10>,
	<ic2:dust:11>,	// Lithium
	<ic2:dust:14>,
	<ic2:dust:17>,
	<mekanism:dust:2>,
	<minecraft:emerald>,
	<minecraft:diamond>,
	<minecraft:quartz>,
	<minecraft:redstone>,
	<minecraft:glowstone_dust>,
	<minecraft:dye:4>,
	<techreborn:dust:59>,
	<techreborn:dust:54>,
	<techreborn:dust:55>,
	<techreborn:dust:10>,
	<techreborn:dust:30>,
	<techreborn:gem>,
	<techreborn:gem:1>,
	<techreborn:gem:2>,
	<techreborn:gem:3>,
	<techreborn:gem:4>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:69>,
	<thermalfoundation:material:70>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:72>,
	<silentgems:craftingmaterial>,
	<silentgems:craftingmaterial:4>,
	<skyresources:dirtygem:39>,
	<thermalfoundation:material>,
	<nuclearcraft:dust:5>,
	<nuclearcraft:dust:7>,
	<nuclearcraft:dust:4>,
	<nuclearcraft:dust:3>
	] as IItemStack[];

for i in cauldronRemoved {
	mods.skyresources.cauldronclean.removeRecipe(i);}

val cauldronGemRemoved = <silentgems:gem>.definition;
for item in 0 to 32 {
	mods.skyresources.cauldronclean.removeRecipe(cauldronGemRemoved.makeStack(item));}

////////////
//Combustion
////////////
recipes.remove(<skyresources:quickdropper>);
recipes.addShaped(<skyresources:quickdropper>, [
  [stoneReinforced, stoneReinforced, stoneReinforced],
  [stoneReinforced, <minecraft:dropper>, stoneReinforced],
  [stoneReinforced, null, stoneReinforced]]);
recipes.addShaped(<skyresources:combustioncollector>, [
  [stoneReinforced, stoneReinforced, stoneReinforced],
  [stoneReinforced, <minecraft:hopper>, stoneReinforced],
  [stoneReinforced, stoneReinforced, stoneReinforced]]);
	#Removiung progression breaking recipes
mods.skyresources.combustion.removeRecipe(<minecraft:redstone>);
mods.skyresources.combustion.removeRecipe(<embers:shard_ember>);
mods.skyresources.combustion.removeRecipe(<armorplus:lava_crystal>);
mods.skyresources.combustion.removeRecipe(<minecraft:snowball>);


///////////
//Condenser
///////////

//////////
//Crucible 
//////////
recipes.remove(<skyresources:crucibleinserter>);
recipes.addShaped(<skyresources:crucibleinserter>, [
  [stoneReinforced, <minecraft:dropper>, stoneReinforced],
  [stoneReinforced, null, stoneReinforced],
  [stoneReinforced, null, stoneReinforced]]);

mods.skyresources.crucible.addRecipe(<fluid:lava>*1000, <minecraft:netherrack>);

/////////
//Freezer
/////////
//mods.skyresources.freezer.addRecipe(<harvestcraft:frostgarden>, <minecraft:tallgrass:1>*10, 800);

//Fusion
//mods.skyresources.fusion.addRecipe(ItemStack output, ItemStack[] input, float catalystUsedPerCraft);
//mods.skyresources.fusion.removeRecipe(ItemStack output);
mods.skyresources.fusion.removeRecipe(<minecraft:dirt>);
	#Secundus Alchemy Component
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:3>);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:3>, [
	<minecraft:slime_ball>*4, <minecraft:blaze_powder>*2, <skyresources:alchemyitemcomponent:8>,
	], 1.00);
	#Alchemical Reinforced Stone Ingot
<skyresources:alchemyitemcomponent:8>.displayName = "Alchemical Reinforced Stone Ingot";
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:8>);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:8>, [
	<contenttweaker:material_part:35>, <minecraft:blaze_powder>*3], 0.20);
	#Alchemical Diamond
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:10>);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:10>, [
	<minecraft:coal_block>*6], 3.00);
	#Overworld Essence
mods.skyresources.fusion.addRecipe(<contenttweaker:overworldessencel>*2, [
	<minecraft:ender_eye>, <minecraft:log>, <minecraft:yellow_flower>, 
	<minecraft:red_flower>, <minecraft:sapling>, <minecraft:dirt>, <minecraft:grass>], 3.00);
mods.skyresources.fusion.addRecipe(<contenttweaker:overworldessencer>*2, [
	<minecraft:ender_eye>, <minecraft:stone>, <minecraft:cobblestone>, 
	<minecraft:clay>, <contenttweaker:sub_block_holder_0:2>, <minecraft:obsidian>, 
	<minecraft:torch>], 3.00);

	#Extractor
mods.skyresources.waterextractor.extract.removeRecipe(20, null, <minecraft:leaves>);	
mods.skyresources.waterextractor.extract.addRecipe(50, null, <minecraft:leaves>);
//mods.skyresources.waterextractor.extract.addRecipe(20, <harvestcraft:aridgarden>, <harvestcraft:soggygarden>);

//Infusion
var cow_egg = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}});
var chicken_egg = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}});
var sheep_egg = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:sheep"}});
var pig_egg = <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:pig"}});
var wool = <minecraft:wool>;

mods.skyresources.infusion.addRecipe(cow_egg, <minecraft:wheat>*10, <minecraft:farmland>, 19);
mods.skyresources.infusion.addRecipe(chicken_egg, <harvestcraft:fruitbaititem>*10, <minecraft:farmland>, 19);
mods.skyresources.infusion.addRecipe(sheep_egg, <harvestcraft:grainbaititem>*10, wool, 19);
mods.skyresources.infusion.addRecipe(pig_egg, <harvestcraft:veggiebaititem>*10, <minecraft:farmland>, 19);

mods.skyresources.infusion.addRecipe(<natura:nether_sapling>, <minecraft:sapling>, <tp:bone_block>, 8);
mods.skyresources.infusion.addRecipe(<minecraft:nether_wart>, <minecraft:netherrack>*8, <harvestcraft:pamwhitemushroomcrop>, 10);

mods.skyresources.infusion.removeRecipe(<minecraft:reeds>);

	#Plant Matter
recipes.addShaped(<skyresources:baseitemcomponent>, [
	[null, <ore:bark>, null],
	[<ore:bark>, <ore:bark>, <ore:bark>],
	[null, <ore:bark>, null]]);


	#Rock Grinder 
//mods.skyresources.rockgrinder.addRecipe(<minecraft:coal:1>, <minecraft:stone>, 0.07);
recipes.remove(<skyresources:stonegrinder>);
recipes.addShaped(<skyresources:stonegrinder>, [
  [<ore:cobblestone>, <ore:cobblestone>, null],
  [<ore:cobblestone>, <ore:cobblestone>, null],
  [null, null, <minecraft:stick>]]);

recipes.remove(<skyresources:irongrinder>);
<skyresources:irongrinder>.displayName = "Reinforced Stone Grinder";
recipes.addShaped(<skyresources:irongrinder>, [
  [stoneReinforced, stoneReinforced, null],
  [stoneReinforced, stoneReinforced, null],
  [null, null, <minecraft:stick>]]);

recipes.remove(<skyresources:diamondgrinder>);
//recipes.addShaped(<skyresources:diamondgrinder>, [
//  [<ore:gemDiamond>, null, null],
//  [null, <ore:gemDiamond>, null],
//  [null, null, <minecraft:stick>]]);

//////////////////
//Reinforced Stone
//////////////////
// Replacing Iron tier sky resources with reinforced stone
recipes.removeShaped(<skyresources:casing:3>);
recipes.addShaped(<skyresources:casing:3>, [
  [stoneReinforced, stoneReinforced, stoneReinforced],
  [stoneReinforced, <ore:gearReinforcedStone>, stoneReinforced],
  [stoneReinforced, stoneReinforced, stoneReinforced]]);

recipes.removeShaped(<skyresources:combustionheater:3>);
recipes.addShaped(<skyresources:combustionheater:3>, [
  [stoneReinforced, stoneReinforced, stoneReinforced],
  [stoneReinforced, null, stoneReinforced],
  [stoneReinforced, <skyresources:heat:3>, stoneReinforced]]);

recipes.removeShaped(<skyresources:heat:3>);
recipes.addShaped(<skyresources:heat:3>, [
  [stoneReinforced, stoneReinforced, stoneReinforced],
  [stoneReinforced, <minecraft:blaze_powder>, stoneReinforced],
  [stoneReinforced, stoneReinforced, stoneReinforced]]);

// Renamings
<skyresources:combustionheater:3>.displayName = "Reinforced Stone Combustion Heater";
<skyresources:heatprovider:3>.displayName = "Reinforced Stone Heat Provider";
<skyresources:casing:3>.displayName = "Reinforced Stone Casing";
<skyresources:heat:3>.displayName = "Reinforced Stone Heat Component";
<skyresources:alchemy:3>.displayName = "Reinforced Stone Alchemy Component";

print("-------------- Sky Resources End --------------");