import mods.immersiveengineering.AlloySmelter as alloy;
import mods.immersiveengineering.MetalPress as metalpress;

print("--------------------------------Immersive Engineering Start-------------------------------------");

var cb = <minecraft:clay_ball>;
var brick = <minecraft:brick>;

	#Coke Brick
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>, [
  [cb, brick, cb],
  [brick, <immersiveengineering:stone_decoration:10>, brick],
  [cb, brick, cb]]);

  	#Disabling normal Blast brick
mods.jei.JEI.removeAndHide(<immersiveengineering:stone_decoration:1>);

	#Engineer's Workbench
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>, [
	[<immersiveengineering:tool>,<immersiveengineering:tool:1>,<forestry:soldering_iron>],
	[<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>],
	[<ore:workbench>,null,<immersiveengineering:wooden_decoration>]]);

	#Hemp
vanilla.seeds.removeSeed(<immersiveengineering:seed>);

	#Metal Press
metalpress.removeRecipeByMold(<immersiveengineering:mold:4>);
metalpress.addRecipe(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})*3, <ore:ingotCopper>, <immersiveengineering:mold:4>, 240);
metalpress.addRecipe(<ic2:cable>.withTag({type: 2 as byte, insulation: 0 as byte})*4, <ore:ingotGold>, <immersiveengineering:mold:4>, 240);
metalpress.addRecipe(<ic2:cable>.withTag({type: 4 as byte, insulation: 0 as byte})*3, <ore:ingotTin>, <immersiveengineering:mold:4>, 240);

	#Reinforced Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:2>);

#Alloy Kiln
	#Bronze
alloy.addRecipe(<thermalfoundation:material:163>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredusttin>, 1200);
	#Brass
alloy.addRecipe(<techreborn:ingot:1>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredustzinc>, 1200);
	#Refined iron
furnace.remove(ingotRefinedIron);
alloy.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>,
	<minecraft:iron_ingot>, 1200);

	#Engineers Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [
	[null, ingotReinforcedStone,<ore:string>],
	[null,<ore:stickWood>, ingotReinforcedStone],
	[<ore:stickWood>,null,null]]);

val iePlates = <immersiveengineering:metal>.definition;
for i in 30 to 41{
    recipes.removeShapeless(iePlates.makeStack(i), [<*>, <immersiveengineering:tool>]);}

recipes.remove(<immersiveengineering:material:20>);
recipes.addShapeless(<immersiveengineering:material:20>, [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]);
recipes.addShapeless(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), [<immersiveengineering:material:20>]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.addShapeless(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [<minecraft:book>, <ore:wireCopper>]);

print("--------------------------------Immersive Engineering End-------------------------------------");