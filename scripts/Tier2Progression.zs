/*
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.integrateddynamics.Squeezer as sq;

print("-------------- Tier 2 Progression Start --------------");

//Hammer Repair
/*
recipes.addShapeless("pickrepair",diaPick, //we start normal, by writing the output
  [diaPick.anyDamage().marked("mark"),<minecraft:diamond>], //followed by the input array. One change though - we mark the diamond pickaxe, so we can use it in the function later
                              //We'll only need the input parameter, though.
  function(out, ins, cInfo){  //It needs 3 parameters, one for the output, one for the inputs and one for crafting info. 
    return ins.mark.withDamage(max(0,ins.mark.damage - 10)); //now we return the pickaxe with either 0 DMG or Current damage -10, whatever is higher. This is to prevent negative damage values.
  }, 
  null);  //We don't need a recipeAction here so just set it to null
*//*
recipes.addShapeless("ironHammerRepair", <thermalfoundation:tool.hammer_iron>, 
  [<thermalfoundation:tool.hammer_iron>.anyDamage().marked("mark").noReturn(), <minecraft:iron_ingot>],
  function(out, ins, cInfo) {
    return ins.mark.withDamage(max(0, ins.mark.damage - 400));
    }, null);

print("-------------- Tier 2 Progression End --------------");
*/