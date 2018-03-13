import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------------XTones Start-----------------");

	#Dimensional Wrinkler
recipes.addShapeless(<xtones:zion:6>, [<contenttweaker:portalblockt>]);
<xtones:bitt:5>.displayName = "Dimensional Wrinkler";

	#Universal Utility Frame (Bitt)
	#Basic Universal Utility Frame
recipes.addShaped(<xtones:bitt:6>, [
	[plateTin, plateLapis, plateTin],
	[plateLapis, casingBasic, plateLapis],
	[plateTin, plateLapis, plateTin]]);
<xtones:bitt:5>.displayName = "Universal Utility Frame";
mods.jei.JEI.addDescription(<xtones:bitt:5>, "Basic Universal Utility Frame used in multiblock structures such as the Electric Blast Furnace, Universal Utility Machine, [WIP]Industrial Electrolyzer, and [WIP]Distillation Tower.");

mods.jei.JEI.addDescription(<xtones:bitt:15>, "Intermediate Universal Utility Frame used in multiblock structures such as the Electric Blast Furnace, Universal Utility Machine, [WIP]Industrial Electrolyzer, and [WIP]Distillation Tower.");

print("-------------------XTones End-----------------");
