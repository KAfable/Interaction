import mods.tconstruct.Alloy as tca;
import mods.tconstruct.Casting as tcc;
import mods.tconstruct.Drying as tcd;
import mods.tconstruct.Fuel as tcf;
import mods.tconstruct.Melting as tcm;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("----------------Tinkers Construct Start-------------");

  #Books - Pattern
recipes.removeByRegex("tconstruct:tools/book");

  #Crafting Station
recipes.remove(<tconstruct:tooltables>);
recipes.addShapeless(<tconstruct:tooltables>, [<cyclicmagic:block_workbench>]);

  #EFLN
recipes.remove(<tconstruct:throwball:1>);
<tconstruct:throwball:1>.addTooltip(format.aqua("Tier 4 Recipe WIP"));

  #Grout
recipes.remove(<tconstruct:soil>);

  #Lava
tcm.addRecipe(<liquid:lava> * 1000, <skyresources:blazepowderblock>);

  #Reinforced Stone Alloying`
tca.addRecipe(<liquid:reinforced_stone>*432, [<liquid:stone>*144, <liquid:clay>*72, <liquid:glass>*500]);
  #Reinforced Stone Block
tcc.addBasinRecipe(<contenttweaker:sub_block_holder_0:2>, <minecraft:brick_block>, <liquid:reinforced_stone>, 1296, true);
  #Reinforced Stone Ingot
tcc.addTableRecipe(ingotReinforcedStone, <minecraft:brick>, <liquid:reinforced_stone>, 144, true);

  #Glass Slime Composite and Ender Pearls
tca.addRecipe(<liquid:glass-_slime_composite>*10, [<liquid:slime>*10, <liquid:glass>*10]);
tcm.addRecipe(<liquid:slime> * 250, <minecraft:slime_ball>);
tcc.addTableRecipe(<minecraft:slime_ball>, null, <liquid:slime>, 250);
tcc.addTableRecipe(<minecraft:ender_pearl>, <tconstruct:edible:3>, <liquid:glass-_slime_composite>, 1000, true);

  #Slime Balls
mods.skyresources.combustion.removeRecipe(<tconstruct:edible:1>);
mods.skyresources.combustion.addRecipe(<tconstruct:edible:1>, [<minecraft:slime_ball>, <botania:dye:11>*2], 350);
mods.skyresources.combustion.removeRecipe(<tconstruct:edible:2>);
mods.skyresources.combustion.addRecipe(<tconstruct:edible:2>, [<minecraft:slime_ball>, <botania:dye:10>*2], 350);

  #Seared Brick
furnace.remove(<tconstruct:materials>);
mods.skyresources.combustion.addRecipe(<tconstruct:materials>*16, [
  <minecraft:sand>*4,<minecraft:gravel>*4,<minecraft:clay>], 400);
mods.skyresources.combustion.addRecipe(<tconstruct:materials>*4, [
  <minecraft:sand>,<minecraft:gravel>,<minecraft:clay_ball>], 150);
  
  #Seared Furnace
recipes.remove(<tconstruct:seared_furnace_controller>);

// Items
var itemDisabled = [
  <tconstruct:cast_custom:3>,
  <tconstruct:cast_custom:4>,
  <tconstruct:tooltables:3>,
  <tconstruct:toolforge>
  ] as IItemStack[];

for item in itemDisabled {
  mods.jei.JEI.removeAndHide(item);}


  #Slime Boots
recipes.remove(<tconstruct:slime_boots>);
  #Slime Boots - Blue Slime
recipes.remove(<tconstruct:slime_boots:1>);
  #Slime Boots - Purple Slime
recipes.remove(<tconstruct:slime_boots:2>);
  #Congealed BLood Boots
recipes.remove(<tconstruct:slime_boots:3>);
  #Slime Boots - Orange
recipes.remove(<tconstruct:slime_boots:4>);

  #Drying
tcd.addRecipe(<minecraft:leather>, <tp:monster_jerky>, 6000);
tcd.addRecipe(<minecraft:leather>, <tconstruct:edible:10>, 6000);

  #Molten Recipes - mods.tconstruct.Melting.removeRecipe(ILiquidStack output);
  #Iron


  #Copper
tcm.removeRecipe( <liquid:copper>);
tcm.addRecipe(    <liquid:copper>*16,   <thermalfoundation:material:192>);
tcm.addRecipe(    <liquid:copper>*96,   <contenttweaker:impuredustcopper>);
tcm.addRecipe(    <liquid:copper>*144,  <thermalfoundation:material:128>);
tcm.addRecipe(    <liquid:copper>*144,  <thermalfoundation:material:320>);
tcm.addRecipe(    <liquid:copper>*576,  <thermalfoundation:material:256>);
tcm.addRecipe(    <liquid:copper>*1296, <thermalfoundation:storage>);

