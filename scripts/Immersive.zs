/////////////////
// Hammer Removal
val iePlates = <immersiveengineering:metal>.definition;
for i in 30 to 41{
    recipes.removeShapeless(iePlates.makeStack(i), [<*>, <immersiveengineering:tool>]);}

<immersiveengineering:stone_decoration:2>.addTooltip("The center of this recipe is hollow!");

recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped(<immersiveengineering:metal_decoration1:1>*2, [
[<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>],
[<ore:stickSteel>, null, <ore:stickSteel>],
[<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>]
]);