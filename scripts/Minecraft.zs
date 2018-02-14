import mods.botania.Apothecary;
import mods.artisanworktables.Worktable;


  #Bed
recipes.remove(<minecraft:bed:*>);
<minecraft:bed:*>.addTooltip("Disabled due to time skipping. For earlier respawning options, see Respawn Obelisk");

  #Bookshelf
recipes.remove(<minecraft:bookshelf>);
Worktable.createRecipeBuilder("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<minecraft:book>, <minecraft:book>, <minecraft:book>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:toolHammer>, 5)
  .setFluid(<fluid:experience>*1000)
  .addOutput(<minecraft:bookshelf>)
  .create();

  #Bonemeal
mods.tconstruct.Drying.addRecipe(<minecraft:dye:15>, <skyresources:baseitemcomponent>, 600);
Worktable.addRecipeShapeless("basic", <minecraft:dye:15>*3, <ore:toolHammer>, 1, [<ore:bone>]);

  #Bucket
Worktable.addRecipeShaped(
  "basic", <minecraft:bucket>, <ore:toolHammer>, 4, false, [
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [null, ingotReinforcedStone, null]]);

	#Cauldron
recipes.addShaped(<minecraft:cauldron>, [
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [ingotReinforcedStone, ingotReinforcedStone, ingotReinforcedStone]]);

  #Charcoal
furnace.remove(<minecraft:coal:1>, null);
furnace.addRecipe(<minecraft:coal:1>, <skyresources:baseitemcomponent>*2);

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

  #Enchanting Table
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table>, [
  [null ,<minecraft:book>, null],
  [<skyresources:alchemyitemcomponent:10>, <minecraft:obsidian>, <skyresources:alchemyitemcomponent:10>],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

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

  #Glowstone
recipes.removeByRegex("reliquary:items/uncrafting/glowstone_dust");

  #Gunpowder
recipes.removeByRegex("natura:common/gunpowder");
Worktable.addRecipeShapeless(
  "basic", <minecraft:gunpowder>*4, <ore:toolHammer>, 1, 
  [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, 
  <botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]);

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
recipes.remove(<minecraft:iron_bars>);
recipes.addShaped(<minecraft:iron_bars>*16, [
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

  #Minecart
recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart>, [
  [<ore:plateIron>, null, <ore:plateIron>],
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

  #Planks - Oak
recipes.addShaped(<minecraft:planks>, [
  [<minecraft:wooden_slab>],
  [<minecraft:wooden_slab>]]);

	#Piston
recipes.addShaped(<minecraft:piston>, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  [<ore:gearReinforcedStone>, ingotReinforcedStone, <ore:gearReinforcedStone>],
  [<ore:stone>,<ore:dustRedstone>,<ore:stone>]]);

  #Redstone
recipes.removeByRegex("reliquary:items/uncrafting/redstone");


	#Sugar Cane
mods.botania.Apothecary.addRecipe(<minecraft:reeds>, [<ore:petalLime>, <ore:petalLime>, <ore:petalGreen>, <ore:petalGreen>]);

	#Tripwire Hook
recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook>, [
  [null, ingotReinforcedStone,null],
  [null,<ore:stickWood>,null],
  [null,<ore:plankWood>,null]]);
