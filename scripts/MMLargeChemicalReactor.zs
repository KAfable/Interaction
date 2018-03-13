import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

//https://github.com/HellFirePvP/ModularMachinery/blob/bb7d092dbb55354ffeafe45942727d6c43e63bbe/src/main/java/hellfirepvp/modularmachinery/common/integration/crafttweaker/RecipePrimer.java

print("-----------------------------------MM Large Chemical Reactor Start----------------------------------");
/////////////
//Basic LCR//
/////////////
var lcr_tiers = [
    "basic_lcr", "intermediate_lcr", "advanced_lcr", "elite_lcr",
    "insane_lcr", "ultimate_lcr", "ludicrous_lcr", "divine_lcr"] as string[];
	
	#HDPE from Sulfuric Acid and Polyethylene
for i, tier in lcr_tiers {
		var recipeName = "-plastic from Sulfuric Acid and Polyethylene-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 400*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:sulfuric_acid>*1000)
			.addFluidInput(<liquid:polyethylene>*1000)
			.addItemOutput(<mekanism:polyethene>*4)
			.addFluidOutput(<liquid:diluted_sulfuric_acid>*1000)
			.build();
}
	#Hydrogen Sulfide from Sulfur and Hydrogen
for i, tier in lcr_tiers {
		var recipeName = "-Hydrogen Sulfide from Sulfur and Hydrogen-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 400*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:hydrogen>*2000)
			.addItemInput(dustSulfur*2)
			.addFluidOutput(<liquid:hydrogen_sulfide>*1000)
			.build();
}
	#Molten Rubber
for i, tier in lcr_tiers {
		var recipeName = "-Molten Rubber-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 100*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addItemInput(<ore:dustRubber>, 3)
			.addItemInput(<ore:dustSulfur>, 1)
			.addFluidOutput(<liquid:rubber>*1296)
			.build();
}
	#Polyethylene - from Ethylene
for i, tier in lcr_tiers {
		var recipeName = "-Polyethylene from Ethylene-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 400*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:liquidethene>*1000)
			.addFluidInput(<liquid:oxygen>*1000)
			.addFluidOutput(<liquid:polyethylene>*2000)
			.build();
}
	#Polyethylene - from Ethanol
for i, tier in lcr_tiers {
		var recipeName = "-Polyethylene from Ethanol-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 400*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:ethanol>*1000)
			.addFluidInput(<liquid:sulfuric_acid>*1000)
			.addFluidOutput(<liquid:polyethylene>*1500)
			.addFluidOutput(<liquid:diluted_sulfuric_acid>*500)
			.build();
}
	#Sulfur from Hydrogen Sulfide
for i, tier in lcr_tiers {
		var recipeName = "-Sulfur from Hydrogen Sulfide-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 800*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:hydrogen_sulfide>*2000)
			.addFluidInput(<liquid:sulfur_dioxide>*1000)
			.addFluidOutput(<liquid:water>*1000)
			.addItemOutput(dustSulfur*3)
			.build();
}
	#Sulfuric Acid from Diluted
for i, tier in lcr_tiers {
		var recipeName = "-Sulfuric Acid from Diluted-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 800*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:diluted_sulfuric_acid>*3000)
			.addFluidOutput(<liquid:sulfuric_acid>*1000)
			.build();
}
	#Sulfuric Acid from Water, Sulfur Dioxide, Oxygen
for i, tier in lcr_tiers {
		var recipeName = "-Sulfuric Acid from Water, Sulfur Dioxide, Oxygen-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 800*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:water>*1000)
			.addFluidInput(<liquid:hydrogen_sulfide>*1000)
			.addFluidOutput(<liquid:sulfuric_acid>*1000)
			.build();
}
	#Sulfuric Acid from Water, Hydrogen Sulfide
for i, tier in lcr_tiers {
		var recipeName = "-Sulfuric Acid from Water, Hydrogen Sulfide-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 800*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:water>*1000)
			.addFluidInput(<liquid:hydrogen_sulfide>*1000)
			.addFluidOutput(<liquid:sulfuric_acid>*1000)
			.build();
}
	#Sulfur Dioxide from Hydrogen Sulfide, Oxygen
for i, tier in lcr_tiers {
		var recipeName = "-Sulfur Dioxide from Hydrogen Sulfide, Oxygen-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 800*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:hydrogen_sulfide>*1000)
			.addFluidInput(<liquid:oxygen>*2000)
			.addFluidOutput(<liquid:water>*1000)
			.addFluidOutput(<liquid:sulfur_dioxide>*1000)
			.build();
}	
	#TNT / Precursor to several explosives
for i, tier in lcr_tiers {
		var recipeName = "-TNT-"~tier;
		var overclockedTime = max(1, 1000/(pow(2,i)));
		var overclockedRate = 500*(pow(4, i));
		mods.modularmachinery.RecipeBuilder.newBuilder(recipeName, tier, overclockedTime)
			.addEnergyPerTickInput(overclockedRate)
			.addFluidInput(<liquid:tolulene>*1000)
			.addFluidInput(<liquid:sulfuric_acid>*500)
			.addItemInput(<minecraft:paper>*4)
			.addItemOutput(<minecraft:tnt>*2)
			.build();
}




print("------------------------------------MM Large Chemical Reactor End-----------------------------------");