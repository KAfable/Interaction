import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("--------------Artisan's Worktables Start--------------------");
	
	#Basic Workbench
recipes.addShaped(<artisanworktables:worktable:5>, [
	[<ore:workbench>, <ore:workbench>, <ore:workbench>],
	[null, <ore:plankWood>, null],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
	#blacksmiths_cutters
	#blacksmiths_hammer
function makeBlacksmithHammerCraftRecipe(output as IItemStack, handle as IIngredient, head as IIngredient){
	recipes.addShaped(output, [
		[head, <minecraft:string>, head],
		[head, handle, head],
		[null, handle, null]]);
}
var hammerIngredients = [
	[<artisanworktables:artisans_hammer_wood>, <ore:stickWood>, <ore:logWood>],
	[<artisanworktables:artisans_hammer_flint>, <ore:stickWood>, <ore:flint>],
	[<artisanworktables:artisans_hammer_bone>, <ore:stickWood>, <ore:bone>],
	[<artisanworktables:artisans_hammer_diamond>, <ore:stickWood>, <ore:gemDiamond>],
	[<artisanworktables:artisans_hammer_bronze>, <ore:stickRubber>, <ore:ingotBronze>],
	[<artisanworktables:artisans_hammer_copper>, <ore:stickRubber>, <ore:ingotCopper>],
	[<artisanworktables:artisans_hammer_constantan>, <ore:stickRubber>, <ore:ingotConstantan>],
	[<artisanworktables:artisans_hammer_electrum>, <ore:stickRubber>, <ore:ingotElectrum>],
	[<artisanworktables:artisans_hammer_invar>, <ore:stickRubber>, <ore:ingotInvar>],
	[<artisanworktables:artisans_hammer_lead>, <ore:stickRubber>, <ore:ingotLead>],
	[<artisanworktables:artisans_hammer_nickel>, <ore:stickRubber>, <ore:ingotNickel>],
	[<artisanworktables:artisans_hammer_platinum>, <ore:stickRubber>, <ore:ingotPlatinum>],
	[<artisanworktables:artisans_hammer_aluminum>, <ore:stickRubber>, <ore:ingotAluminum>],
	[<artisanworktables:artisans_hammer_tin>, <ore:stickRubber>, <ore:ingotTin>],
	[<artisanworktables:artisans_hammer_silver>, <ore:stickRubber>, <ore:ingotSilver>],
	[<artisanworktables:artisans_hammer_steel>, <ore:stickRubber>, <ore:ingotStee;>],
	[<artisanworktables:artisans_hammer_gold>, <ore:stickRubber>, <ore:ingotGold>],
	[<artisanworktables:artisans_hammer_iron>, <ore:stickRubber>, <ore:ingotIron>],
	[<artisanworktables:artisans_hammer_terrasteel>, <ore:livingwoodTwig>, <ore:ingotTerrasteel>],
	[<artisanworktables:artisans_hammer_manasteel>, <ore:livingwoodTwig>, <ore:ingotManasteel>],
	[<artisanworktables:artisans_hammer_elementium>, <ore:livingwoodTwig>, <ore:ingotElementium>]
	] as IIngredient[][];

for i in hammerIngredients {
	recipes.remove(i[0].items[0]);
	makeBlacksmithHammerCraftRecipe(i[0].items[0], i[1], i[2]);
}	
    #engineers_driver
    #engineers_spanner

print("--------------Artisan's Worktables End--------------------");