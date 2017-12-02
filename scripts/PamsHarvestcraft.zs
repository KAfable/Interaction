import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.skyresources.infusion as inf;

print("Pam's Harvestcraft Start");

var chips = <ore:foodChips>;
chips.add(<harvestcraft:potatochipsitem>);
chips.add(<harvestcraft:cheddarandsourcreampotatochipsitem>);
chips.add(<harvestcraft:bbqpotatochipsitem>);
chips.add(<harvestcraft:sourcreamandonionpotatochipsitem>);

recipes.remove(<harvestcraft:weekendpicnicitem>);
recipes.addShapeless(<harvestcraft:weekendpicnicitem>, [
	<harvestcraft:cuttingboarditem>, <harvestcraft:friedchickenitem>,
	<harvestcraft:potatosaladitem>, <harvestcraft:springsaladitem>,
	<harvestcraft:grilledcheeseitem>, <harvestcraft:cheddarandsourcreampotatochipsitem>,
	<ore:listAllsoda>]);

	# Gardens
mods.skyresources.infusion.addRecipe(<harvestcraft:tropicalgarden>, <plants2:plantball>*10, <minecraft:tallgrass:1>, 19);
mods.skyresources.combustion.addRecipe(<harvestcraft:shadedgarden>, [<minecraft:coal:1>*4,<harvestcraft:frostgarden>], 400);
mods.skyresources.freezer.addRecipe(<harvestcraft:frostgarden>, <minecraft:tallgrass:1>*10, 800);
mods.skyresources.waterextractor.extract.addRecipe(20, <harvestcraft:aridgarden>, <harvestcraft:soggygarden>);
mods.skyresources.waterextractor.insert.addRecipe(<harvestcraft:soggygarden>, <minecraft:tallgrass:1>, 1000);
mods.skyresources.fusion.addRecipe(<harvestcraft:windygarden>, [<minecraft:tallgrass:1>*10, <minecraft:feather>], 0.75);

//mods.skyresources.infusion.addRecipe(ItemStack output, ItemStack inputStack, ItemStack inputBlock, int health);
//mods.skyresources.infusion.removeRecipe(ItemStack output);
/*
var counter = 0;
for i in vanillaSaplings {
	for z in pamGardens {
		mods.skyresources.infusion.addRecipe(pamSaplings[counter], pamGardens[z], vanillaSaplings[i], 10);
		counter = counter + 1;
	}
}*/	

	# Saplings
inf.addRecipe(<harvestcraft:date_sapling>, 			<harvestcraft:aridgarden>, <minecraft:sapling>, 10);
inf.addRecipe(<harvestcraft:vanillabean_sapling>, 	<harvestcraft:aridgarden>, <minecraft:sapling:2>, 10);
inf.addRecipe(<harvestcraft:chestnut_sapling>, 		<harvestcraft:aridgarden>, <minecraft:sapling:3>, 10);
inf.addRecipe(<harvestcraft:coconut_sapling>, 		<harvestcraft:aridgarden>, <minecraft:sapling:1>, 10);
inf.addRecipe(<harvestcraft:starfruit_sapling>, 	<harvestcraft:aridgarden>, <minecraft:sapling:4>, 10);
inf.addRecipe(<harvestcraft:papaya_sapling>, 		<harvestcraft:aridgarden>, <minecraft:sapling:5>, 10);

inf.addRecipe(<harvestcraft:date_sapling>, 			<harvestcraft:frostgarden>, <minecraft:sapling>, 10);
inf.addRecipe(<harvestcraft:vanillabean_sapling>, 	<harvestcraft:frostgarden>, <minecraft:sapling:2>, 10);
inf.addRecipe(<harvestcraft:chestnut_sapling>, 		<harvestcraft:frostgarden>, <minecraft:sapling:3>, 10);
inf.addRecipe(<harvestcraft:coconut_sapling>, 		<harvestcraft:frostgarden>, <minecraft:sapling:1>, 10);
inf.addRecipe(<harvestcraft:starfruit_sapling>, 	<harvestcraft:frostgarden>, <minecraft:sapling:4>, 10);
inf.addRecipe(<harvestcraft:papaya_sapling>, 		<harvestcraft:frostgarden>, <minecraft:sapling:5>, 10);

