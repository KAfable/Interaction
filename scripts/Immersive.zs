/////////////////
// Hammer Removal
val iePlates = <immersiveengineering:metal>.definition;
for i in 30 to 41{
    recipes.removeShapeless(iePlates.makeStack(i), [<*>, <immersiveengineering:tool>]);}
