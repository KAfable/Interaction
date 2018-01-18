import mods.integrateddynamics.Squeezer as sq;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Squeezer
// inputStack, outputStack, outputFluid
//mods.integrateddynamics.Squeezer.addRecipe(<minecraft:melon>, <minecraft:stick>, <liquid:water> * 100);
// inputStack, outputStack, outputFluid
//mods.integrateddynamics.Squeezer.removeRecipe(<minecraft:melon>, <minecraft:stick>, <liquid:water> * 100);
// outputStack, outputFluid
//mods.integrateddynamics.Squeezer.removeRecipesWithOutput(<minecraft:leather>, null);

  #Generator

	#Squeezer
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>, [
  [<ore:stickIron>, <minecraft:iron_block>, <ore:stickIron>],
  [<ore:gearReinforcedStone>, null, <ore:gearReinforcedStone>],
  [<ore:stickIron>,<minecraft:heavy_weighted_pressure_plate>,<ore:stickIron>]]);

recipes.remove(<integrateddynamics:mechanical_squeezer>);
recipes.remove(<integrateddynamics:mechanical_drying_basin>);

val squeezerRemoved = [
  <thermalfoundation:material:0>,
  <thermalfoundation:material:1>,
  <thermalfoundation:material:64>,
  <thermalfoundation:material:65>,
  <thermalfoundation:material:66>,
  <thermalfoundation:material:67>,
  <thermalfoundation:material:69>,
  <thermalfoundation:material:70>,
  <thermalfoundation:material:72>,
  <minecraft:emerald>,
  <minecraft:diamond>,
  <evilcraft:dark_gem>,
  <minecraft:dye:4>*8,
  <minecraft:redstone>*8,
  <minecraft:cobblestone>,
  <minecraft:gravel>,
  <minecraft:flint>
  ] as IItemStack[];
for i in squeezerRemoved {
  sq.removeRecipesWithOutput(i, null);  
}

