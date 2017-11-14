val casing = <modularmachinery:blockcasing>;
val rstone = <contenttweaker:material_part:32>;
val p = <skyresources:baseitemcomponent:3>;

var chest = <minecraft:chest>;
var hopper = <minecraft:hopper>;
var bucket = <minecraft:bucket>;
var pcase = <skyresources:casing:12>;

recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockinputbus>, [
	[hopper],
	[pcase],
	[chest]
	]);
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShaped(<modularmachinery:blockoutputbus>, [
	[chest],
	[pcase],
	[hopper]
	]);
recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>, [
	[hopper],
	[pcase],
	[bucket]
	]);
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [
	[bucket],
	[pcase],
	[hopper]
	]);
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [
	[casing,p,casing],
	[casing,<ore:glass>,casing],
	[casing,<skyresources:alchemy:12>,casing]]);

recipes.remove(casing);
recipes.remove(<modularmachinery:blockcontroller>);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"}), [
		[<ore:dyeBlack>, <ore:dyeOrange>, <ore:dyeBlack>],
		[<ore:dyeOrange>, <minecraft:paper>, <ore:dyeOrange>],
		[<ore:dyeBlack>, <ore:dyeOrange>, <ore:dyeBlack>]];