

print("---------------------------------Embers/Soot Start-----------------------------------");
	#Ender Steel
recipes.remove(<enderutilities:enderpart>);
#Check MicorCrafting for the recipes

	#Nullfier
recipes.remove(<enderutilities:nullifier>);
recipes.addShaped(<enderutilities:nullifier>, [
	[null, null, null],
	[<enderutilities:enderpart>, <thermalexpansion:satchel:100>, <enderutilities:enderpart>],
	[null, null, null]]);
print("---------------------------------Embers/Soot End-----------------------------------");
