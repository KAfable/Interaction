val casing = <modularmachinery:blockcasing>;
val rstone = <contenttweaker:material_part:32>;
val p = <skyresources:baseitemcomponent:3>;

recipes.remove(casing);
recipes.addShaped(<modularmachinery:blockcasing>, [[rstone,<ore:dyeOrange>,rstone],[<ore:dyeOrange>,<skyresources:casing:12>,<ore:dyeOrange>],[rstone,<ore:dyeOrange>,rstone]]);

recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [[casing,p,casing],[casing,<ore:glass>,casing],[casing,<skyresources:alchemy:12>,casing]]);