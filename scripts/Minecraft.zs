import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
  
  #Bed
recipes.remove(<minecraft:bed:*>);
<minecraft:bed:*>.addTooltip("Disabled due to time skipping. For earlier respawning options, see Respawn Obelisk");

  #Boats
var boatArray = {
  <minecraft:boat> : <minecraft:planks>,
  <minecraft:spruce_boat> : <minecraft:planks:1>,
  <minecraft:birch_boat> : <minecraft:planks:2>,
  <minecraft:jungle_boat>: <minecraft:planks:3>,
  <minecraft:acacia_boat> : <minecraft:planks:4>,
  <minecraft:dark_oak_boat>: <minecraft:planks:5>,
  <ic2:boat:1> : <ic2:crafting>
  } as IItemStack[IItemStack];

for output, input in boatArray {
  recipes.remove(output);

  RecipeBuilder.get("basic")
    .setShaped([
      [null, null, null],
      [input, null, input],
      [input, input, input]])
    .setFluid(<liquid:creosote>*500)
    .addTool(<ore:toolHammer>, 5)
    .addOutput(output)
    .create();
}

  #Bookshelf
recipes.remove(<minecraft:bookshelf>);
RecipeBuilder.get("basic")
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
RecipeBuilder.get("basic")
  .setShapeless([<ore:bone>])
  .addTool(<ore:toolHammer>, 1)
  .addOutput(<minecraft:dye:15>*3)
  .create();

  #Bucket
RecipeBuilder.get("basic")
  .setShaped([
      [ingotReinforcedStone, null, ingotReinforcedStone],
      [null, ingotReinforcedStone, null]])
  .addTool(<ore:toolHammer>, 4)
  .addOutput(<minecraft:bucket>)
  .create();

	#Cauldron
recipes.addShaped(<minecraft:cauldron>, [
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [ingotReinforcedStone, null, ingotReinforcedStone],
  [ingotReinforcedStone, ingotReinforcedStone, ingotReinforcedStone]]);

  #Charcoal
furnace.remove(<minecraft:coal:1>, null);
furnace.addRecipe(<minecraft:coal:1>, <skyresources:baseitemcomponent>*2);

  #Comparator
recipes.remove(<minecraft:comparator>);
recipes.addShaped(<minecraft:comparator>, [
  [null, <minecraft:redstone_torch>, null],
  [<minecraft:redstone_torch>, gearRedstone, <minecraft:redstone_torch>],
  [<ore:stone>, <ore:stone>, <ore:stone>]]);

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
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, 
      <botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>])
  .addTool(<ore:toolHammer>, 1)
  .addOutput(<minecraft:gunpowder>*4)
  .create();

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

  #Leather
furnace.remove(<minecraft:leather>);

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
recipes.removeByRegex("crossroads:piston");
recipes.addShaped(<minecraft:piston>, [
  [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
  [<ore:gearReinforcedStone>, ingotReinforcedStone, <ore:gearReinforcedStone>],
  [<ore:stone>, <minecraft:lever>,<ore:stone>]]);

  #Prismarine
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<minecraft:prismarine_shard>);

  #Redstone
recipes.removeByRegex("reliquary:items/uncrafting/redstone");
furnace.remove(<minecraft:redstone>);

  #Soul Sand
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<minecraft:soul_sand>);

  #Snowball
recipes.addShapeless(<minecraft:snowball>*16, [<ore:rodBlizz>, <ore:sand>]);

	#Sugar Cane
mods.botania.Apothecary.addRecipe(<minecraft:reeds>, [<ore:petalLime>, <ore:petalLime>, <ore:petalGreen>, <ore:petalGreen>]);

  #Torches
RecipeBuilder.get("basic")
  .setShaped([
      [null, null, null],
      [null, <ore:blockWool>, null],
      [<ore:stick>, <ore:stick>, <ore:stick>]])
  .setFluid(<liquid:creosote>)
  .addOutput(<minecraft:bucket>)
  .create();

  #TNT
recipes.remove(<minecraft:tnt>);

	#Tripwire Hook
recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook>, [
  [null, ingotReinforcedStone,null],
  [null,<ore:stickWood>,null],
  [null,<ore:plankWood>,null]]);
