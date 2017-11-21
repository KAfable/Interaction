import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val stick = <ore:stickWood>;
val stone = <ore:stone>;
val rstone = <contenttweaker:material_part:32>;
val altar = <botania:altar>.giveBack();
val pure = <botania:specialflower>.withTag({type: "puredaisy"}).giveBack();

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

//Non-mob farm Bonemeal
mods.tconstruct.Drying.addRecipe(<skyresources:baseitemcomponent>, <minecraft:dye:15>, 1200);

//Non-mob farm Gunpowder
recipes.addShapeless(<minecraft:gunpowder>*4, [<roots:wood_hammer>.anyDamage(), 
  <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, 
  <botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]);
recipes.addShapeless(<minecraft:gunpowder>*4, [<roots:stone_hammer>.anyDamage(), 
  <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>,
  <botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]);

// Botania
recipes.addShapeless(<xtones:zome:12>, [pure, <skyresources:darkmatterblock>]);

// Polisher
recipes.addShaped(<minecraft:bucket>, [
  [rstone,<immersiveengineering:tool>,rstone],
  [null,rstone,null]]);

// Roots 2 Knife conflicts with Grinder
recipes.remove(<roots:stone_knife>);

//Crafting Recipes
recipes.addShaped(<minecraft:cauldron>, [
  [rstone, null, rstone],
  [rstone, null, rstone],
  [rstone, rstone, rstone]]);

recipes.addShaped(<plants2:brewing_cauldron>,[
  [<ore:plant>, <ore:plant>, <ore:plant>],
  [<skyresources:alchemyitemcomponent:2>, <minecraft:cauldron>, <skyresources:alchemyitemcomponent:2>],
  [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

recipes.addShaped(<itank:blocktank>, [
  [<ore:blockGlass>, <tconstruct:seared_tank:1>, <ore:blockGlass>],
  [<ore:blockGlass>, <minecraft:bucket>, <ore:blockGlass>],
  [<ore:blockGlass>, <tconstruct:seared_tank:1>, <ore:blockGlass>]]);

recipes.addShaped(<minecraft:hopper>, [
  [rstone, null, rstone],
  [rstone, <minecraft:chest>, rstone],
  [null, rstone, null]]);


recipes.remove(<darkutils:trap_move>);
recipes.addShaped(<darkutils:trap_move>, [
  [null, null, null],
  [rstone, <ore:slimeball>, rstone],
  [<ore:stone>, <minecraft:sugar>, <ore:stone>]]);

// Smeltery
recipes.remove(<tconstruct:soil>);
mods.skyresources.combustion.addRecipe(<tconstruct:materials>*16, [<minecraft:sand>*4,<minecraft:gravel>*4,<minecraft:clay>], 400);
mods.skyresources.combustion.addRecipe(<tconstruct:materials>*4, [<minecraft:sand>,<minecraft:gravel>,<minecraft:clay_ball>], 150);

// Reinforced Stone
mods.tconstruct.Alloy.addRecipe(<liquid:reinforced_stone>*432, [<liquid:stone>*144, <liquid:clay>*72, <liquid:glass>*500]);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, <minecraft:brick_block>, <liquid:reinforced_stone>, 1296, true);
mods.tconstruct.Casting.addTableRecipe(rstone, <minecraft:brick>, <liquid:reinforced_stone>, 144, true);

// Reinforced Stone Gear / Block / Ingot
recipes.addShaped(<contenttweaker:material_part:29>, [
  [null, rstone, null],
  [rstone, <immersiveengineering:tool>, rstone],
  [null, rstone, null]]);
recipes.addShaped(<contenttweaker:material_part:29>, [
  [null, rstone, null],
  [rstone, <ore:gearStone>, rstone],
  [null, rstone, null]]);
recipes.addShapeless(rstone*9, [<contenttweaker:sub_block_holder_0:1>]);
recipes.addShapeless(<contenttweaker:material_part:31>*9, [rstone]);


//Fluffy Puff Seeds
recipes.addShaped(<silentgems:fluffypuffseeds>, [
  [null, <minecraft:feather>, null],
  [<minecraft:feather>, <minecraft:wheat_seeds>,<minecraft:feather>],
  [null, <minecraft:feather>, null]]);

//Tinkers Recipes
mods.tconstruct.Alloy.addRecipe(<liquid:glass-_slime_composite>, [<liquid:slime>, <liquid:glass>]);
mods.tconstruct.Melting.addRecipe(<liquid:slime> * 250, <minecraft:slime_ball>);
mods.tconstruct.Casting.addTableRecipe(<minecraft:slime_ball>, null, <liquid:slime>, 250);
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, <tconstruct:edible:3>, <liquid:glass-_slime_composite>, 1000);
mods.tconstruct.Casting.addBasinRecipe(<xtones:zeta:12>*3, <skyresources:casing:6>, <liquid:putty>, 144);
<xtones:zeta:12>.displayName = "Alchemical Baseplate";
mods.tconstruct.Casting.addBasinRecipe(<chisel:netherbrick:8>, <contenttweaker:sub_block_holder_0:1>, <liquid:lava>, 1000);

//Setting up for Portal Fabricator
<skyresources:darkmatterblock>.displayName = "Base Alchemical Beacon (Inactive)";
<xtones:zome:12>.displayName = "Base Alchemical Beacon (Active)";
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped(<minecraft:enchanting_table>, [
  [null,<minecraft:book>,null],
  [<skyresources:alchemyitemcomponent:10>,<minecraft:obsidian>,<skyresources:alchemyitemcomponent:10>],
  [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]]);
<chisel:netherbrick:8>.displayName = "Reinforced Lava Concentrator";
recipes.remove(<chisel:factory>);
recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook>, [
  [null, rstone,null],
  [null,<ore:stickWood>,null],
  [null,<ore:plankWood>,null]]);
<chisel:factory:8>.displayName = "Basic Circuitry";

//addDescription(IItemStack item, string[] desc);
//each string inside the array will have it's own line(s)
mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"}),
  [ "Portal Fabricator",
    "1 Machine Controller",
    "2 Item Input",
    "1 Item Output",
    "1 Fluid Input Hatch",
    "24 Alchemical Baseplate",
    "10 Basic Circuitry",
    "12 Reinforced Lava Concentrator",
    "4 Base Alchemical Beacon",
    "4 Buckets of Lava",
    "1 Enchanting Table"]);

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

