import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.forestry.Carpenter as carp;

var QAC = <skyresources:baseitemcomponent:6>;

/////////
//Casings
/////////
recipes.remove(<minecraft:minecart>);
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<minecraft:minecart>, [
[<ore:plateIron>, null, <ore:plateIron>],
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
]);
recipes.addShaped(<forestry:sturdy_machine>, [
[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>],
[<ore:plateBrass>,<minecraft:minecart>,<ore:plateBrass>],
[<ore:plateBrass>,<ore:plateBrass>,<ore:plateBrass>]
]);
recipes.remove(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>, [
[<ore:plateBronze>, <ore:glass>, <ore:plateBronze>],
[<ore:plateBronze>, <forestry:sturdy_machine>, <ore:plateBronze>],
[<ore:plateBronze>, <skyresources:combustionheater:12>, <ore:plateBronze>]
]);

////////////////////
//Carpenter Circuits 
////////////////////
mods.tconstruct.Casting.addTableRecipe(<forestry:chipsets>, <skyresources:baseitemcomponent:6>, <liquid:tin>, 1296);

carp.addRecipe(QAC, [
[<ore:plateIron>, <minecraft:comparator>,<ore:plateIron>],
[<ore:plateIron>, <ore:materialResin>,<ore:plateIron>],
[<ore:plateIron>, <minecraft:quartz_block>,<ore:plateIron>]
], 20);
carp.addRecipe(<contenttweaker:material_part:32>, [
[null,<minecraft:clay_ball>,null],
[<skyresources:techitemcomponent>,<minecraft:brick>,<skyresources:techitemcomponent>],
[null,<minecraft:sand>,null]
], 20);
carp.addRecipe(<skyresources:baseitemcomponent:3>, [
[null,<minecraft:slime_ball>,null],
[<ore:dustObsidian>,<contenttweaker:material_part:32>,<ore:dustObsidian>],
[null,<ore:glass>,null]
], 20);
carp.addRecipe(<forestry:chipsets>*2, [
[<ore:ingotTin>,<ore:materialResin>,<ore:ingotTin>],
[<ore:plateTin>,QAC,<ore:plateTin>],
[<ore:ingotTin>,<minecraft:redstone>,<ore:ingotTin>]], 
20,<liquid:water>*1000);

////////
//Cables
////////
recipes.remove(<immersiveengineering:wirecoil>);
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.remove(<immersiveengineering:wirecoil:2>);

recipes.remove(<thermaldynamics:duct_0>);
<thermaldynamics:duct_0>.displayName = "Basic Fluxduct";
recipes.addShaped(<thermaldynamics:duct_0>, [
[<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>],
[<ore:plateRedstone>,<forestry:chipsets>,<ore:plateRedstone>],
[<ic2:plate:4>,<ic2:plate:4>,<ic2:plate:4>]
]);

/////////
//Engines
/////////
recipes.remove(<forestry:engine_clockwork>);
recipes.remove(<forestry:engine_biogas>);
recipes.remove(<forestry:engine_peat>);
recipes.addShaped(<forestry:engine_peat>, [
[null,<thermaldynamics:duct_0>,null],
[<ore:gearBronze>,<forestry:chipsets>,<ore:gearBronze>],
[<ore:blockBronze>,<forestry:peat>,<ore:blockBronze>]
]);
recipes.addShaped(<forestry:engine_biogas>, [
[null,<thermaldynamics:duct_0>,null],
[<ore:gearBronze>,<forestry:chipsets>,<ore:gearBronze>],
[<ore:blockBronze>,<minecraft:lava_bucket>,<ore:blockBronze>]
]);
