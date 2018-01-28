import mods.modularmachinery.RecipeBuilder as recBuild;
import mods.modularmachinery.RecipePrimer;

//https://github.com/HellFirePvP/ModularMachinery/blob/bb7d092dbb55354ffeafe45942727d6c43e63bbe/src/main/java/hellfirepvp/modularmachinery/common/integration/crafttweaker/RecipePrimer.java

print("-----------------------------------MM Large Chemical Reactor Start----------------------------------");
val basic = "basic_large_chemical_reactor";

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
	#Molten Rubber
var MoltenRubberBasic = recBuild.newBuilder("rubberVulcanizationBasic", basic, 1200);
MoltenRubberBasic.addEnergyPerTickInput(100);
MoltenRubberBasic.addItemInput(<ore:materialResin>, 3);
MoltenRubberBasic.addItemInput(<ore:dustSulfur>, 1);
MoltenRubberBasic.addFluidOutput(<liquid:rubber>*1296);
MoltenRubberBasic.build();

print("------------------------------------MM Large Chemical Reactor End-----------------------------------");