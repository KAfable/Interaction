

print("---------------------------------Embers/Soot Start-----------------------------------");
	#Ender Alloy
recipes.remove(<enderutilities:enderpart>);
#Check MicorCrafting for the recipes

	#Ebder Ally (Enchanced)
recipes.remove(<enderutilities:enderpart:1>);


	#Ender Sword
recipes.remove(<enderutilities:endersword>);

	#Nullfier
recipes.remove(<enderutilities:nullifier>);
recipes.addShaped(<enderutilities:nullifier>, [
	[null, null, null],
	[<enderutilities:enderpart>, <thermalexpansion:satchel:100>, <enderutilities:enderpart>],
	[null, null, null]]);
print("---------------------------------Embers/Soot End-----------------------------------");
