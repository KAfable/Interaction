import mods.botania.Apothecary;

	#Gunpowder
//Non-mob farm Gunpowder
recipes.addShapeless(<minecraft:gunpowder>*4, [<ore:toolHammer>.onlyDamageAtLeast(0), 
  <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, 
  <botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]);
	
	#Bed
recipes.remove(<minecraft:bed:*>);
recipes.addShaped(<minecraft:bed>, [
  [null, <minecraft:clock>, null],
  [<ore:blockWool>,<ore:blockWool>, <ore:blockWool>],
  [<extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>]]);

<minecraft:bed:*>.addTooltip("For earlier respawning options, see Respawn Obelisk");

	#Bonemeal
mods.tconstruct.Drying.addRecipe(<minecraft:dye:15>, <skyresources:baseitemcomponent>, 1200);

	#Bucket
recipes.addShaped(<minecraft:bucket>, [
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [null, ingotReinforcedStone, null]]);

	#Cauldron
recipes.addShaped(<minecraft:cauldron>, [
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [ingotReinforcedStone, ingotReinforcedStone, ingotReinforcedStone]]);

	#Dirt
recipes.addShaped(<minecraft:dirt>*3, [
  [<ore:treeLeaves>, <ore:bark>, <ore:treeLeaves>],
  [<ore:bark>, <minecraft:dirt>, <ore:bark>],
  [<ore:treeLeaves>, <ore:bark>, <ore:treeLeaves>]]);

	#Dropper
recipes.remove(<minecraft:dropper>);
recipes.addShaped(<minecraft:dropper>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ore:cobblestone>, <minecraft:lever>, <ore:cobblestone>],
  [<ore:cobblestone>, <ore:trapdoorWood>, <ore:cobblestone>]]);

	#Furnace
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [
  [<tconstruct:materials:2>, <tconstruct:materials:2>, <tconstruct:materials:2>],
  [<tconstruct:materials:2>, null, <tconstruct:materials:2>],
  [<tconstruct:materials:2>, <tconstruct:materials:2>, <tconstruct:materials:2>]]);
recipes.addShaped(<minecraft:furnace>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ore:cobblestone>, null, <ore:cobblestone>],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

	#Enchanting Table
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table>, [
  [null ,<minecraft:book>, null],
  [<skyresources:alchemyitemcomponent:10>, <minecraft:obsidian>, <skyresources:alchemyitemcomponent:10>],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

	#Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [ingotReinforcedStone, <wopper:wopper>, ingotReinforcedStone],
  [null, ingotReinforcedStone, null]]);
recipes.addShaped(<minecraft:hopper>, [
  [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <wopper:wopper>, <minecraft:iron_ingot>],
  [null, <minecraft:iron_ingot>, null]]);

  #Iron Bars
recipes.remove(<minecraft:iron_bars>*16);
recipes.addShaped(<minecraft:iron_bars>, [
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

  #Minecart
recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart>, [
  [<ore:plateIron>, null, <ore:plateIron>],
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

	#Piston
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
[<ore:gearReinforcedStone>,<ore:ingotIron>,<ore:gearReinforcedStone>],
  [<ore:stone>,<ore:dustRedstone>,<ore:stone>]]);
recipes.addShaped(<minecraft:piston>*8, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  [<ore:gearIron>,<ore:ingotIron>,<ore:gearIron>],
  [<ore:stone>,<ore:dustRedstone>,<ore:stone>]]);

	#Sugar Cane
mods.botania.Apothecary.addRecipe(<minecraft:reeds>, [<ore:petalLime>, <ore:petalLime>, <ore:petalGreen>, <ore:petalGreen>]);

	#Tripwire Hook
recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook>, [
  [null, ingotReinforcedStone,null],
  [null,<ore:stickWood>,null],
  [null,<ore:plankWood>,null]]);
