import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

	#Auto Workbench
recipes.remove(<buildcraftfactory:autoworkbench_item>);
recipes.addShaped(<buildcraftfactory:autoworkbench_item>, [
	[null, <minecraft:crafting_table>, null],
	[<ore:gearStone>, <actuallyadditions:item_worm>, <ore:gearStone>],
	[null, <minecraft:crafting_table>, null]]);

	#Gears
var gears = [
	<buildcraftcore:gear_wood>,
	<buildcraftcore:gear_stone>,
	<buildcraftcore:gear_gold>,
	<buildcraftcore:gear_diamond>,
	<buildcraftcore:gear_iron>] as IItemStack[];
for i in gears {
	mods.jei.JEI.removeAndHide(i);
}