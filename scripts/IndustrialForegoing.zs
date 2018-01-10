import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("---------------------Industrial Foregoing Start-----------------------");
recipes.remove(<industrialforegoing:block_placer>);
recipes.addShaped(<industrialforegoing:block_placer>, [
  [null, null, null],
  [<contenttweaker:basicrobotarm>, casingBasic, <contenttweaker:basicrobotarm>],
  [null, null, null]]);
print("----------------------Industrial Foregoing End------------------------");