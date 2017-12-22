import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------- Tier 1 Progression Start --------------");

val stick = <ore:stickWood>;
val stone = <ore:stone>;
val rstone = <contenttweaker:material_part:35>;
val altar = <botania:altar>.giveBack();
val pure = <botania:specialflower>.withTag({type: "puredaisy"}).giveBack();

//Non-mob farm Bonemeal
mods.tconstruct.Drying.addRecipe(<minecraft:dye:15>, <skyresources:baseitemcomponent>, 1200);

//Non-mob farm Gunpowder
recipes.addShapeless(<minecraft:gunpowder>*4, [<ore:toolHammer>.onlyDamageAtLeast(0), 
  <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, 
  <botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]);

//////////////////
//Crafting Recipes
//////////////////
recipes.addShaped(<sgextraparts:polisher>, [
  [<ore:logWood>, <ore:logWood>, null],
  [<ore:stick>, <ore:stick>, null]]);

recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [
  [<tconstruct:materials:2>, <tconstruct:materials:2>, <tconstruct:materials:2>],
  [<tconstruct:materials:2>, null, <tconstruct:materials:2>],
  [<tconstruct:materials:2>, <tconstruct:materials:2>, <tconstruct:materials:2>]]);
recipes.addShaped(<minecraft:furnace>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ore:cobblestone>, null, <ore:cobblestone>],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

recipes.addShaped(<minecraft:dirt>*3, [
  [<ore:treeLeaves>, <ore:bark>, <ore:treeLeaves>],
  [<ore:bark>, <minecraft:dirt>, <ore:bark>],
  [<ore:treeLeaves>, <ore:bark>, <ore:treeLeaves>]]);

recipes.addShaped(<minecraft:bucket>, [
  [rstone, <ore:toolHammer>.onlyDamageAtLeast(0), rstone],
  [null, rstone, null]]);

//Wooden Gear
recipes.addShaped(<contenttweaker:material_part:13>, [
  [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
  [<ore:plankWood>, <ore:toolHammer>.onlyDamageAtLeast(0), <ore:plankWood>],
  [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>]]);

//Farming
recipes.addShaped(<silentgems:fluffypuffseeds>, [
  [null, <minecraft:feather>, null],
  [<minecraft:feather>, <minecraft:wheat_seeds>,<minecraft:feather>],
  [null, <minecraft:feather>, null]]);

//Petal Apothecary
recipes.addShaped(<botania:altar>, [
  [<ceramics:clay_slab>, null, <ceramics:clay_slab>],
  [null, <ceramics:clay_hard>, null],
  [<ceramics:clay_hard>, <ceramics:clay_hard>, <ceramics:clay_hard>]]);
recipes.addShapeless(<minecraft:reeds> , [<botania:altar>, <minecraft:melon>, <minecraft:melon>,
  <minecraft:melon>, <minecraft:melon>]);

recipes.addShaped(<minecraft:cauldron>, [
  [rstone, null, rstone],
  [rstone, <ore:toolHammer>.onlyDamageAtLeast(0), rstone],
  [rstone, rstone, rstone]]);

recipes.remove(<minecraft:dropper>);
recipes.addShaped(<minecraft:dropper>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ore:cobblestone>, <minecraft:lever>, <ore:cobblestone>],
  [<ore:cobblestone>, <ore:trapdoorWood>, <ore:cobblestone>]]);

