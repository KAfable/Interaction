
var chips = <ore:foodChips>;
chips.add(<harvestcraft:potatochipsitem>);
chips.add(<harvestcraft:cheddarandsourcreampotatochipsitem>);
chips.add(<harvestcraft:bbqpotatochipsitem>);
chips.add(<harvestcraft:sourcreamandonionpotatochipsitem>);

recipes.remove(<harvestcraft:weekendpicnicitem>);
recipes.addShapeless(<harvestcraft:weekendpicnicitem>, [
	<harvestcraft:cuttingboarditem>, <harvestcraft:friedchickenitem>,
	<harvestcraft:potatosaladitem>, <harvestcraft:springsaladitem>,
	<harvestcraft:grilledcheeseitem>, <harvestcraft:cheddarandsourcreampotatochipsitem>,
	<ore:listAllsoda>]);
