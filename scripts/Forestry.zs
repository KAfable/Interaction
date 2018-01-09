import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.forestry.Carpenter as carp;
import mods.forestry.ThermionicFabricator as tf;

var tinCableInsulatedIC2 = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte});
var copCableInsultedIC2 = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte});

	#Basic Circuit Board
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
recipes.addShaped(<forestry:chipsets>, [
	[tinCableInsulatedIC2, tinCableInsulatedIC2, tinCableInsulatedIC2],
	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
	[tinCableInsulatedIC2, tinCableInsulatedIC2, tinCableInsulatedIC2]]);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>, [
	[null, null, null],
	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
	[null, null, null]], 10, <liquid:menrilresin>*1000);
	#Enhanced Circuit Board
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
recipes.addShaped(<forestry:chipsets>, [
	[copCableInsultedIC2, copCableInsultedIC2, copCableInsultedIC2],
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[copCableInsultedIC2, copCableInsultedIC2, copCableInsultedIC2]]);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>, [
	[null, null, null],
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[null, null, null]], 10, <liquid:menrilresin>*1000);
	#Carpenter
recipes.remove(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>, [
	[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>],
	[<ore:plateBronze>, <forestry:sturdy_machine>, <ore:plateBronze>],
	[<ore:plateBronze>, <forestry:chipsets>, <ore:plateBronze>]]);
	#Sturdy Casing
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [
	[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>],
	[<ore:plateBrass>,<minecraft:minecart>,<ore:plateBrass>],
	[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>]]);	
	#Thermionic Fabricator
recipes.remove(<forestry:fabricator>);
recipes.addShaped(<forestry:fabricator>, [
	[<ore:plateGold>,<forestry:chipsets:1>,<ore:plateGold>],
	[<forestry:chipsets:1>,<forestry:sturdy_machine>,<forestry:chipsets:1>],
	[<ore:plateGold>,<minecraft:chest>,<ore:plateGold>]]);

carp.addRecipe(<contenttweaker:sub_block_holder_0:2>, [
	[null, <minecraft:clay>, null],
	[<skyresources:techitemcomponent>, <minecraft:brick_block>, <skyresources:techitemcomponent>],
	[null, <minecraft:sandstone>, null]
	], 20, <liquid:lava>*100);

carp.removeRecipe(<forestry:soldering_iron>);

//Cables
recipes.remove(<immersiveengineering:wirecoil>);
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.remove(<immersiveengineering:wirecoil:2>);

//Engines
recipes.remove(<forestry:engine_biogas>);
recipes.remove(<forestry:engine_peat>);
recipes.addShaped(<forestry:engine_peat>, [
	[null,<thermaldynamics:duct_0>,null],
	[<ore:gearBronze>,<forestry:chipsets>,<ore:gearBronze>],
	[<ore:blockBronze>,<forestry:peat>,<ore:blockBronze>]]);

recipes.addShaped(<forestry:engine_biogas>, [
	[null,<thermaldynamics:duct_0>,null],
	[<ore:gearBronze>,<forestry:chipsets>,<ore:gearBronze>],
	[<ore:blockBronze>,<minecraft:lava_bucket>,<ore:blockBronze>]]);

///////////
//Soldering
///////////
recipes.remove(<forestry:soldering_iron>);
recipes.addShaped(<forestry:soldering_iron>, [
[null,<ore:ingotIron>,null],
[<ore:ingotIron>,null,<ore:ingotIron>],
[null,null,<ore:ingotSteel>]
]);
