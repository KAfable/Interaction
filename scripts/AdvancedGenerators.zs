import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("--------------Advanced Generators Start--------------------");

	#Intermediate Processor / Controller
recipes.remove(processorIntermediate);
recipes.addShaped(processorIntermediate, [
	[<ore:plateRefinedIron>, <ore:plateRefinedIron>, <ore:plateRefinedIron>],
	[<minecraft:redstone>, circuitIntermediate, <minecraft:redstone>],
	[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

recipes.remove(<advgenerators:iron_frame>);
recipes.remove(<advgenerators:power_io>);
recipes.remove(<advgenerators:iron_tubing>);
recipes.remove(<advgenerators:iron_wiring>);
recipes.remove(<advgenerators:pressure_valve>);
recipes.remove(<advgenerators:advanced_pressure_valve>);
recipes.remove(<advgenerators:upgrade_kit>);
recipes.remove(<advgenerators:turbine_controller>);
recipes.remove(<advgenerators:exchanger_controller>);
recipes.remove(<advgenerators:steam_turbine_controller>);
recipes.remove(<advgenerators:syngas_controller>);
recipes.remove(<advgenerators:rf_output>);
recipes.remove(<advgenerators:forge_output>);
recipes.remove(<advgenerators:gas_input>);
recipes.remove(<advgenerators:fluid_input>);
recipes.remove(<advgenerators:fluid_output_select>);
recipes.remove(<advgenerators:item_input>);
recipes.remove(<advgenerators:item_output>);
recipes.remove(<advgenerators:fuel_tank>);
recipes.remove(<advgenerators:heating_chamber>);
recipes.remove(<advgenerators:mixing_chamber>);
recipes.remove(<advgenerators:heat_exchanger>);
recipes.remove(<advgenerators:sensor>);
recipes.remove(<advgenerators:control>);
recipes.remove(<advgenerators:efficiency_upgrade_tier1>);
recipes.remove(<advgenerators:efficiency_upgrade_tier2>);
recipes.remove(<advgenerators:pressure_input>);
recipes.remove(<advgenerators:pressure_output_select>);

var agDisabled = [
	<advgenerators:tesla_output>] as IItemStack[];

for i in agDisabled {mods.jei.JEI.removeAndHide(i);}

print("--------------Advanced Generators End--------------------");