import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

print("----------------MM Electric Blast Furnace Start---------------");
/*
var somethingBasic = recBuild.newBuilder("somethingBasic", "basic_machine", int);
.addEnergyPerTickInput();
.addEnergyperTickOutput();
.addFluidInput(ILiquidStack);
.addFluidOutput(ILiquidStack);
.addItemInput(IItemStack/Oredict, Int);
.addFuelItemInput(int);
.addItemOutput(IItemStack/Oredict, int);
.build();
*/

////////////////////////////////
//Basic Electric Blast Furnace//
////////////////////////////////
function makeEBFBasicRecipes(input as IOreDictEntry, output as IItemStack, eRate as int, time as int){
    var ebf_tiers = {
        0 : "basic_ebf",
        1 : "intermediate_ebf",
        2 : "advanced_ebf",
        3 : "elite_ebf",
        4 : "insane_ebf",
        5 : "ultimate_ebf",
        6 : "ludicrous_ebf",
        7 : "divine_ebf"} as string[int];

	for key, value in ebf_tiers {
		var recipeName = output.name ~"-regular-"~value;
		var overclockedTime = max(1, time/(pow(2,key)));
		var overclockedRate = eRate*(pow(4, key));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, value, overclockedTime)
		.addEnergyPerTickInput(overclockedRate)
		.addItemInput(input)
		.addItemOutput(output)
		.build();
	}
}

function makeEBFBasicGasRecipes(input as IOreDictEntry, gas as ILiquidStack, output as IItemStack, eRate as int, time as int){
    var ebf_tiers = {
        0 : "basic_ebf",
        1 : "intermediate_ebf",
        2 : "advanced_ebf",
        3 : "elite_ebf",
        4 : "insane_ebf",
        5 : "ultimate_ebf",
        6 : "ludicrous_ebf",
        7 : "divine_ebf"
        } as string[int];

	for key, value in ebf_tiers {
		var recipeName = output.name ~"-gas-" ~value;
		var overclockedTime = max(1, time/(pow(2,key)));
		var overclockedRate = eRate*(pow(4, key));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, value, overclockedTime)
		.addEnergyPerTickInput(overclockedRate)
		.addItemInput(input)
		.addItemOutput(output)
		.addFluidInput(gas)
		.build();
	}
}

function makeEBFBasicAlloyRecipes(input as IOreDictEntry, input2 as IOreDictEntry, output as IItemStack, eRate as int, time as int){
    var ebf_tiers = {
        0 : "basic_ebf",
        1 : "intermediate_ebf",
        2 : "advanced_ebf",
        3 : "elite_ebf",
        4 : "insane_ebf",
        5 : "ultimate_ebf",
        6 : "ludicrous_ebf",
        7 : "divine_ebf"
        } as string[int];

	for key, value in ebf_tiers {
		var recipeName = output.name ~"-alloy-" ~value;
		var overclockedTime = max(1, time/(pow(2,key)));
		var overclockedRate = eRate*(pow(4, key));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, value, overclockedTime)
		.addEnergyPerTickInput(overclockedRate)
		.addItemInput(input)
		.addItemInput(input2)
		.addItemOutput(output)
		.build();
	}
}

function makeEBFBasicGasAlloyRecipes(input as IOreDictEntry, input2 as IOreDictEntry, 
									gas as ILiquidStack, output as IItemStack, eRate as int, time as int) {
    var ebf_tiers = {
        0 : "basic_ebf",
        1 : "intermediate_ebf",
        2 : "advanced_ebf",
        3 : "elite_ebf",
        4 : "insane_ebf",
        5 : "ultimate_ebf",
        6 : "ludicrous_ebf",
        7 : "divine_ebf"} as string[int];

	for key, value in ebf_tiers {
		var recipeName = output.name ~"-gas&alloy-" ~value;
		var overclockedTime = max(1, time/(pow(2,key)));
		var overclockedRate = eRate*(pow(4, key));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, value, overclockedTime)
		.addEnergyPerTickInput(overclockedRate)
		.addItemInput(input)
		.addItemInput(input2)
		.addItemOutput(output)
		.addFluidInput(gas)
		.build();
	}
}

	#Abyssalnite Ingot
furnace.remove(<ore:ingotAbyssalnite>);
recipes.removeByRegex("thermalfoundation:abyingot");
makeEBFBasicAlloyRecipes(<ore:dustAbyssalnite>, <ore:dustCoal>, <abyssalcraft:abyingot>, 1000, 200);
	#Abyssalnite Ingot - Gas
makeEBFBasicGasAlloyRecipes(<ore:dustAbyssalnite>, <ore:dustCoal>, <liquid:oxygen>*1000, <abyssalcraft:abyingot>, 500, 100);
	
	#Aluminum Ingot
furnace.remove(<ore:ingotAluminum>);
makeEBFBasicRecipes(<ore:dustAluminum>, ingotAluminum, 4000, 1200);
	#Aluminum Ingot - Efficient
makeEBFBasicGasRecipes(<ore:dustAluminum>, <liquid:nitrogen>*1000, ingotAluminum, 2000, 600);
	#Refined Coralium Ingot - Coralium Chunk
makeEBFBasicRecipes(<ore:chunkCoralium>, ingotRefinedCoralium, 1000, 200);
	#Refined Coralium Ingot - Coralium Dust
makeEBFBasicRecipes(<ore:dustLiquifiedCoralium>, ingotRefinedCoralium, 1000, 200);
	#Refined Coralium Ingot - Nitrogen - Coralium Chunk
makeEBFBasicGasRecipes(<ore:chunkCoralium>, <liquid:nitrogen>*1000, ingotRefinedCoralium, 500, 100);
	#Refined Coralium Ingot - Nitrogen - Coralium Dust
makeEBFBasicGasRecipes(<ore:dustLiquifiedCoralium>, <liquid:nitrogen>*1000, ingotRefinedCoralium, 500, 100);
	#Steel Ingot
furnace.remove(<ore:ingotSteel>);
mods.modularmachinery.RecipeBuilder.newBuilder("steelBasic", "basic_ebf", 1200)
	.addEnergyPerTickInput(4000)
	.addItemInput(<ore:ingotIron>, 2)
	.addItemInput(<ore:dustCoal>, 1)
	.addItemOutput(ingotSteel)
	.build();
	#Steel Ingot - Oxygen
mods.modularmachinery.RecipeBuilder.newBuilder("steelBasicEfficient", "basic_ebf", 600)
	.addEnergyPerTickInput(2000)
	.addFluidInput(<liquid:oxygen>*1000)
	.addItemInput(<ore:ingotIron>, 2)
	.addItemInput(<ore:dustCoal>, 1)
	.addItemOutput(ingotSteel)
	.build();

///////////////////////////////////////
//Intermediate Electric Blast Furnace//
///////////////////////////////////////

print("------------------------------------MM Electric Blast Furnace End-----------------------------------");