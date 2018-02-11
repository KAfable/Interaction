
print("-------------- Wooden Shears Start --------------");
  
recipes.remove(<woodenshears:wshears>);
recipes.addShaped(<woodenshears:wshears>.withTag({mType: 0 as byte}), [
	[<ore:plankWood>, null, <ore:plankWood>],
	[null, <ore:stickWood>, null],
	[<ore:stickWood>, null, <ore:stickWood>]]);

print("--------------- Wooden Shears End ---------------");