import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

recipes.remove(<tp:obsidian_helmet>);
recipes.remove(<tp:obsidian_chestplate>);
recipes.remove(<tp:obsidian_boots>);
recipes.remove(<tp:obsidian_leggings>);

//Battleaxes recipes removed, only used for Armoreable Mobs
var baxeRemoved = [
	<tp:stone_battle>,
	<tp:iron_battle>,
	<tp:diamond_battle>,
	<tp:emerald_battle>,
	<tp:obsidian_battle>,
	<tp:wooden_battle>
	] as IItemStack[];

for i in baxeRemoved {
	recipes.remove(i);}

recipes.remove(<tp:med_kit>);
recipes.addShapeless(<tp:med_kit>, [<minecraft:potion>.withTag({Potion: "minecraft:regeneration"})]);

