import mods.integrateddynamics.Squeezer as sq;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

  #Generator

	#Squeezer
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>, [
  [<ore:stickIron>, <minecraft:iron_block>, <ore:stickIron>],
  [<ore:gearReinforcedStone>, null, <ore:gearReinforcedStone>],
  [<ore:stickIron>,<minecraft:heavy_weighted_pressure_plate>,<ore:stickIron>]]);

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
  <minecraft:flint>,

  ] as IItemStack[];
for i in squeezerRemoved {
  sq.removeRecipesWithOutput(i, null);  
}

	#Plates (Squeezer)
val squeezerPlateInput = [
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <minecraft:redstone_block>,
  <thermalfoundation:material:128>,
  <thermalfoundation:material:129>,
  <thermalfoundation:material:163>,
  <abyssalcraft:abyingot>,
  <mekanism:ingot:4>,
  <techreborn:ingot:1>,
  <minecraft:dye:4>
  ] as IItemStack[];

val squeezerPlateOutput = [
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <techreborn:plates:4>,
  <thermalfoundation:material:320>,
  <thermalfoundation:material:321>,
  <thermalfoundation:material:355>,
  <contenttweaker:material_part:1>,
  <thermalfoundation:material:352>,
  <techreborn:plates:17>,
  <ic2:plate:4>
  ] as IItemStack[];

for i in 0 to 10 {
  mods.integrateddynamics.Squeezer.addRecipe(squeezerPlateInput[i], squeezerPlateOutput[i], null);}
