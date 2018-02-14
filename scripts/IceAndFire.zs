import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-------------------------------Ice and Fire Start------------------------------------");
function makeChestplateRecipe(scale as IItemStack, output as IItemStack) {
	recipes.addShaped(output, [
		[scale, scale, scale],
		[scale, <silentgems:armorframe:5>, scale],
		[scale, scale, scale]]);
}

function makeHelmetRecipe(scale as IItemStack, output as IItemStack) {
	recipes.addShaped(output, [
		[scale, scale, scale],
		[scale, <silentgems:armorframe:4>, scale],
		[null, null, null]]);
}

function makeLeggingsRecipe(scale as IItemStack, output as IItemStack) {
	recipes.addShaped(output, [
		[scale, scale, scale],
		[scale, <silentgems:armorframe:6>, scale],
		[scale, null, scale]]);
}

function makeBootsRecipe(scale as IItemStack, output as IItemStack) {
	recipes.addShaped(output, [
		[null, null, null],
		[scale, <silentgems:armorframe:7>, scale],
		[scale, null, scale]]);
}


	#Dragon Scale - Bronze

recipes.remove(<iceandfire:armor_bronze_helmet>);
recipes.remove(<iceandfire:armor_bronze_chestplate>);
recipes.remove(<iceandfire:armor_bronze_leggings>);
recipes.remove(<iceandfire:armor_bronze_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_bronze>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_bronze>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_bronze>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_bronze>, <iceandfire:armor_bronze_boots>);

	#Dragon Scale - Red
recipes.remove(<iceandfire:armor_red_helmet>);
recipes.remove(<iceandfire:armor_red_leggings>);
recipes.remove(<iceandfire:armor_red_chestplate>);
recipes.remove(<iceandfire:armor_red_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_red>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_red>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_red>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_red>, <iceandfire:armor_bronze_boots>);

	#Dragon Scale - Emerald
recipes.remove(<iceandfire:armor_green_helmet>);
recipes.remove(<iceandfire:armor_green_chestplate>);
recipes.remove(<iceandfire:armor_green_leggings>);
recipes.remove(<iceandfire:armor_green_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_green>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_green>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_green>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_green>, <iceandfire:armor_bronze_boots>);

	#Dragon Scale - Gray
recipes.remove(<iceandfire:armor_gray_helmet>);
recipes.remove(<iceandfire:armor_gray_chestplate>);
recipes.remove(<iceandfire:armor_gray_leggings>);
recipes.remove(<iceandfire:armor_gray_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_gray>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_gray>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_gray>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_gray>, <iceandfire:armor_bronze_boots>);

	#Dragon Scale - Blue
recipes.remove(<iceandfire:armor_blue_helmet>);
recipes.remove(<iceandfire:armor_blue_chestplate>);
recipes.remove(<iceandfire:armor_blue_leggings>);
recipes.remove(<iceandfire:armor_blue_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_blue>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_blue>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_blue>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_blue>, <iceandfire:armor_bronze_boots>);

	#Dragon Scale - dragonWhite
recipes.remove(<iceandfire:armor_white_helmet>);
recipes.remove(<iceandfire:armor_white_chestplate>);
recipes.remove(<iceandfire:armor_white_leggings>);
recipes.remove(<iceandfire:armor_white_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_white>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_white>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_white>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_white>, <iceandfire:armor_bronze_boots>);

	#Dragon Scale - Sapphire
recipes.remove(<iceandfire:armor_sapphire_helmet>);
recipes.remove(<iceandfire:armor_sapphire_chestplate>);
recipes.remove(<iceandfire:armor_sapphire_leggings>);
recipes.remove(<iceandfire:armor_sapphire_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_sapphire>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_sapphire>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_sapphire>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_sapphire>, <iceandfire:armor_bronze_boots>);

	#Dragon Scale - Silver
recipes.remove(<iceandfire:armor_silver_helmet>);
recipes.remove(<iceandfire:armor_silver_chestplate>);
recipes.remove(<iceandfire:armor_silver_leggings>);
recipes.remove(<iceandfire:armor_silver_boots>);
makeChestplateRecipe(<iceandfire:dragonscales_silver>, <iceandfire:armor_bronze_chestplate>);
makeHelmetRecipe(<iceandfire:dragonscales_silver>, <iceandfire:armor_bronze_helmet>);
makeLeggingsRecipe(<iceandfire:dragonscales_silver>, <iceandfire:armor_bronze_leggings>);
makeBootsRecipe(<iceandfire:dragonscales_silver>, <iceandfire:armor_bronze_boots>);



	

	










print("--------------------------------Ice and Fire End-------------------------------------");