import mods.immersiveengineering.AlloySmelter as alloy;
import mods.immersiveengineering.MetalPress as metalpress;

print("--------------------------------Immersive Engineering Start-------------------------------------");

var cb = <minecraft:clay_ball>;
var brick = <minecraft:brick>;
	

recipes.remove(<immersiveengineering:toolupgrade:10>);
<immersiveengineering:toolupgrade:10>.displayName = "Diode";
mods.forestry.ThermionicFabricator.addCast(<immersiveengineering:toolupgrade:10>*5,[
	[null,<ore:itemRubber>,null],
	[<ore:itemRubber>,<minecraft:redstone>,<ore:itemRubber>],
	[<ore:itemRubber>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),<ore:itemRubber>]
	],<liquid:glass>*500);

#Metal Press
metalpress.removeRecipeByMold(<immersiveengineering:mold:4>);
metalpress.addRecipe(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})*3, <ore:ingotCopper>, <immersiveengineering:mold:4>, 240);
metalpress.addRecipe(<ic2:cable>.withTag({type: 2 as byte, insulation: 0 as byte})*4, <ore:ingotGold>, <immersiveengineering:mold:4>, 240);
metalpress.addRecipe(<ic2:cable>.withTag({type: 4 as byte, insulation: 0 as byte})*3, <ore:ingotTin>, <immersiveengineering:mold:4>, 240);

#Coke Brick Recipe Change
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>, [
  [cb, brick, cb],
  [brick, <immersiveengineering:stone_decoration:10>, brick],
  [cb, brick, cb]]);
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.remove(<immersiveengineering:stone_decoration:2>);


#Alloy Kiln
	#Bronze
alloy.addRecipe(<thermalfoundation:material:163>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredusttin>, 1200);
	#Brass
alloy.addRecipe(<techreborn:ingot:1>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredustzinc>, 1200);
	#Refined iron
furnace.remove(<techreborn:ingot:19>);
alloy.addRecipe(<techreborn:ingot:19>, <minecraft:iron_ingot>,
	<minecraft:iron_ingot>, 1200);

#Blast Furnace
/*mods.immersiveengineering.BlastFurnace.addRecipe(output, input, time, optionalSlag);
mods.immersiveengineering.BlastFurnace.removeRecipe(output);
mods.immersiveengineering.BlastFurnace.addFuel(input, time);
mods.immersiveengineering.BlastFurnace.removeFuel(output);*/
	#Steel from Iron Ingot
	#Steel from Iron Dust


	#Engineers Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [
	[null,<contenttweaker:material_part:35>,<ore:string>],
	[null,<ore:stickWood>,<contenttweaker:material_part:35>],
	[<ore:stickWood>,null,null]]);

val iePlates = <immersiveengineering:metal>.definition;
for i in 30 to 41{
    recipes.removeShapeless(iePlates.makeStack(i), [<*>, <immersiveengineering:tool>]);}

//recipes.remove(<immersiveengineering:metal_decoration1:1>);
//recipes.addShaped(<immersiveengineering:metal_decoration1:1>*2, [
//	[<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>],
//	[<ore:stickSteel>, null, <ore:stickSteel>],
//	[<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>, [
	[<immersiveengineering:tool>,<immersiveengineering:tool:1>,<forestry:soldering_iron>],
	[<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>,<immersiveengineering:treated_wood>],
	[<ore:workbench>,null,<immersiveengineering:wooden_decoration>]]);

recipes.remove(<immersiveengineering:material:20>);
recipes.addShapeless(<immersiveengineering:material:20>, [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]);
recipes.addShapeless(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), [<immersiveengineering:material:20>]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.addShapeless(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [<minecraft:book>, <ore:wireCopper>]);

print("--------------------------------Immersive Engineering End-------------------------------------");