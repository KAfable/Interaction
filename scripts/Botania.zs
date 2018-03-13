import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

print("--------------------------Botania Start-------------------------");

	#Black Lotus (first mana)
mods.skyresources.infusion.addRecipe(<botania:blacklotus>,
	<minecraft:coal:1>*16, <botania:specialflower>.withTag({type: "puredaisy"}), 19);

	#Dandelifeon (Tier 1 recipe with life infusion)
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "dandelifeon"}),
	<botania:manabottle>, <minecraft:yellow_flower>, 19);

	#Dreamwood (early for crafty crate, from Darklands Oak Wood)
mods.botania.ManaInfusion.addInfusion(<botania:dreamwood>, <abyssalcraft:dltlog>, 15000);

	#Endoflame (remove and flag in JEI)
mods.botania.Apothecary.removeRecipe("endoflame");
<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("DISABLED"));

	#Floral Fertilizer
var botDyes = <botania:dye>.definition;
for i in 0 to 16 {
	<ore:botaniaDyes>.add(botDyes.makeStack(i));}
recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>*2, [
	<minecraft:dye:15>, <ore:botaniaDyes>, <ore:botaniaDyes>, <plants2:plantball>, <plants2:plantball>]);
recipes.addShapeless(<botania:fertilizer>, [
	<minecraft:dye:15>, <minecraft:dye:1>, <minecraft:dye:1>, <minecraft:dye:11>, <minecraft:dye:11>]);

	#Gourmaryllis
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}),
	<botania:manabottle>, <minecraft:melon_block>, 19);

	#Hopperhock
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "hopperhock"}),
	<minecraft:hopper> * 4, <botania:specialflower>.withTag({type: "puredaisy"}), 10);

	#Hydroangeas (remove and flag in JEI)
mods.botania.Apothecary.removeRecipe("hydroangeas");
<botania:specialflower>.withTag({type: "hydroangeas"}).addTooltip(format.red("DISABLED"));


	#Kekimurus (Gate behind ender air for now)
mods.botania.Apothecary.removeRecipe("kekimurus");
mods.botania.Apothecary.addRecipe("kekimurus", 
	[<ore:petalWhite>, <ore:petalWhite>, <ore:petalOrange>, <ore:petalOrange>, 
	<ore:petalBrown>, <ore:petalBrown>, <botania:rune:10>, <botania:manaresource:15>]);

	#Mana Lens: Magnetizing
recipes.removeShapeless(<botania:lens:10>, 
	[<botania:lens>, <minecraft:iron_ingot>, <minecraft:gold_ingot>]);
recipes.addShapeless(<botania:lens:10>, 
	[<botania:lens>, <grapplemod:grapplinghook>, <grapplemod:grapplinghook>]);

	#Mana Pool
mods.botania.ManaInfusion.addInfusion(<botania:pool>, <botania:pool:2>, 1000);

	#Mana Pool - Diluted
