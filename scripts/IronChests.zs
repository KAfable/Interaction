import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------------------------Iron Chests Start------------------------------------");
	#Copper Chest
recipes.removeShaped(<ironchest:iron_chest:3>);
<ironchest:iron_chest:3>.addTooltip("Needs to be upgraded in world.");
	#Iron Chest
recipes.remove(<ironchest:iron_chest>);
<ironchest:iron_chest>.addTooltip("Needs to be upgraded in world.");
	#Silver Chest
recipes.remove(<ironchest:iron_chest:4>);
<ironchest:iron_chest:4>.addTooltip("Needs to be upgraded in world.");
	#Gold Chest
recipes.remove(<ironchest:iron_chest:1>);
<ironchest:iron_chest:1>.addTooltip("Needs to be upgraded in world.");
	#Diamond Chest
recipes.remove(<ironchest:iron_chest:2>);
<ironchest:iron_chest:2>.addTooltip("Needs to be upgraded in world.");
	#Crystal Chest
recipes.remove(<ironchest:iron_chest:5>);
<ironchest:iron_chest:5>.addTooltip("Needs to be upgraded in world.");
	#Obsidian Chest
recipes.remove(<ironchest:iron_chest:6>);
<ironchest:iron_chest:6>.addTooltip("Needs to be upgraded in world.");
	
function makeUpgradeRecipe(output as IItemStack, primary as IIngredient, core as IIngredient) {
	recipes.addShaped(output, [
		[primary, primary, primary],
		[primary, core, primary],
		[primary, primary, primary]]);
}
	#Iron to Gold
recipes.remove(<ironchest:iron_gold_chest_upgrade>);
makeUpgradeRecipe(<ironchest:iron_gold_chest_upgrade>, <ore:plateGold>, <ore:plateIron>);
	#Wood to Iron
recipes.remove(<ironchest:wood_iron_chest_upgrade>);
makeUpgradeRecipe(<ironchest:wood_iron_chest_upgrade>, <ore:plateIron>, <ore:plankWood>);
	#Wood to Copper
recipes.remove(<ironchest:wood_copper_chest_upgrade>);
makeUpgradeRecipe(<ironchest:wood_copper_chest_upgrade>, <ore:plateCopper>, <ore:plankWood>);
	#Copper to Iron
recipes.remove(<ironchest:copper_iron_chest_upgrade>);
makeUpgradeRecipe(<ironchest:copper_iron_chest_upgrade>, <ore:plateIron>, <ore:plateCopper>);
	#Copper to Silver
recipes.remove(<ironchest:copper_silver_chest_upgrade>);
makeUpgradeRecipe(<ironchest:copper_silver_chest_upgrade>, <ore:plateSilver>, <ore:plateCopper>);
	#Silver to Gold
recipes.remove(<ironchest:silver_gold_chest_upgrade>);
makeUpgradeRecipe(<ironchest:silver_gold_chest_upgrade>, <ore:plateGold>, <ore:plateSilver>);
	#Gold to Diamond
recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
makeUpgradeRecipe(<ironchest:gold_diamond_chest_upgrade>, <ore:plateDiamond>, <ore:plateGold>);
	#Diamond to Obsidian
recipes.remove(<ironchest:diamond_obsidian_chest_upgrade>);
makeUpgradeRecipe(<ironchest:diamond_obsidian_chest_upgrade>, <ore:plateObsidian>, <ore:plateDiamond>);
	#Diamond to Crystal
recipes.remove(<ironchest:diamond_crystal_chest_upgrade>);
makeUpgradeRecipe(<ironchest:diamond_crystal_chest_upgrade>, <ore:blockGlass>, <ore:plateDiamond>);


print("--------------------------------Iron Chests End-------------------------------------");