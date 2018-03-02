
print("-------------- YABBA Start --------------");
  #Blank Barrel Upgrade
 recipes.remove(<yabba:upgrade_blank>);
 recipes.addShaped(<yabba:upgrade_blank>, [
 	[<ore:slabWood>, <ore:slimeball>, <ore:slabWood>],
 	[<ore:slabWood>, processorBasic, <ore:slabWood>],
 	[<ore:slabWood>, <ore:slimeball>, <ore:slabWood>]]);

#Capacity Upgrades
	#Stone
recipes.remove(<yabba:upgrade_stone_tier>);
	#iron
recipes.remove(<yabba:upgrade_iron_tier>);
	#Gold
recipes.remove(<yabba:upgrade_gold_tier>);
	#Diamond
recipes.remove(<yabba:upgrade_diamond_tier>);
	#Nether Star
recipes.remove(<yabba:upgrade_star_tier>);


#Functional Upgrades
	#Redstone
recipes.remove(<yabba:upgrade_redstone_out>);
recipes.addShapeless(<yabba:upgrade_redstone_out>, [<yabba:upgrade_blank>, gearRedstone]);

recipes.remove(<yabba:upgrade_void>);

recipes.remove(<yabba:upgrade_pickup>);

recipes.remove(<yabba:upgrade_obsidian_shell>);

  #Item Barrel
recipes.remove(<yabba:item_barrel>);
recipes.addShaped(<yabba:item_barrel>, [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:logWood>, null, <ore:logWood>],
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

print("--------------- YABBA End ---------------");