recipes.remove(<botania:pool:2>);
recipes.addShaped(<botania:pool:2>, [
	[null, null, null],
	[<botania:livingrock>, null, <botania:livingrock>],
	[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);

	#Mana Pylon (Tier 2B option)
recipes.addShaped(<botania:pylon>, [
	[null, <minecraft:gold_ingot>, null], 
	[<botania:manaresource>, <astralsorcery:itemrockcrystalsimple>, <botania:manaresource>], 
	[null, <minecraft:gold_ingot>, null]]);

	#Mana Spreader (remove gold)
recipes.removeShaped(<botania:spreader>);
recipes.addShaped(<botania:spreader>,
	[[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
	[<botania:livingwood>, <botania:petal:*>, null],
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);

	#Mana Tablet
recipes.addShaped(<botania:manatablet>.withTag({mana:8000}),
	[[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
	[<botania:livingrock>, <botania:blacklotus>, <botania:livingrock>],
	[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);

	#Manasteel (from reinforced stone or dried bricks)
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotReinforcedStone>, 6000);



	#Petal Apothecary
recipes.addShaped(<botania:altar>, [
  [<ceramics:clay_slab>, null, <ceramics:clay_slab>],
  [null, <ceramics:clay_hard>, null],
  [<ceramics:clay_hard>, <ceramics:clay_hard>, <ceramics:clay_hard>]]);

	#Pure Daisy
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));
recipes.addShaped(<botania:specialflower>.withTag({type: "puredaisy"}), [
	[<ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>],
	[<ore:petalWhite>, <ore:plant>, <ore:petalWhite>],
	[<ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>]]);

	#Rod of the Lands
mods.botania.ManaInfusion.addInfusion(<botania:dirtrod>, <extrautils2:compresseddirt>, 8000);

	#Rod of the Seas
mods.botania.ManaInfusion.addInfusion(<botania:waterrod>, <skyresources:waterextractor>, 8000);

	#Rosa Arcana
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "arcanerose"}),
	<botania:manabottle>, <minecraft:red_flower>, 19);

	#Runic Altar
recipes.remove(<botania:runealtar>);
recipes.addShaped(<botania:runealtar>, [
	[null, <ore:manaPearl>,null],
	[<ore:livingrock>, <botania:pool>, <ore:livingrock>],
	[null, <ore:livingrock>, null]]);

	#Rune - Gluttony
mods.botania.RuneAltar.addRecipe(<botania:rune:10>, 
	[<ore:gemBlackDiamond>, <ore:gemBlackDiamond>, <ore:runeWinterB>, <ore:runeFireB>], 12000);
	
	#Rune - Air
mods.botania.RuneAltar.removeRecipe(<botania:rune:3>);
mods.botania.RuneAltar.addRecipe(<botania:rune:3>*2, 
	[<minecraft:wooden_sword>, <ore:ingotManasteel>, <ore:powderMana>, <ore:feather>,
	<ore:string>, <minecraft:carpet:*>], 3000);

	#Rune - Earth
mods.botania.RuneAltar.removeRecipe(<botania:rune:2>);
mods.botania.RuneAltar.addRecipe(<botania:rune:2>*2, 
	[<minecraft:wooden_shovel>, <ore:ingotManasteel>, <ore:powderMana>, <ore:listAllveggie>,
	<ore:blockCoal>, <minecraft:tallgrass:1>], 3000);

	#Rune - Fire
mods.botania.RuneAltar.removeRecipe(<botania:rune:1>);
#Make this require the Custom Firestarter
mods.botania.RuneAltar.addRecipe(<botania:rune:1>*2, 
	[<minecraft:wooden_axe>, <ore:ingotManasteel>, <ore:powderMana>, <ore:ingotBrickNether>,
	<ore:gunpowder>, <ore:powderBlaze>], 3000);

	#Rune - Water
mods.botania.RuneAltar.removeRecipe(<botania:rune>);
mods.botania.RuneAltar.addRecipe(<botania:rune>*2, 
	[<skyresources:waterextractor>, <ore:ingotManasteel>, <ore:powderMana>, 
	<minecraft:potion>.withTag({Potion: "minecraft:water"}),
	<harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 3000);

	#Slime in a Bottle
recipes.removeShaped(<botania:slimebottle>);
recipes.addShaped(<botania:slimebottle>, [
	[<botania:manaresource>, <botania:managlass>, <botania:manaresource>], 
	[<botania:manaresource>, <ore:slimeball>, <botania:manaresource>], 
	[null, <botania:manaresource>, null]]);

	
	#Soujourner's Sash (not available until Tier 2)
recipes.remove(<botania:travelbelt>);
recipes.addShaped(<botania:travelbelt>, [
	[<botania:rune:2>, <minecraft:leather>, <ore:ingotGold>], 
	[<minecraft:leather>, null, <minecraft:leather>], 
	[<botania:manaresource>, <minecraft:leather>, <botania:rune:3>]]);
	





print("--------------------------Botania End-------------------------");
