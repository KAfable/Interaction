import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

print("--------------------------Botania Start-------------------------");

	#Floral Fertilizer
var botDyes = <botania:dye>.definition;
for i in 0 to 16 {
	<ore:botaniaDyes>.add(botDyes.makeStack(i));}
recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>*2, [
	<minecraft:dye:15>, <ore:botaniaDyes>, <ore:botaniaDyes>, <plants2:plantball>, <plants2:plantball>]);
recipes.addShapeless(<botania:fertilizer>, [
	<minecraft:dye:15>, <minecraft:dye:1>, <minecraft:dye:1>, <minecraft:dye:11>, <minecraft:dye:11>]);

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
	
	#Mystic Flower Ore Dictionary
var botPlants = <botania:flower>.definition;
for i in 0 to 16 {<ore:mysticPlant>.add(botPlants.makeStack(i));}

	#Mana Spreader (remove gold)
recipes.removeShaped(<botania:spreader>);
recipes.addShaped(<botania:spreader>,
	[[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
	[<botania:livingwood>, <botania:petal:*>, null],
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);
	
	#Manasteel (from reinforced stone or dried bricks)
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotReinforcedStone>, 6000);

	#Endoflame (remove and flag in JEI)
mods.botania.Apothecary.removeRecipe("endoflame");
<botania:specialflower>.withTag({type: "endoflame"}).addTooltip(format.red("DISABLED"));

	#Hydroangeas (remove and flag in JEI)
mods.botania.Apothecary.removeRecipe("hydroangeas");
<botania:specialflower>.withTag({type: "hydroangeas"}).addTooltip(format.red("DISABLED"));

	#Black Lotus (first mana)
mods.skyresources.infusion.addRecipe(<botania:blacklotus>,
	<minecraft:coal:1>*16, <botania:specialflower>.withTag({type: "puredaisy"}), 19);
	
	#Mana Tablet
recipes.addShaped(<botania:manatablet>.withTag({mana:8000}),
	[[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
	[<botania:livingrock>, <botania:blacklotus>, <botania:livingrock>],
	[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]]);

	#Dandelifeon (Tier 1 recipe with life infusion)
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "dandelifeon"}),
	<botania:manabottle>, <minecraft:yellow_flower>, 19);
	
	#Gourmaryllis
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "gourmaryllis"}),
	<botania:manabottle>, <minecraft:melon_block>, 19);
	
	#Rosa Arcana
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "arcanerose"}),
	<botania:manabottle>, <minecraft:red_flower>, 19);
	
	#Mana Lens: Magnetizing
recipes.removeShaped(<grapplemod:grapplinghook>, [[null, <minecraft:iron_pickaxe>], [<minecraft:lead>, null]]);
recipes.addShaped(<grapplemod:grapplinghook>, [[null, <minecraft:stone_pickaxe>], [<minecraft:lead>, null]]);
recipes.removeShapeless(<botania:lens:10>.withTag({}), [<botania:lens>, <minecraft:iron_ingot>, <minecraft:gold_ingot>]);
recipes.addShapeless(<botania:lens:10>.withTag({}), [<botania:lens>, <grapplemod:grapplinghook>, <grapplemod:grapplinghook>]);

	#Rod of the Lands
mods.botania.ManaInfusion.addInfusion(<botania:dirtrod>, <extrautils2:compresseddirt>, 8000);

	#Rod of the Seas
mods.botania.ManaInfusion.addInfusion(<botania:waterrod>, <skyresources:waterextractor>, 8000);

	#Hopperhock
mods.skyresources.infusion.addRecipe(<botania:specialflower>.withTag({type: "hopperhock"}),
	<minecraft:hopper> * 4, <botania:specialflower>.withTag({type: "puredaisy"}), 10);
	
	#Soujourner's Sash (not available until Tier 2)
recipes.removeShaped(<botania:travelbelt>);
recipes.addShaped(<botania:travelbelt>, [[<botania:rune:2>, <minecraft:leather>, <ore:ingotGold>], [<minecraft:leather>, null, <minecraft:leather>], [<botania:manaresource>, <minecraft:leather>, <botania:rune:3>]]);
	
	#Dreamwood (early for crafty crate, from Darklands Oak Wood)
mods.botania.ManaInfusion.addInfusion(<botania:dreamwood>, <abyssalcraft:dltlog>, 15000);

	#Mana Pylon (Tier 2B option)
recipes.addShaped(<botania:pylon>, [[null, <minecraft:gold_ingot>, null], [<botania:manaresource>, <astralsorcery:itemrockcrystalsimple>, <botania:manaresource>], [null, <minecraft:gold_ingot>, null]]);

	#Kekimurus (Gate behind ender air for now)
mods.botania.Apothecary.removeRecipe("kekimurus");
mods.botania.Apothecary.addRecipe("kekimurus", [<ore:petalWhite>, <ore:petalWhite>, <ore:petalOrange>, <ore:petalOrange>, <ore:petalBrown>, <ore:petalBrown>, <botania:rune:10>, <botania:manaresource:15>]);

	#Slime in a Bottle
recipes.removeShaped(<botania:slimebottle>);
recipes.addShaped(<botania:slimebottle>, [[<botania:manaresource>, <botania:managlass>, <botania:manaresource>], [<botania:manaresource>, <ore:slimeball>, <botania:manaresource>], [null, <botania:manaresource>, null]]);

	#Rune of Gluttony (for Munchdew)
mods.botania.RuneAltar.addRecipe(<botania:rune:10>, [<ore:gemBlackDiamond>, <ore:gemBlackDiamond>, <ore:runeWinterB>, <ore:runeFireB>], 12000);

print("--------------------------Botania End-------------------------");
