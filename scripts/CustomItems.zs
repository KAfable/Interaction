import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("------------------------Custom Items Start-------------------------");

recipes.addShaped(robotArmBasic, [
  [motorBasic, <ore:plateIron>, motorBasic],
  [<ore:plateIron>, null, <ore:plateIron>],
  [null , null, <contenttweaker:basicpiston>]]);

print("-------------------------Custom Items End--------------------------");