recipes.remove(<plants2:brewing_cauldron>);
recipes.addShaped(<plants2:brewing_cauldron>, [
  [<ore:mysticPlant>, <ore:mysticPlant>, <ore:mysticPlant>],
  [<skyresources:alchemyitemcomponent:2>, <minecraft:cauldron>, <skyresources:alchemyitemcomponent:2>],
  [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

recipes.addShaped(<itank:blocktank>, [
  [<ore:blockGlass>, <tconstruct:seared_tank:1>, <ore:blockGlass>],
  [<ore:blockGlass>, <minecraft:bucket>, <ore:blockGlass>],
  [<ore:blockGlass>, <tconstruct:seared_tank:1>, <ore:blockGlass>]]);

recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [
  [rstone, null, rstone],
  [rstone, <wopper:wopper>, rstone],
  [null, rstone, null]]);

recipes.addShaped(<minecraft:hopper>, [
  [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <wopper:wopper>, <minecraft:iron_ingot>],
  [null, <minecraft:iron_ingot>, null]]);

recipes.remove(<darkutils:trap_move>);
recipes.addShaped(<darkutils:trap_move>*2, [
  [null, null, null],
  [rstone, <ore:slimeball>, rstone],
  [<ore:dyeBlack>, <minecraft:sugar>, <ore:dyeBlack>]]);

recipes.addShaped(<immersiveengineering:tool>, [
  [null, rstone, <ore:string>],
  [null, <ore:stick>, rstone],
  [<ore:stick>, null, null]]);

recipes.removeByRecipeName("immersivetech:materials/slime_ball");
recipes.addShapeless(<xtones:bitt:6>, [<contenttweaker:portalblockt>]);

//Bed nerf
recipes.remove(<minecraft:bed:*>);
recipes.addShaped(<minecraft:bed>, [
  [null, <minecraft:clock>, null],
  [<ore:blockWool>,<ore:blockWool>, <ore:blockWool>],
  [<extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>]]);

<minecraft:bed:*>.addTooltip("For respawning options, see Respawn Obelisk");

recipes.remove(<natura:respawn_obelisk>);
recipes.addShaped(<natura:respawn_obelisk>, [
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>],
  [<natura:nether_logs>, <mysticalagriculture:crafting>, <natura:nether_logs>],
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>]]);

// Smeltery
recipes.remove(<tconstruct:soil>);
mods.skyresources.combustion.addRecipe(<tconstruct:materials>*16, [
  <minecraft:sand>*4,<minecraft:gravel>*4,<minecraft:clay>], 400);
mods.skyresources.combustion.addRecipe(<tconstruct:materials>*4, [
  <minecraft:sand>,<minecraft:gravel>,<minecraft:clay_ball>], 150);

// Reinforced Stone
mods.tconstruct.Alloy.addRecipe(<liquid:reinforced_stone>*432, [<liquid:stone>*144, <liquid:clay>*72, <liquid:glass>*500]);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:2>, <minecraft:brick_block>, <liquid:reinforced_stone>, 1296, true);
mods.tconstruct.Casting.addTableRecipe(rstone, <minecraft:brick>, <liquid:reinforced_stone>, 144, true);

// Reinforced Stone Gear / Block / Ingot / Rod
recipes.addShaped(<contenttweaker:material_part:41>, [
  [rstone],
  [rstone]]);

recipes.addShaped(<contenttweaker:material_part:37>, [
  [<contenttweaker:material_part:41>, rstone, <contenttweaker:material_part:41>],
  [rstone, <ore:toolHammer>.onlyDamageAtLeast(0), rstone],
  [<contenttweaker:material_part:41>, rstone, <contenttweaker:material_part:41>]]);
recipes.addShaped(<contenttweaker:material_part:37>, [
  [<contenttweaker:material_part:41>, rstone, <contenttweaker:material_part:41>],
  [rstone, <ore:gearStone>, rstone],
  [<contenttweaker:material_part:41>, rstone, <contenttweaker:material_part:41>]]);

recipes.addShapeless(rstone*9, [<contenttweaker:sub_block_holder_0:2>]);
recipes.addShapeless(<contenttweaker:sub_block_holder_0:2>, 
  [rstone, rstone, rstone, rstone, rstone, rstone, rstone, rstone, rstone]);
