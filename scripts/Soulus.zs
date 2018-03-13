
print("-------------- Soulus Start --------------");

	#Books via Bark Recipe
recipes.removeByRegex("soulus:misc/bark_book");

	#Unloader
recipes.remove(<soulus:unloader>);
recipes.addShaped(<soulus:unloader>, [	
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
	[<ore:cobblestone>, null, <ore:cobblestone>],
	[null, null, null]]);

print("--------------- Soulus End ---------------");