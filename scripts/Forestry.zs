import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;

var tinCableInsulatedIC2 = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte});
var copCableInsultedIC2 = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte});

	#Basic Circuit Board
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
recipes.addShaped(<forestry:chipsets>*2, [
	[tinCableInsulatedIC2, tinCableInsulatedIC2, tinCableInsulatedIC2],
	[plateTin, plateTin, plateTin],
	[tinCableInsulatedIC2, tinCableInsulatedIC2, tinCableInsulatedIC2]]);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>, [
	[null, null, null],
	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
	[null, null, null]], 40, <liquid:menrilresin>*1000);
	#Enhanced Circuit Board
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
recipes.addShaped(<forestry:chipsets:1>, [
	[copCableInsultedIC2, copCableInsultedIC2, copCableInsultedIC2],
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[copCableInsultedIC2, copCableInsultedIC2, copCableInsultedIC2]]);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:1>, [
	[null, null, null],
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[null, null, null]], 40, <liquid:menrilresin>*1000);
	#Refined Circuit Board
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
recipes.addShaped(<forestry:chipsets:2>, [
	[copCableInsultedIC2, copCableInsultedIC2, copCableInsultedIC2],
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>],
	[copCableInsultedIC2, copCableInsultedIC2, copCableInsultedIC2]]);

	#Intricate Circuit Board


	#Carpenter
recipes.remove(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>, [
	[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>],
	[<ore:plateBronze>, <forestry:sturdy_machine>, <ore:plateBronze>],
	[<ore:plateBronze>, <forestry:chipsets>, <ore:plateBronze>]]);
	#Multifarm Materials
var farmMaterials as IItemStack[] = [
	<minecraft:stonebrick>,
	<minecraft:stonebrick:1>,
	<minecraft:stonebrick:2>,
	<minecraft:brick_block>,
	<minecraft:sandstone:2>,
	<minecraft:sandstone:1>,
	<minecraft:nether_brick>,
	<minecraft:stonebrick:3>,
	<minecraft:quartz_block>,
	<minecraft:quartz_block:1>,
	<minecraft:quartz_block:2>];
	#Farm Block
recipes.remove(<forestry:ffarm>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShaped(<forestry:ffarm>.withTag(tag), [
		[null, null, null],
		[<ore:stickIron>, farmMaterials[i], <ore:stickIron>],
		[null, <forestry:thermionic_tubes:1>, null]]);
}
	#Farm Control (for Redstone Control)
recipes.remove(<forestry:ffarm:5>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShapeless(<forestry:ffarm:5>.withTag(tag), 
		[<forestry:ffarm>.withTag(tag), gearRedstone]);
}
	#Farm Gearbox (Power Input)
recipes.remove(<forestry:ffarm:2>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShaped(<forestry:ffarm:2>.withTag(tag), [
		[null, <industrialforegoing:block_destroyer>, null],
		[null, <forestry:ffarm>.withTag(tag), null],
		[<ore:gearTin>, <ore:gearTin>, <ore:gearTin>]]);
}

	#Farm Hatch
recipes.remove(<forestry:ffarm:3>.withTag({FarmBlock: 0}));
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShaped(<forestry:ffarm:3>.withTag(tag), [
		[null, <contenttweaker:basicconveyor>, null],
		[null, <forestry:ffarm>.withTag(tag), null],
		[null, <minecraft:chest>, null]]);
}
	#Farm Valve
recipes.remove(<forestry:ffarm:4>);
for i in 0 to 11 {
	var tag as IData = { FarmBlock: i };
	recipes.addShapeless(<forestry:ffarm:4>.withTag(tag), [
		<forestry:ffarm>.withTag(tag), <contenttweaker:basicvalve>]);
}

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

mods.forestry.Carpenter.addRecipe(<contenttweaker:sub_block_holder_0:2>, [
	[null, <minecraft:clay>, null],
	[<skyresources:techitemcomponent>, <minecraft:brick_block>, <skyresources:techitemcomponent>],
	[null, <minecraft:sandstone>, null]
	], 20, <liquid:lava>*100);

mods.forestry.Carpenter.removeRecipe(<forestry:soldering_iron>);

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
