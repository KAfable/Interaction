import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------------Mob Grinding Utils Start-----------------");

	#Absorption Hopper
recipes.remove(<mob_grinding_utils:absorption_hopper>);

	#Singularity Tank
recipes.remove(<mob_grinding_utils:tank>);
recipes.addShaped(<mob_grinding_utils:tank>, [
	[<ore:plateRefinedIron>, null, <ore:plateRefinedIron>],
	[null, <charset:fluidtank>, null],
	[<ore:plateRefinedIron>, null, <ore:plateRefinedIron>]]);

	#Spike
recipes.remove(<mob_grinding_utils:spikes>);
recipes.addShaped(<mob_grinding_utils:spikes>, [
	[null, <calculator:endforgedsword>, null],
	[<calculator:endforgedsword>, <thermalexpansion:capacitor:4>, <calculator:endforgedsword>],
	[<ore:blocKPlastic>, <ore:blocKPlastic>, <ore:blocKPlastic>]]);

	#XP Singularity Tank
recipes.remove(<mob_grinding_utils:tank_sink>);
recipes.addShaped(<mob_grinding_utils:tank_sink>*4, [
	[<ore:plateLiquifiedCoralium>, <ore:plateLiquifiedCoralium>, <ore:plateLiquifiedCoralium>],
	[null, <mob_grinding_utils:tank>, null],
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

print("-------------------Mob Grinding Utils End-----------------");

