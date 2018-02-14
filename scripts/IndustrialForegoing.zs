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
print("----------------------Industrial Foregoing End------------------------");