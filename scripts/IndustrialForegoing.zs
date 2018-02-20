import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("---------------------Industrial Foregoing Start-----------------------");
	#Block Placer
recipes.remove(<industrialforegoing:block_placer>);
recipes.addShaped(<industrialforegoing:block_placer>, [
  [null, null, null],
  [<contenttweaker:basicrobotarm>, casingBasic, <contenttweaker:basicrobotarm>],
  [null, null, null]]);
  	#Block Breaker
recipes.remove(<industrialforegoing:block_destroyer>);
recipes.addShaped(<industrialforegoing:block_destroyer>, [
  [fluxductBasic, gearRedstone, fluxductBasic],
  [plateRubber, casingBasic, plateRubber],
  [fluxductBasic, <randomthings:blockbreaker>, fluxductBasic]]);
  	#Fluid Pump
<industrialforegoing:fluid_pump>.addTooltip(format.aqua("Search algorithm is not optimized for oil pumping."));
	#Plastic Sheets
furnace.remove(<industrialforegoing:plastic>);
mods.nuclearcraft.ingot_former.addRecipe(<liquid:plastic>*250, <industrialforegoing:plastic>, 200);
mods.thermalexpansion.Transposer.addFillRecipe(<industrialforegoing:plastic>, null, <liquid:plastic>*250, 8000);


print("----------------------Industrial Foregoing End------------------------");