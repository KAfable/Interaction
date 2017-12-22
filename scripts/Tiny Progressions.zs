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
	#Obsidian Sword
recipes.remove(<tp:obsidian_sword>);
	#Medkit
recipes.remove(<tp:med_kit>);
recipes.addShapeless(<tp:med_kit>, [<minecraft:potion>.withTag({Potion: "minecraft:regeneration"})]);
<tp:med_kit>.maxStackSize = 64;

	#Flint Armor
recipes.remove(<tp:flint_helmet>);
recipes.addShaped(<tp:flint_helmet>, [
	[null, <minecraft:flint>, null],
	[<minecraft:flint>, <silentgems:armorframe>, <minecraft:flint>],
	[null, <minecraft:flint>, null]]);

recipes.remove(<tp:flint_chestplate>);
recipes.addShaped(<tp:flint_chestplate>, [
	[null, <minecraft:flint>, null],
	[<minecraft:flint>, <silentgems:armorframe:1>, <minecraft:flint>],
	[null, <minecraft:flint>, null]]);

recipes.remove(<tp:flint_leggings>);
recipes.addShaped(<tp:flint_leggings>, [
	[null, <minecraft:flint>, null],
	[<minecraft:flint>, <silentgems:armorframe:2>, <minecraft:flint>],
	[null, <minecraft:flint>, null]]);

recipes.remove(<tp:flint_boots>);
recipes.addShaped(<tp:flint_boots>, [
	[null, <minecraft:flint>, null],
	[<minecraft:flint>, <silentgems:armorframe:3>, <minecraft:flint>],
	[null, <minecraft:flint>, null]]);