inf.addRecipe(<harvestcraft:dragonfruit_sapling>,	<harvestcraft:soggygarden>, <minecraft:sapling>, 10);
inf.addRecipe(<harvestcraft:avocado_sapling>,		<harvestcraft:soggygarden>, <minecraft:sapling:2>, 10);
inf.addRecipe(<harvestcraft:orange_sapling>,		<harvestcraft:soggygarden>, <minecraft:sapling:3>, 10);
inf.addRecipe(<harvestcraft:walnut_sapling>,		<harvestcraft:soggygarden>, <minecraft:sapling:1>, 10);
inf.addRecipe(<harvestcraft:pecan_sapling>,			<harvestcraft:soggygarden>, <minecraft:sapling:4>, 10);
inf.addRecipe(<harvestcraft:apple_sapling>,			<harvestcraft:soggygarden>, <minecraft:sapling:5>, 10);

inf.addRecipe(<harvestcraft:lemon_sapling>,			<harvestcraft:shadedgarden>, <minecraft:sapling>, 10);
inf.addRecipe(<harvestcraft:pistachio_sapling>, 	<harvestcraft:shadedgarden>, <minecraft:sapling:2>, 10);
inf.addRecipe(<harvestcraft:persimmon_sapling>,		<harvestcraft:shadedgarden>, <minecraft:sapling:3>, 10);
inf.addRecipe(<harvestcraft:nutmeg_sapling>,		<harvestcraft:shadedgarden>, <minecraft:sapling:1>, 10);
inf.addRecipe(<harvestcraft:lime_sapling>,			<harvestcraft:shadedgarden>, <minecraft:sapling:4>, 10);
inf.addRecipe(<harvestcraft:pear_sapling>,			<harvestcraft:shadedgarden>, <minecraft:sapling:5>, 10);

inf.addRecipe(<harvestcraft:olive_sapling>,			<harvestcraft:tropicalgarden>, <minecraft:sapling>, 10);
inf.addRecipe(<harvestcraft:peppercorn_sapling>, 	<harvestcraft:tropicalgarden>, <minecraft:sapling:2>, 10);
inf.addRecipe(<harvestcraft:durian_sapling>,		<harvestcraft:tropicalgarden>, <minecraft:sapling:3>, 10);
inf.addRecipe(<harvestcraft:cinnamon_sapling>,		<harvestcraft:tropicalgarden>, <minecraft:sapling:1>, 10);
inf.addRecipe(<harvestcraft:almond_sapling>,		<harvestcraft:tropicalgarden>, <minecraft:sapling:4>, 10);
inf.addRecipe(<harvestcraft:grapefruit_sapling>,	<harvestcraft:tropicalgarden>, <minecraft:sapling:5>, 10);

inf.addRecipe(<harvestcraft:pomegranate_sapling>,	<harvestcraft:windygarden>, <minecraft:sapling>, 10);
inf.addRecipe(<harvestcraft:gooseberry_sapling>, 	<harvestcraft:windygarden>, <minecraft:sapling:2>, 10);
inf.addRecipe(<harvestcraft:maple_sapling>,			<harvestcraft:windygarden>, <minecraft:sapling:3>, 10);
inf.addRecipe(<harvestcraft:paperbark_sapling>,		<harvestcraft:windygarden>, <minecraft:sapling:1>, 10);
inf.addRecipe(<harvestcraft:peach_sapling>,			<harvestcraft:windygarden>, <minecraft:sapling:4>, 10);
inf.addRecipe(<harvestcraft:cashew_sapling>,		<harvestcraft:windygarden>, <minecraft:sapling:5>, 10);

furnace.remove(<minecraft:bread>);
recipes.removeByRecipeName("natura:common/bread");
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>);

print("Pam's Harvestcraft End");