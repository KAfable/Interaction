import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------- Tier 1 Progression Start --------------");

val stick = <ore:stickWood>;
val stone = <ore:stone>;
val rstone = <contenttweaker:material_part:35>;
val altar = <botania:altar>.giveBack();

//Non-mob farm Gunpowder
recipes.addShapeless(<minecraft:gunpowder>*4, [<ore:toolHammer>.onlyDamageAtLeast(0), 
  <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, 
  <botania:livingwood>, <botania:livingwood>, <botania:livingwood>, <botania:livingwood>]);
//Wooden Gear
recipes.addShaped(<contenttweaker:material_part:13>, [
  [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
  [<ore:plankWood>, <ore:toolHammer>.onlyDamageAtLeast(0), <ore:plankWood>],
  [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>]]);

recipes.remove(<plants2:brewing_cauldron>);
recipes.addShaped(<plants2:brewing_cauldron>, [
  [<ore:mysticPlant>, <ore:mysticPlant>, <ore:mysticPlant>],
  [<skyresources:alchemyitemcomponent:2>, <minecraft:cauldron>, <skyresources:alchemyitemcomponent:2>],
  [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

recipes.addShaped(<itank:blocktank>, [
  [<ore:blockGlass>, <tconstruct:seared_tank:1>, <ore:blockGlass>],
  [<ore:blockGlass>, <minecraft:bucket>, <ore:blockGlass>],
  [<ore:blockGlass>, <tconstruct:seared_tank:1>, <ore:blockGlass>]]);

recipes.remove(<darkutils:trap_move>);
recipes.addShaped(<darkutils:trap_move>*2, [
  [null, null, null],
  [rstone, <ore:slimeball>, rstone],
  [<ore:dyeBlack>, <minecraft:sugar>, <ore:dyeBlack>]]);

recipes.addShaped(<immersiveengineering:tool>, [
  [null, rstone, <ore:string>],
  [null, <ore:stick>, rstone],
  [<ore:stick>, null, null]]);

recipes.addShapeless(<xtones:bitt:6>, [<contenttweaker:portalblockt>]);

//Bed nerf
recipes.remove(<minecraft:bed:*>);
recipes.addShaped(<minecraft:bed>, [
  [null, <minecraft:clock>, null],
  [<ore:blockWool>,<ore:blockWool>, <ore:blockWool>],
  [<extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>, <extrautils2:decorativesolidwood:1>]]);

<minecraft:bed:*>.addTooltip("For earlier respawning options, see Respawn Obelisk");

recipes.remove(<natura:respawn_obelisk>);
recipes.addShaped(<natura:respawn_obelisk>, [
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>],
  [<natura:nether_logs>, <mysticalagriculture:crafting>, <natura:nether_logs>],
  [<natura:nether_logs>, <natura:nether_logs>, <natura:nether_logs>]]);

  #Smeltery
mods.tconstruct.Melting.addRecipe(<liquid:lava> * 1000,<skyresources:blazepowderblock>);

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

  #Base Alchemical Beacon
<xtones:zome:15>.displayName = "Base Alchemical Beacon";
mods.skyresources.fusion.addRecipe(<xtones:zome:15>, [<minecraft:obsidian>], 0.75);

recipes.addShapeless(<xtones:zome:12>,[<xtones:zome:15>, <botania:specialflower>.withTag({type: "puredaisy"}.giveBack()]);

mods.botania.PureDaisy.addRecipe(<xtones:zome:15>, <xtones:zome:12>, 1200);

  #Alchemical Baseplate
<xtones:zeta:12>.displayName = "Alchemical Baseplate";
mods.skyresources.freezer.addRecipe(<xtones:zeta:12>, <embers:block_caminite_brick>, 1000);

  #Reinforced Lava Concentrator
<chisel:netherbrick:8>.displayName = "Reinforced Lava Concentrator";
mods.tconstruct.Casting.addBasinRecipe(<chisel:netherbrick:8>, <contenttweaker:sub_block_holder_0:2>, <liquid:lava>, 1000, true);

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