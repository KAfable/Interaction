import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

print("-----------------Petroleum Start-----------------");

//mods.thermalexpansion.Refinery.addRecipe(ILiquidStack output, WeightedItemStack outputItem, ILiquidStack input, int energy);

	#Refinery - Removing old recipes
mods.thermalexpansion.Refinery.removeRecipe(<liquid:crude_oil>);
mods.thermalexpansion.Refinery.removeRecipe(<liquid:coal>);
mods.thermalexpansion.Refinery.removeRecipe(<liquid:oil>);

	#Refinery - New Recipes
mods.pneumaticcraft.refinery.removeRecipes(<liquid:oil>);
mods.pneumaticcraft.refinery.addRecipe(<liquid:oil>*100, [
	<liquid:sulfuric_naphtha>*20, 
	<liquid:sulfuric_gasoline>*30, 
	<liquid:sulfuric_kerosene>*30, 
	<liquid:sulfuric_diesel>*20]);
mods.pneumaticcraft.refinery.removeRecipes(<liquid:crude_oil>);
mods.pneumaticcraft.refinery.addRecipe(<liquid:oil>*100, [
	<liquid:sulfuric_naphtha>*20, 
	<liquid:sulfuric_gasoline>*30, 
	<liquid:sulfuric_kerosene>*30, 
	<liquid:sulfuric_diesel>*20]);

	#Desulfurization
var sulfuricFluids = {
	<liquid:sulfuric_naphtha> :		<liquid:refined_oil>,
	<liquid:sulfuric_gasoline>:		<liquid:fuel>,
	<liquid:sulfuric_kerosene>:		<liquid:kerosene>,
	<liquid:sulfuric_diesel>  :		<liquid:diesel>
	} as IIngredient[IIngredient];

	#Desulfurization - NC has important byproduct, Forestry does not
for input, output in sulfuricFluids {
	mods.nuclearcraft.chemical_reactor.addRecipe(input*100, <liquid:hydrogen>*100, <liquid:hydrogen_sulfide>*100, output*100, 80);
	var stillInput as ILiquidStack= input;
	var stillOutput as ILiquidStack = output;
	mods.forestry.Still.addRecipe(stillOutput, stillInput, 80);
}




print("------------------Petroleum End------------------");




