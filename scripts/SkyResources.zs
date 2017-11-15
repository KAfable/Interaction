import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val skyRemoved = [
	<skyresources:dirtfurnace>,
	<skyresources:combustionheater:2>,
	<skyresources:combustionheater:4>,
	<skyresources:combustionheater:5>,
	<skyresources:combustionheater:7>,
	<skyresources:combustionheater:8>,
	<skyresources:combustionheater:9>,
	<skyresources:combustionheater:11>,
	<skyresources:heatprovider:2>,
	<skyresources:heatprovider:4>,
	<skyresources:heatprovider:5>,
	<skyresources:heatprovider:7>,
	<skyresources:heatprovider:8>,
	<skyresources:heatprovider:9>,
	<skyresources:heatprovider:11>,
	<skyresources:casing:2>,
	<skyresources:casing:4>,
	<skyresources:casing:5>,
	<skyresources:casing:7>,
	<skyresources:casing:8>,
	<skyresources:casing:9>,
	<skyresources:casing:11>,
	<skyresources:heat:2>,
	<skyresources:heat:4>,
	<skyresources:heat:5>,
	<skyresources:heat:7>,
	<skyresources:heat:8>,
	<skyresources:heat:9>,
	<skyresources:heat:11>,
	<skyresources:alchemy:1>,
	<skyresources:alchemy:2>,
	<skyresources:alchemy:4>,
	<skyresources:alchemy:5>,
	<skyresources:alchemy:7>,
	<skyresources:alchemy:8>,
	<skyresources:alchemy:9>,
	<skyresources:alchemy:10>,
	<skyresources:alchemy:11>,
	<skyresources:alchemy>
	] as IItemStack[];

for item in skyRemoved {
	mods.jei.JEI.removeAndHide(item);
}

<skyresources:combustionheater:3>.displayName = "Reinforced Stone Combustion Heater";
<skyresources:combustionheater:12>.displayName = "Reinforced Putty Combusttion Heater";

<skyresources:heatprovider:3>.displayName = "Reinforced Stone Heat Provider";
<skyresources:heatprovider:12>.displayName = "Reinforced Putty Heat Provider";

<skyresources:casing:3>.displayName = "Reinforced Stone Casing";
<skyresources:casing:12>.displayName = "Reinforced Putty Casing";

mods.jei.JEI.removeAndHide(<skyresources:condenser:*>);

<skyresources:heat:3>.displayName = "Reinforced Stone Heat Component";
<skyresources:heat:12>.displayName = "Reinforced Putty Heat Component";

<skyresources:alchemy:3>.displayName = "Reinforced Stone Alchemy Component";
<skyresources:alchemy:12>.displayName = "Reinforced Putty Alchemy Component";

<skyresources:darkmatterblock>.displayName = "Block of Putty";
<skyresources:baseitemcomponent:3>.displayName = "Reinforced Putty";

var gems = <skyresources:dirtygem>.definition;
for i in 0 to 43 {
  mods.skyresources.rockgrinder.removeRecipe(gems.makeStack(i));
}

mods.skyresources.rockgrinder.addRecipe(<minecraft:quartz>, <minecraft:netherrack>, 0.25);

val cauldronRemoved = [
	<immersiveengineering:metal:9>,
	<immersiveengineering:metal:10>,
	<immersiveengineering:metal:11>,
	<immersiveengineering:metal:12>,
	<immersiveengineering:metal:13>,
	<immersiveengineering:metal:14>,
	<immersiveengineering:metal:18>,
	<immersiveengineering:metal:19>,
	<ic2:dust:4>,
	<ic2:dust:7>,
	<ic2:dust:8>,
	<ic2:dust:10>,
	<ic2:dust:11>,	// Lithium
	<ic2:dust:14>,
	<ic2:dust:17>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:69>,
	<thermalfoundation:material:70>,
	<techreborn:dust:59>,
	<fp:dust:12044>,
	<fp:dust:14186>,
	<mekanism:dust:2>,
	<techreborn:dust:54>,
	<techreborn:dust:55>,
	<techreborn:dust:10>,
	<techreborn:dust:30>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:72>,
	<minecraft:emerald>,
	<minecraft:diamond>,
	<techreborn:gem>,
	<techreborn:gem:1>,
	<techreborn:gem:2>,
	<techreborn:gem:3>,
	<techreborn:gem:4>,
	<silentgems:craftingmaterial>,
	<silentgems:craftingmaterial:4>,
	<skyresources:dirtygem:39>,
	<evilcraft:dark_gem>,
	<minecraft:quartz>,
	<minecraft:dye:4>,
	<actuallyadditions:item_misc:5>,
	<bigreactors:dustmetals>,
	<draconicevolution:draconium_dust>
	] as IItemStack[];

for i in cauldronRemoved {
	mods.skyresources.cauldronclean.removeRecipe(i);}

val cauldronGemRemoved = <silentgems:gem>.definition;
for item in 0 to 32 {
	mods.skyresources.cauldronclean.removeRecipe(cauldronGemRemoved.makeStack(item));}

mods.skyresources.combustion.removeRecipe(<minecraft:blaze_powder>);
mods.skyresources.combustion.removeRecipe(<minecraft:gunpowder>);
mods.skyresources.combustion.removeRecipe(<minecraft:diamond>);
mods.skyresources.combustion.removeRecipe(<minecraft:redstone>);
mods.skyresources.combustion.removeRecipe(<minecraft:netherrack>);
mods.skyresources.combustion.removeRecipe(<skyresources:baseitemcomponent:3>);
mods.skyresources.combustion.removeRecipe(<minecraft:glowstone_dust>);

mods.jei.JEI.removeAndHide(<skyresources:orealchdust:*>);
val oreAlcDust = <skyresources:orealchdust>.definition;
for item in 0 to 22 {
	mods.skyresources.fusion.removeRecipe(oreAlcDust.makeStack(item));
}