var liquidDisabled = [
  <liquid:lead>,
  <liquid:silver>,
  <liquid:gold>,
  <liquid:tin>,
  <liquid:iron>,
  <liquid:zinc>,
  ] as ILiquidStack[];
val impure = [
  <contenttweaker:impuredustlead>,
  <contenttweaker:impuredustsilver>,
  <contenttweaker:impuredustgold>,
  <contenttweaker:impuredusttin>,
  <contenttweaker:impuredustiron>,
  <contenttweaker:impuredustzinc>,
  ] as IItemStack[];

for i in 0 to 6 {
  tcm.addRecipe(liquidDisabled[i]*96, impure[i]);
}

  #Basin Recipes
var basinDisabled = [
  <minecraft:iron_block>,
  <minecraft:gold_block>,
  <tconstruct:metal:1>,
  <tconstruct:metal:2>,
  <tconstruct:metal:4>,
  <tconstruct:metal:5>,
  <thermalfoundation:storage_alloy:4>,
  <abyssalcraft:ingotblock>,
  <abyssalcraft:ingotblock:1>,
  <techreborn:storage:2>,
  <techreborn:storage:3>,
  <techreborn:storage:5>,
  <techreborn:storage:8>,
  <techreborn:storage:10>
  ] as IItemStack[];

for item in basinDisabled {
  tcc.removeBasinRecipe(item);}

  #Table Recipes
var tableDisabled = [
  <tconstruct:cast_custom:3>,
  <tconstruct:cast_custom:4>,
  <thermalfoundation:material:24>,
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:289>,
  <thermalfoundation:material:291>,
  <thermalfoundation:material:293>,
  <thermalfoundation:material:322>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:325>,
  <thermalfoundation:material:326>,
  <thermalfoundation:material:327>,
  <thermalfoundation:material:328>,
  <thermalfoundation:material:353>,
  <thermalfoundation:material:354>,
  <thermalfoundation:material:356>,
  <thermalfoundation:material:357>,
  <thermalfoundation:material:358>,
  <thermalfoundation:material:359>,
  <redstonearsenal:material:128>,
  <techreborn:plates:17>,
  <techreborn:plates:19>,
  <techreborn:plates:30>,
  <techreborn:plates:31>,
  <techreborn:plates:32>,
  <techreborn:plates:33>,
  <techreborn:plates:34>,
  <techreborn:plates:35>,
  <tconstruct:bow_string>, 
  <tconstruct:fletching>, 
  <tconstruct:pick_head>, 
  <tconstruct:shovel_head>,
  <tconstruct:shard>,
  <tconstruct:sharpening_kit>,
  <tconstruct:axe_head>,
  <tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:shard"}),
  <tconstruct:cast_custom>,
  <tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"}),
  <tconstruct:cast_custom:1>,
  <tconstruct:cast_custom:2>,
  <tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:binding"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}),
  <tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:hand_guard"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:wide_guard"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:shard"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sharpening_kit"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:binding"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_sword_blade"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_tool_rod"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_plate"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sword_blade"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pick_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:axe_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:scythe_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:broad_axe_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_binding"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:cross_guard"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:knife_blade"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:shovel_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:hammer_head"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_limb"}),
  <tconstruct:clay_cast>.withTag({PartType: "tconstruct:excavator_head"}),
  <tconstruct:shovel_head>,
  <tconstruct:pick_head>,
  <tconstruct:axe_head>,
  <tconstruct:broad_axe_head>,
  <tconstruct:sword_blade>,
  <tconstruct:hammer_head>,
  <tconstruct:cross_guard>,
  <tconstruct:hand_guard>,
  <tconstruct:knife_blade>,
  <tconstruct:bow_limb>,
  <tconstruct:arrow_head>,
  <tconstruct:excavator_head>,
  <tconstruct:pan_head>,
  <tconstruct:tough_binding>,
  <tconstruct:binding>,
  <tconstruct:tough_tool_rod>,
  <tconstruct:sign_head>,
  <tconstruct:scythe_head>,
  <tconstruct:wide_guard>,
  <tconstruct:cast>.withTag({PartType: "tconstruct:gear"})
  ] as IItemStack[];

for item in tableDisabled {
  tcc.removeTableRecipe(item);}

var tconJEIDisabled = [
  <tconstruct:hammer_head>,
  <tconstruct:hammer>
  ] as IItemStack[];

for item in tconJEIDisabled {
  mods.jei.JEI.removeAndHide(item);
}

print("-----------------Tinkers Construct End--------------");