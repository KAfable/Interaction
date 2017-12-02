import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


recipes.remove(<silentgems:leggings>);
recipes.remove(<silentgems:boots>);
recipes.remove(<silentgems:helmet>);
recipes.remove(<silentgems:chestplate>);


recipes.addShaped(<silentgems:enchantmenttoken>.withTag({TokenEnchantments: [{lvl: 1 as short, name: "cofhcore:holding"}]}), [
	[<actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest>],
	[<actuallyadditions:block_giant_chest>, <minecraft:glowstone>, <actuallyadditions:block_giant_chest>],
	[<actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest>, <actuallyadditions:block_giant_chest> ]]);