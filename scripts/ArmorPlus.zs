import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("------------------ArmorPlus Start------------------");
	#Chicken Armor
mods.armorplus.Workbench.remove(<armorplus:chicken_helmet>);
recipes.addShaped(<armorplus:chicken_helmet>, [
	[null, <minecraft:egg>, null],
	[<ore:feather>, <silentgems:armorframe>, <ore:feather>],
	[null, <minecraft:egg>, null]]);
mods.armorplus.Workbench.remove(<armorplus:chicken_chestplate>);
recipes.addShaped(<armorplus:chicken_helmet>, [
	[null, <minecraft:egg>, null],
	[<ore:feather>, <silentgems:armorframe:1>, <ore:feather>],
	[null, <minecraft:egg>, null]]);
mods.armorplus.Workbench.remove(<armorplus:chicken_leggings>);
recipes.addShaped(<armorplus:chicken_helmet>, [
	[null, <minecraft:egg>, null],
	[<ore:feather>, <silentgems:armorframe:2>, <ore:feather>],
	[null, <minecraft:egg>, null]]);
mods.armorplus.Workbench.remove(<armorplus:chicken_boots>);
recipes.addShaped(<armorplus:chicken_helmet>, [
	[null, <minecraft:egg>, null],
	[<ore:feather>, <silentgems:armorframe:3>, <ore:feather>],
	[null, <minecraft:egg>, null]]);

	#Coal Armor
mods.armorplus.Workbench.remove(<armorplus:coal_helmet>);
recipes.addShaped(<armorplus:coal_helmet>, [
	[null, <ore:blockCoal>, null],
	[<ore:blockCoal>, <silentgems:armorframe>, <ore:blockCoal>],
	[null, <ore:blockCoal>, null]]);
mods.armorplus.Workbench.remove(<armorplus:coal_chestplate>);
recipes.addShaped(<armorplus:coal_chestplate>, [
	[null, <ore:blockCoal>, null],
	[<ore:blockCoal>, <silentgems:armorframe:1>, <ore:blockCoal>],
	[null, <ore:blockCoal>, null]]);
mods.armorplus.Workbench.remove(<armorplus:coal_leggings>);
recipes.addShaped(<armorplus:coal_leggings>, [
	[null, <ore:blockCoal>, null],
	[<ore:blockCoal>, <silentgems:armorframe:2>, <ore:blockCoal>],
	[null, <ore:blockCoal>, null]]);
mods.armorplus.Workbench.remove(<armorplus:coal_boots>);
recipes.addShaped(<armorplus:coal_boots>, [
	[null, <ore:blockCoal>, null],
	[<ore:blockCoal>, <silentgems:armorframe:3>, <ore:blockCoal>],
	[null, <ore:blockCoal>, null]]);

	#Lapis Armor
mods.armorplus.Workbench.remove(<armorplus:lapis_helmet>);
recipes.addShaped(<armorplus:lapis_helmet>, [
	[null, <ore:blockLapis>, null],
	[<ore:blockLapis>, <silentgems:armorframe>, <ore:blockLapis>],
	[null, <ore:blockLapis>, null]]);
mods.armorplus.Workbench.remove(<armorplus:lapis_chestplate>);
recipes.addShaped(<armorplus:lapis_chestplate>, [
	[null, <ore:blockLapis>, null],
	[<ore:blockLapis>, <silentgems:armorframe:1>, <ore:blockLapis>],
	[null, <ore:blockLapis>, null]]);
mods.armorplus.Workbench.remove(<armorplus:lapis_leggings>);
recipes.addShaped(<armorplus:lapis_leggings>, [
	[null, <ore:blockLapis>, null],
	[<ore:blockLapis>, <silentgems:armorframe:2>, <ore:blockLapis>],
	[null, <ore:blockLapis>, null]]);
mods.armorplus.Workbench.remove(<armorplus:lapis_boots>);
recipes.addShaped(<armorplus:lapis_boots>, [
	[null, <ore:blockLapis>, null],
	[<ore:blockLapis>, <silentgems:armorframe:3>, <ore:blockLapis>],
	[null, <ore:blockLapis>, null]]);

	#Slime Armor
mods.armorplus.Workbench.remove(<armorplus:slime_helmet>);
recipes.addShaped(<armorplus:slime_helmet>, [
	[null, <ore:blockSlime>, null],
	[<ore:blockSlime>, <silentgems:armorframe>, <ore:blockSlime>],
	[null, <ore:blockSlime>, null]]);
mods.armorplus.Workbench.remove(<armorplus:slime_chestplate>);
recipes.addShaped(<armorplus:slime_chestplate>, [
	[null, <ore:blockSlime>, null],
	[<ore:blockSlime>, <silentgems:armorframe:1>, <ore:blockSlime>],
	[null, <ore:blockSlime>, null]]);
mods.armorplus.Workbench.remove(<armorplus:slime_leggings>);
recipes.addShaped(<armorplus:slime_leggings>, [
	[null, <ore:blockSlime>, null],
	[<ore:blockSlime>, <silentgems:armorframe:2>, <ore:blockSlime>],
	[null, <ore:blockSlime>, null]]);
mods.armorplus.Workbench.remove(<armorplus:slime_boots>);
recipes.addShaped(<armorplus:slime_boots>, [
	[null, <ore:blockSlime>, null],
	[<ore:blockSlime>, <silentgems:armorframe:3>, <ore:blockSlime>],
	[null, <ore:blockSlime>, null]]);

	#Redstone Armor
mods.armorplus.Workbench.remove(<armorplus:redstone_helmet>);
recipes.addShaped(<armorplus:redstone_helmet>, [
	[null, plateRedstone, null],
	[plateRedstone, <silentgems:armorframe>, plateRedstone],
	[null, plateRedstone, null]]);
mods.armorplus.Workbench.remove(<armorplus:redstone_chestplate>);
recipes.addShaped(<armorplus:redstone_chestplate>, [
	[null, plateRedstone, null],
	[plateRedstone, <silentgems:armorframe:1>, plateRedstone],
	[null, plateRedstone, null]]);
mods.armorplus.Workbench.remove(<armorplus:redstone_leggings>);
recipes.addShaped(<armorplus:redstone_leggings>, [
	[null, plateRedstone, null],
	[plateRedstone, <silentgems:armorframe:2>, plateRedstone],
	[null, plateRedstone, null]]);
mods.armorplus.Workbench.remove(<armorplus:redstone_boots>);
recipes.addShaped(<armorplus:redstone_boots>, [
	[null, plateRedstone, null],
	[plateRedstone, <silentgems:armorframe:3>, plateRedstone],
	[null, plateRedstone, null]]);

	#Obsidian Armor
mods.armorplus.Workbench.remove(<armorplus:obsidian_helmet>);
mods.armorplus.Workbench.remove(<armorplus:obsidian_chestplate>);
mods.armorplus.Workbench.remove(<armorplus:obsidian_leggings>);
mods.armorplus.Workbench.remove(<armorplus:obsidian_boots>);
#Check Unniveral utility machine recipes

	

print("-------------------ArmorPlus End-------------------");