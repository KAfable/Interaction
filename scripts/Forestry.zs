import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.forestry.Carpenter as carp;

var QAC = <skyresources:baseitemcomponent:6>;

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

var c1 = [
[<ore:plateIron>, <minecraft:comparator>,<ore:plateIron>],
[<ore:plateIron>, <minecraft:redstone>,<ore:plateIron>],
[<ore:plateIron>, <minecraft:quartz_block>,<ore:plateIron>]
] as IIngredient[][];

carp.addRecipe(QAC, [
[<ore:plateIron>, <minecraft:comparator>,<ore:plateIron>],
[<ore:plateIron>, <minecraft:redstone>,<ore:plateIron>],
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