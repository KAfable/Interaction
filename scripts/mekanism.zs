import mods.mekanism.infuser as inf;

//inf.removeRecipe(<mekanism:controlcircuit>);

print("-----------------------------------Mekanism Start----------------------------------");

	#Dynamic Tanks
recipes.remove(<mekanism:basicblock:9>);
recipes.addShaped(<mekanism:basicblock:9>*4, [
	[null, plateRefinedIron, null],
	[plateRefinedIron, <charset:fluidtank>, plateRefinedIron],
	[null, plateRefinedIron, null]]);

	#Portable Tank - Basic 
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 0, mekData: {}}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier: 0, mekData: {}}), [	
	[plateRefinedIron, plateRedstone, plateRefinedIron],
	[plateRedstone,<charset:fluidtank>, plateRedstone],
	[plateRefinedIron, plateRedstone, plateRefinedIron]]);
	#Portable Tank - Advanced
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 1, mekData: {}}));
	#Portable Tank - Elite
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 2, mekData: {}}));
	#Portable Tank -Ultimate
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 3, mekData: {}}));

	

	#Digital Miner
recipes.remove(<mekanism:machineblock:4>);

	#Structural Glass
recipes.remove(<mekanism:basicblock:10>);
recipes.addShaped(<mekanism:basicblock:10>*4, [
	[plateCopper, plateTin, plateCopper],
	[plateTin, <sonarcore:stableglass>, plateTin],
	[plateCopper, plateTin, plateCopper]]);

print("------------------------------------Mekanism End-----------------------------------");