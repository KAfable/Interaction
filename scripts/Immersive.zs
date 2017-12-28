import mods.immersiveengineering.AlloySmelter as alloy;
import mods.immersiveengineering.MetalPress as metalpress;

#Metal Press
metalpress.removeRecipeByMold(<immersiveengineering:mold:4>);
metalpress.addRecipe(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})*3, <ore:ingotCopper>, <immersiveengineering:mold:4>, 240);
metalpress.addRecipe(<ic2:cable>.withTag({type: 2 as byte, insulation: 0 as byte})*4, <ore:ingotGold>, <immersiveengineering:mold:4>, 240);
metalpress.addRecipe(<ic2:cable>.withTag({type: 4 as byte, insulation: 0 as byte})*3, <ore:ingotTin>, <immersiveengineering:mold:4>, 240);


#Alloy Kiln
alloy.addRecipe(<thermalfoundation:material:163>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredusttin>, 1200);
alloy.addRecipe(<techreborn:ingot:1>, <contenttweaker:impuredustcopper>,
	<contenttweaker:impuredustzinc>, 1200);




// Hammer Removal
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [
[null,<contenttweaker:material_part:35>,<ore:string>],
[null,<ore:stickWood>,<contenttweaker:material_part:35>],
[<ore:stickWood>,null,null]
]);

val iePlates = <immersiveengineering:metal>.definition;
for i in 30 to 41{
    recipes.removeShapeless(iePlates.makeStack(i), [<*>, <immersiveengineering:tool>]);}

//Renaming & Tooltips
<immersiveengineering:stone_decoration:2>.addTooltip("The center of this recipe is hollow!");
<immersiveengineering:material:27>.displayName = "Empty Circuit Board";
<immersiveengineering:blueprint>.withTag({blueprint: "components"}).displayName = "Master in Electrical Engineering";

//Crafting
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

