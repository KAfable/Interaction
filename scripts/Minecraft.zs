import mods.botania.Apothecary;
	
	#Bonemeal
mods.tconstruct.Drying.addRecipe(<minecraft:dye:15>, <skyresources:baseitemcomponent>, 1200);
	#Bucket
recipes.addShaped(<minecraft:bucket>, [
  [<contenttweaker:material_part:35>, <ore:toolHammer>.onlyDamageAtLeast(0), <contenttweaker:material_part:35>],
  [null, <contenttweaker:material_part:35>, null]]);
	#Cauldron
recipes.addShaped(<minecraft:cauldron>, [
  [<contenttweaker:material_part:35>, null, <contenttweaker:material_part:35>],
  [<contenttweaker:material_part:35>, <ore:toolHammer>.onlyDamageAtLeast(0), <contenttweaker:material_part:35>],
  [<contenttweaker:material_part:35>, <contenttweaker:material_part:35>, <contenttweaker:material_part:35>]]);
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
  [<contenttweaker:material_part:35>, null, <contenttweaker:material_part:35>],
  [<contenttweaker:material_part:35>, <wopper:wopper>, <contenttweaker:material_part:35>],
  [null, <contenttweaker:material_part:35>, null]]);
recipes.addShaped(<minecraft:hopper>, [
  [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <wopper:wopper>, <minecraft:iron_ingot>],
  [null, <minecraft:iron_ingot>, null]]);
	#Tripwire Hook
recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook>, [
  [null, <contenttweaker:material_part:35>,null],
  [null,<ore:stickWood>,null],
  [null,<ore:plankWood>,null]]);
	#Sugar Cane
mods.botania.Apothecary.addRecipe(<minecraft:reeds>, [<minecraft:melon>, <minecraft:melon>,
  <minecraft:melon>, <minecraft:melon>]);