recipes.addShapeless(<contenttweaker:material_part:40>*9, [rstone]);
recipes.addShapeless(rstone, [<contenttweaker:material_part:40>, <contenttweaker:material_part:40>, <contenttweaker:material_part:40>,
  <contenttweaker:material_part:40>, <contenttweaker:material_part:40>,<contenttweaker:material_part:40>,
  <contenttweaker:material_part:40>,<contenttweaker:material_part:40>,<contenttweaker:material_part:40>]);

//Casting / Alloying
mods.tconstruct.Alloy.addRecipe(<liquid:glass-_slime_composite>*10, [<liquid:slime>*10, <liquid:glass>*10]);
mods.tconstruct.Melting.addRecipe(<liquid:slime> * 250, <minecraft:slime_ball>);
mods.tconstruct.Casting.addTableRecipe(<minecraft:slime_ball>, null, <liquid:slime>, 250);
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, <tconstruct:edible:3>, <liquid:glass-_slime_composite>, 1000, true);

//Flax 
vanilla.seeds.addSeed(<actuallyadditions:item_flax_seed> % 150);


///////////////////
//Portal Fabricator
///////////////////
<xtones:zome:15>.displayName = "Base Alchemical Beacon";
mods.skyresources.fusion.addRecipe(<xtones:zome:15>, [<minecraft:obsidian>], 0.75);
recipes.addShapeless(<xtones:zome:12>, [pure, <xtones:zome:15>]);

<xtones:zeta:12>.displayName = "Alchemical Baseplate";
mods.skyresources.freezer.addRecipe(<xtones:zeta:12>, <embers:block_caminite_brick>, 1000);

recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table>, [
  [null ,<minecraft:book>, null],
  [<skyresources:alchemyitemcomponent:10>, <minecraft:obsidian>, <skyresources:alchemyitemcomponent:10>],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

<chisel:netherbrick:8>.displayName = "Reinforced Lava Concentrator";
mods.tconstruct.Casting.addBasinRecipe(<chisel:netherbrick:8>, <contenttweaker:sub_block_holder_0:2>, <liquid:lava>, 1000, true);

<chisel:factory:8>.displayName = "Basic Circuitry";
recipes.remove(<chisel:factory>);

recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook>, [
  [null, rstone,null],
  [null,<ore:stickWood>,null],
  [null,<ore:plankWood>,null]]);


//addDescription(IItemStack item, string[] desc);
//each string inside the array will have it's own line(s)
mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"}),
  [ "Portal Fabricator",
    "1 Machine Controller",
    "2 Item Input",
    "1 Item Output",
    "1 Fluid Input Hatch",
    "24 Alchemical Baseplate (Type 13)",
    "10 Livingrock Bricks",
    "12 Reinforced Lava Concentrator",
    "4 Base Alchemical Beacon (Type 13)",
    "4 Buckets of Lava",
    "1 Enchantment Table"]);

mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:ender_saturator"}),
  [ "Ender Saturator",
    "1 Machine Controller", 
    "27x Korp:6",
    "8 Kryp:4", 
    "9 Kryp:7", 
    "12 Korp:12",  
    "12 Sync:13", 
    "22 Hardened Enderium Glass", 
    "3 Cache", 
    "14 Iron Bars", 
    "1 Energy Input Hatch",  
    "1 Item Input", 
    "1 Item Output",
    "1 Fluid Input",
    "3 Vena:6", 
    "1 Bucket of Resonant Ender",
    "2 Enderium Blocks",
    "4 Editable Slants with Enderium Blocks" 
    ]);

mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:assembly_machine"}),
  [ "Assembly Machine",
    "1 Machine Controller",
    "1 Item Input",
    "1 Item Output",
    "1 Fluid Input",
    "1 Energy Input Hatch",
    "All inputs and outputs can be substituted by machine casings"]);

mods.jei.JEI.addDescription(<contenttweaker:portalblockt>,
  ["Constructed similar to a Nether Portal but uses a worm as an igniter. It can also be crafted into another block if you don't like the texture."]);

print("-------------- Tier 1 Progression End --------------");