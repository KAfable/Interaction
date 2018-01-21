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
print("----------------------Industrial Foregoing End------------------------");