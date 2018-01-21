import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("--------------------------Applied Energistics2+AddOns Start --------------------------");
mods.jei.JEI.removeAndHide(<appliedenergistics2:sky_compass>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:vibration_chamber>);
mods.jei.JEI.removeAndHide(<extracells:vibrantchamberfluid>);

#Tier 2 (Lootable)
	#ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
	[<ore:plateTungstensteel>, processorElite, <ore:plateTungstensteel>],
	[<ore:plateTungstensteel>, <ore:chest>, <ore:plateTungstensteel>],
	[<ore:plateTungstensteel>, circuitElite, <ore:plateTungstensteel>]]);
	#Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
	[plateIridium, fluxductElite, plateIridium],
	[fluxductElite, <ore:crystalPureFluix>, fluxductElite],
	[plateIridium, fluxductElite, plateIridium]]);

#Tier 2 (Craftable)
	#1k/4k/16k/64k Storage Cell
recipes.remove(<appliedenergistics2:material:35>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:38>);
	//Check Compact Machine Recipes
	#1k/4k/16k/64k Fluid Storage Cell
recipes.remove(<extracells:storage.component:4>);
recipes.remove(<extracells:storage.component:5>);
recipes.remove(<extracells:storage.component:6>);
recipes.remove(<extracells:storage.component:7>);
	//Check Compact Machine Recipes

#Tier 3 (Craftable)
recipes.remove(<appliedenergistics2:quartz_glass>);

#Tier 4 (Craftable)



	#ME Drive
recipes.remove(<appliedenergistics2:drive>);
// There will be a 
	#ME Interface
recipes.remove(<appliedenergistics2:interface>);
//Recipe should be an advanced computer with high end input/output options
	#Charger (Tier 2)
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>, [
	[],
	[],
	[]]);
	#Inscribers
recipes.remove(<appliedenergistics2:inscriber>);
	#Advanced Inscriber
recipes.remove(<ae2stuff:inscriber>);
	#Controller
recipes.remove(<appliedenergistics2:controller>);
<appliedenergistics2:controller>.addTooltip(format.red("Lootable in Tier 2, craftable in Tier 4, recipes WIP"));
mods.jei.JEI.addDescription(<appliedenergistics2:controller>, 
  "One of the few remnants of an advanced civlization that used to live underground. You've been told that you can retrieve pieces of their technology from dungeons deep underground or underwater. Entrances to these dungeons are still visible from the surface. However be careful as whatever destroyed the previous occupants still lurks in the dark.");



print("---------------------------Applied Energistics 2 + Addons End ---------------------------");