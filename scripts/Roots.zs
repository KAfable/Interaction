
// Roots 2 Knife conflicts with SR Grinders
recipes.remove(<roots:wood_knife>);
recipes.addShaped(<roots:wood_knife>, [
  [null, null, <ore:plankWood>],
  [null, <ore:plankWood>, null],
  [<ore:stick>, null, null]]);

recipes.remove(<roots:stone_knife>);
recipes.addShaped(<roots:stone_knife>, [
  [null, null, <ore:cobblestone>],
  [null, <ore:cobblestone>, null],
  [<ore:cobblestone>, null, null]]);

recipes.remove(<roots:iron_knife>);
recipes.addShaped(<roots:iron_knife>, [
  [null, null, <ore:ingotIron>],
  [null, <ore:ingotIron>, null],
  [<ore:stick>, null, null]]);

recipes.remove(<roots:diamond_knife>);
recipes.addShaped(<roots:diamond_knife>, [
  [null, null, <ore:gemDiamond>],
  [null, <ore:gemDiamond>, null],
  [<ore:stick>, null, null]]);

recipes.remove(<roots:gold_knife>);
recipes.addShaped(<roots:gold_knife>, [
  [null, null, <ore:ingotGold>],
  [null, <ore:ingotGold>, null],
  [<ore:stick>, null, null]]);

<roots:wood_hammer>.maxDamage = 15;
<roots:stone_hammer>.maxDamage = 31;
<roots:iron_hammer>.maxDamage = 47;
  
  #Runestone (made by )
//<roots:runestone>