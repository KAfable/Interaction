mods.jei.JEI.removeAndHide(<skyresources:dirtfurnace>);

mods.jei.JEI.removeAndHide(<skyresources:combustionheater:2>);
mods.jei.JEI.removeAndHide(<skyresources:combustionheater:4>);
mods.jei.JEI.removeAndHide(<skyresources:combustionheater:5>);
mods.jei.JEI.removeAndHide(<skyresources:combustionheater:7>);
mods.jei.JEI.removeAndHide(<skyresources:combustionheater:8>);
mods.jei.JEI.removeAndHide(<skyresources:combustionheater:9>);
mods.jei.JEI.removeAndHide(<skyresources:combustionheater:11>);
<skyresources:combustionheater:3>.displayName = "Reinforced Stone Combustion Heater";
<skyresources:combustionheater:12>.displayName = "Reinforced Putty Combusttion Heater";

mods.jei.JEI.removeAndHide(<skyresources:heatprovider:2>);
mods.jei.JEI.removeAndHide(<skyresources:heatprovider:4>);
mods.jei.JEI.removeAndHide(<skyresources:heatprovider:5>);
mods.jei.JEI.removeAndHide(<skyresources:heatprovider:7>);
mods.jei.JEI.removeAndHide(<skyresources:heatprovider:8>);
mods.jei.JEI.removeAndHide(<skyresources:heatprovider:9>);
mods.jei.JEI.removeAndHide(<skyresources:heatprovider:11>);
<skyresources:heatprovider:3>.displayName = "Reinforced Stone Heat Provider";
<skyresources:heatprovider:12>.displayName = "Reinforced Putty Heat Provider";

mods.jei.JEI.removeAndHide(<skyresources:casing:2>);
mods.jei.JEI.removeAndHide(<skyresources:casing:4>);
mods.jei.JEI.removeAndHide(<skyresources:casing:5>);
mods.jei.JEI.removeAndHide(<skyresources:casing:7>);
mods.jei.JEI.removeAndHide(<skyresources:casing:8>);
mods.jei.JEI.removeAndHide(<skyresources:casing:9>);
mods.jei.JEI.removeAndHide(<skyresources:casing:11>);
<skyresources:casing:3>.displayName = "Reinforced Stone Casing";
<skyresources:casing:12>.displayName = "Reinforced Putty Casing";

mods.jei.JEI.removeAndHide(<skyresources:condenser:*>);

mods.jei.JEI.removeAndHide(<skyresources:heat:2>);
mods.jei.JEI.removeAndHide(<skyresources:heat:4>);
mods.jei.JEI.removeAndHide(<skyresources:heat:5>);
mods.jei.JEI.removeAndHide(<skyresources:heat:7>);
mods.jei.JEI.removeAndHide(<skyresources:heat:8>);
mods.jei.JEI.removeAndHide(<skyresources:heat:9>);
mods.jei.JEI.removeAndHide(<skyresources:heat:11>);
<skyresources:heat:3>.displayName = "Reinforced Stone Heat Component";
<skyresources:heat:12>.displayName = "Reinforced Putty Heat Component";

mods.jei.JEI.removeAndHide(<skyresources:alchemy>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:1>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:2>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:4>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:5>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:7>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:8>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:9>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:10>);
mods.jei.JEI.removeAndHide(<skyresources:alchemy:11>);
<skyresources:alchemy:3>.displayName = "Reinforced Stone Alchemy Component";
<skyresources:alchemy:12>.displayName = "Reinforced Putty Alchemy Component";

<skyresources:darkmatterblock>.displayName = "Block of Putty";
<skyresources:baseitemcomponent:3>.displayName = "Reinforced Putty";

mods.jei.JEI.removeAndHide(<skyresources:dirtygem:*>);
val dirtyGems = <skyresources:dirtygem>.definition;
for meta in 0 to 43 {
    mods.skyresources.rockgrinder.removeRecipe(dirtyGems.makeStack(meta));
}

mods.skyresources.cauldronclean.removeRecipe(<immersiveengineering:metal:9>);
mods.skyresources.cauldronclean.removeRecipe(<immersiveengineering:metal:10>);
mods.skyresources.cauldronclean.removeRecipe(<immersiveengineering:metal:11>);
mods.skyresources.cauldronclean.removeRecipe(<immersiveengineering:metal:12>);
mods.skyresources.cauldronclean.removeRecipe(<immersiveengineering:metal:13>);
mods.skyresources.cauldronclean.removeRecipe(<immersiveengineering:metal:18>);
mods.skyresources.cauldronclean.removeRecipe(<immersiveengineering:metal:19>);

mods.skyresources.combustion.removeRecipe(<minecraft:blaze_powder>);
mods.skyresources.combustion.removeRecipe(<minecraft:gunpowder>);
mods.skyresources.combustion.removeRecipe(<minecraft:diamond>);
mods.skyresources.combustion.removeRecipe(<minecraft:redstone>);
mods.skyresources.combustion.removeRecipe(<minecraft:netherrack>);
mods.skyresources.combustion.removeRecipe(<skyresources:baseitemcomponent:3>);
mods.skyresources.combustion.removeRecipe(<minecraft:glowstone_dust>);

mods.jei.JEI.removeAndHide(<skyresources:orealchdust:*>);
val oreAlcDust = <skyresources:orealchdust>.definition;
for meta in 0 to 21 {
    mods.skyresources.fusion.removeRecipe(oreAlcDust.makeStack(meta));
}
