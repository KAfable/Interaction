import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.Worktable;
import mods.artisanworktables.builder.RecipeBuilder;

print("--------------------------Applied Energistics2+AddOns Start --------------------------");

var coreFormation = <appliedenergistics2:material:43>;
var coreAnnihilation = <appliedenergistics2:material:44>;
var MECraftingTerminal = <appliedenergistics2:part:360>;
var METerminal = <appliedenergistics2:part:380>;
var cableMECovered = <appliedenergistics2:part:36>;
var cableFluix = <appliedenergistics2:part:16>;
var busOP = <appliedenergistics2:part:220>; //ME Storage Bus
var busFluid = <extracells:part.base:2>;
var busGas = <extracells:part.base:16>;

	#Vibration Chambers due to redundancy
mods.jei.JEI.removeAndHide(<appliedenergistics2:vibration_chamber>);
mods.jei.JEI.removeAndHide(<extracells:vibrantchamberfluid>);

#Tier 2 (Lootable)
	#Controller
recipes.remove(<appliedenergistics2:controller>);
recipes.addShaped(<appliedenergistics2:controller>, [
	[<ore:plateTungstensteel>, circuitElite, <ore:plateTungstensteel>],
	[<appliedenergistics2:energy_acceptor>, processorElite, <appliedenergistics2:energy_acceptor>],
	[<ore:plateTungstensteel>, circuitElite, <ore:plateTungstensteel>]]);
<appliedenergistics2:controller>.addTooltip(format.red("Lootable in Tier 2, craftable in Tier 4"));
mods.jei.JEI.addDescription(<appliedenergistics2:controller>, 
  "One of the few remnants of an advanced civlization that used to live underground. You've been told that you can retrieve pieces of their technology from dungeons deep underground or underwater. Entrances to these dungeons are still visible from the surface. However be careful as whatever destroyed the previous occupants still lurks in the dark.");

	#Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
	[plateIridium, fluxductElite, plateIridium],
	[fluxductElite, <ore:crystalPureFluix>, fluxductElite],
	[plateIridium, fluxductElite, plateIridium]]);

	#ME Chest(Craftable in Tier 4)
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
	[<ore:plateTungstensteel>, processorElite, <ore:plateTungstensteel>],
	[<ore:plateTungstensteel>, <ore:chest>, <ore:plateTungstensteel>],
	[<ore:plateTungstensteel>, circuitElite, <ore:plateTungstensteel>]]);

 	#ME Covered Cable
recipes.removeByRegex("appliedenergistics2:network/cables/covered_fluix");
recipes.addShaped(cableMECovered, [	
 	[null, plateRubber, null],
 	[null, cableFluix, null],
 	[null, plateRubber, null]]);
Worktable.createRecipeBuilder("basic")
	.setShapeless([cableFluix])
	.setFluid(<liquid:rubber> * 288)
	.setTool(<ore:blacksmiths_cutters>, 4)
	.addOutput(cableMECovered * 2)
    .create();
//Later add an MM Universal utility Machine using Rubber (144mb for one cable)

    #ME Fluix Cables
 //Recipes still WIP. Thinking about molten flux.

 	#ME Crafting Terminal (lootable in Tier 2, craftable in Tier 3)
recipes.remove(MECraftingTerminal);
recipes.addShaped(MECraftingTerminal, [
	[null, METerminal, null],
	[null, <extendedcrafting:table_advanced>, null],
	[null, processorAdvanced, null]]);

	#ME Interface (Craftable in Tier 3)
recipes.remove(<appliedenergistics2:interface>);
recipes.addShaped(<appliedenergistics2:interface>, [
	[electricPistonElite, <ore:plateTungsten>, electricPistonElite],
	[coreAnnihilation, null, coreFormation],
	[electricPistonElite, <ore:plateTungsten>, electricPistonElite]]);

	#ME Terminal (Craftable in Tier 3)
recipes.remove(METerminal);
recipes.addShaped(METerminal, [
	[coreFormation, <ore:itemIlluminatedPanel>, null],
	[processorIntermediate, coreAnnihilation, null]]);

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
recipes.addShaped(<appliedenergistics2:drive>, [
	[<appliedenergistics2:chest>, <appliedenergistics2:chest>, <appliedenergistics2:chest>],
	[<appliedenergistics2:chest>, null, <appliedenergistics2:chest>],
	[<appliedenergistics2:chest>, <appliedenergistics2:chest>, <appliedenergistics2:chest>]]);
//Recipe should be an advanced computer with high end input/output options
	#Charger (Tier 2)

	#Advanced Inscriber
mods.jei.JEI.removeAndHide(<ae2stuff:inscriber>);

	#Tier 5
recipes.remove(busOP);
busOP.addTooltip(format.red("Disabled due to OP'ness. Recipes are WIP, most likely Tier 5"));

  	#Inscribers
mods.jei.JEI.removeAndHide(<appliedenergistics2:inscriber>);
var inscriberRemoved = [
	<appliedenergistics2:material:23>,
	<appliedenergistics2:material:24>,
	<appliedenergistics2:material:22>,
	<appliedenergistics2:material:16>,
	<appliedenergistics2:material:17>,
	<appliedenergistics2:material:18>,
	<appliedenergistics2:material:20>] as IItemStack[];

for i in inscriberRemoved {
	mods.appliedenergistics2.Inscriber.removeRecipe(i);
}


print("---------------------------Applied Energistics 2 + Addons End ---------------------------");