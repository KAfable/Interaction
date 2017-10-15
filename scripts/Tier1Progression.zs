val stick = <ore:stickWood>;
val pwood = <sgextraparts:genericitem:2>;
val log = <ore:logWood>;
val blaze = <minecraft:blaze_powder>;
val cob = <minecraft:cobblestone>;
val sslab = <minecraft:stone_slab>;
val pstone = <sgextraparts:genericitem:8>;
val stone = <ore:stone>;
val rstone = <contenttweaker:material_part:32>;
val nb = <minecraft:netherbrick>;
val SOC = <skyresources:baseitemcomponent:1>;
val p = <skyresources:baseitemcomponent:3>;
val QAC = <skyresources:baseitemcomponent:6>;

// Polisher - microcrafting tool for polished wood
recipes.remove(<sgextraparts:polisher>);
recipes.addShaped(<sgextraparts:polisher>, [
  [null, <ore:logWood>, null],
  [null, <ore:logWood>, null],
  [null, <ore:stickWood>, null]]);

recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[rstone,<immersiveengineering:tool>,rstone],[pstone,rstone,pstone]]);

<minecraft:flint_and_steel>.displayName = "Flint and Stone";
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [rstone, <minecraft:flint>]);

recipes.removeShaped(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [
  [<minecraft:stone_slab>,<minecraft:stone_slab>,<minecraft:stone_slab>],
  [null, <ore:gearWood>, null],
  [null, pwood, null]]);

recipes.removeShaped(<ore:gearWood>);
recipes.addShaped(<contenttweaker:material_part:13>, [
  [null, pwood, null],
  [pwood, <sgextraparts:polisher>, pwood],
  [null, pwood, null]]);

mods.skyresources.combustion.addRecipe(<minecraft:coal:1>*4, [<minecraft:log>*32], 100);

mods.skyresources.combustion.removeRecipe(<minecraft:coal>);
mods.skyresources.combustion.addRecipe(<minecraft:coal>*4, [<minecraft:coal:1>*16], 600);
mods.skyresources.combustion.addRecipe(sslab*3, [<minecraft:dirt>*6, <minecraft:clay>*12], 100);
mods.skyresources.combustion.addRecipe(blaze*4, [<minecraft:coal>*4], 600);

mods.skyresources.rockgrinder.addRecipe(<minecraft:coal:1>, <minecraft:stone>, 0.07);
mods.skyresources.rockgrinder.addRecipe(<minecraft:coal>, <minecraft:stone>, 0.005);
mods.skyresources.rockgrinder.addRecipe(<minecraft:coal>, <minecraft:netherrack>, 0.17);
mods.skyresources.rockgrinder.addRecipe(<minecraft:quartz>, <minecraft:netherrack>, 0.01);

recipes.remove(<minecraft:torch>);
recipes.addShaped(<minecraft:torch>, [[<minecraft:coal:1>],[pwood]]);
recipes.addShaped(<minecraft:torch>*4, [[<minecraft:coal>],[pwood]]);

recipes.remove(<skyresources:blazepowderblock>);
recipes.addShaped(<skyresources:blazepowderblock>, [
  [blaze, blaze, blaze],
  [blaze, blaze, blaze],
  [blaze, blaze, blaze]]);

recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [
  [cob, cob, cob],
  [cob, blaze, cob],
  [sslab, sslab, sslab]]);

recipes.addShapeless(blaze, [<immersiveengineering:tool>, <minecraft:bowl>, <minecraft:gunpowder>, <minecraft:coal:1>]);
recipes.addShapeless(<minecraft:gunpowder>, [<immersiveengineering:tool>, <minecraft:bowl>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]);

recipes.remove(<skyresources:heat>);
recipes.addShaped(<skyresources:heat>,[[pwood, pwood, pwood],[pwood, <minecraft:gunpowder>, pwood],[pwood, pwood, pwood]]);
recipes.remove(<skyresources:heat:1>);
recipes.addShaped(<skyresources:heat:1>,[[pstone, pstone, pstone],[pstone, <minecraft:fire_charge>, pstone],[pstone, pstone, pstone]]);
#recipes.remove(<skyresources:casing:1>);
#recipes.addShaped(<skyresources:casing:1>, [[stone, stone, stone],[stone, <ore:gearStone>, stone],[stone, stone, stone]]);

// Grout
recipes.remove(<tconstruct:soil>);
mods.skyresources.combustion.addRecipe(<tconstruct:soil>*8, [<minecraft:sand>*4,<minecraft:gravel>*4,<minecraft:clay>], 400);
mods.skyresources.combustion.addRecipe(<tconstruct:soil>*2, [<minecraft:sand>,<minecraft:gravel>,<minecraft:clay_ball>], 150);

// Reinforced Stone (custom)
mods.tconstruct.Alloy.addRecipe(<liquid:reinforced_stone>*144, [<liquid:stone>*144, <liquid:clay>*72, <liquid:glass>*1000]);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, <minecraft:brick_block>, <liquid:reinforced_stone>, 1296);
mods.tconstruct.Casting.addTableRecipe(rstone, <minecraft:brick>, <liquid:reinforced_stone>, 144, true);

// Reinforced Stone Gear / Block / Ingot
recipes.addShaped(<contenttweaker:material_part:29>, [
  [null, rstone, null],
  [rstone, <immersiveengineering:tool>, rstone],
  [null, rstone, null]]);
recipes.addShaped(<contenttweaker:sub_block_holder_0:1>, [
  [rstone,rstone,rstone],
  [rstone,rstone,rstone],
  [rstone,rstone,rstone]]);
recipes.addShapeless(rstone*9, [<contenttweaker:sub_block_holder_0:1>]);
recipes.addShaped(rstone, [[<contenttweaker:material_part:31>,<contenttweaker:material_part:31>,<contenttweaker:material_part:31>],[<contenttweaker:material_part:31>,<contenttweaker:material_part:31>,<contenttweaker:material_part:31>],[<contenttweaker:material_part:31>,<contenttweaker:material_part:31>,<contenttweaker:material_part:31>]]);
recipes.addShapeless(<contenttweaker:material_part:31>*9, [rstone]);

// Replacing Iron tier sky resources with reinforced stone
recipes.removeShaped(<skyresources:casing:3>);
recipes.addShaped(<skyresources:casing:3>, [[rstone, rstone, rstone],[rstone, <contenttweaker:material_part:55>, rstone],[rstone, rstone, rstone]]);
recipes.removeShaped(<skyresources:heat:3>);
recipes.remove(<skyresources:combustionheater:3>);
recipes.remove(<skyresources:heatprovider:3>);
var fc = <minecraft:fire_charge>;
var h3 = <skyresources:heat:3>;
recipes.addShaped(<skyresources:heat:3>, [[rstone, rstone, rstone],[rstone, fc, rstone],[rstone, rstone, rstone]]);
recipes.addShaped(<skyresources:combustionheater:3>, [[rstone, rstone, rstone],[rstone, null, rstone],[rstone, h3, rstone]]);
recipes.addShaped(<skyresources:heatprovider:3>, [[rstone, h3, rstone],[rstone, h3, rstone],[rstone, rstone, rstone]]);

mods.skyresources.combustion.removeRecipe(<skyresources:alchemyitemcomponent:2>);
mods.skyresources.combustion.addRecipe(<skyresources:alchemyitemcomponent:2>, [<minecraft:gunpowder>*3, blaze*2, <minecraft:coal:1>], 1000);

recipes.remove(<skyresources:alchemy:3>);
recipes.addShaped(<skyresources:alchemy:3>, [
  [rstone, rstone, rstone],
  [rstone, <skyresources:alchemyitemcomponent:2>, rstone],
  [rstone, rstone, rstone]]);
recipes.remove(<skyresources:fusiontable>);
recipes.addShapeless(<skyresources:fusiontable>, [<ore:workbench>, <skyresources:alchemy:3>]);
<skyresources:alchemyitemcomponent:8>.displayName = "Alchemical Stone";
<skyresources:alchemyitemcomponent:7>.displayName = "Fool's Gold";
<skyresources:alchemyitemcomponent:10>.displayName = "False Diamond";
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:8>);
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:7>);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:8>, [rstone, blaze*16], 0.5);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:7>, [<skyresources:alchemyitemcomponent:8>, <skyresources:alchemyitemcomponent:3>], 1.0);
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:3>);
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:4>);
mods.tconstruct.Melting.addRecipe(<liquid:lava> * 1000, <skyresources:blazepowderblock>);
mods.tconstruct.Melting.addRecipe(<liquid:water> * 80, <minecraft:leaves:*>);
mods.tconstruct.Casting.addTableRecipe(<skyresources:alchemyitemcomponent:3>, <skyresources:alchemyitemcomponent:8>, <liquid:lava>, 500, true);
mods.tconstruct.Casting.addTableRecipe(<skyresources:alchemyitemcomponent:4>, <skyresources:alchemyitemcomponent:7>, <liquid:lava>, 500, true);
recipes.remove(<skyresources:endportalcore>);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:10>, [<skyresources:alchemyitemcomponent:7>, <skyresources:alchemyitemcomponent:4>], 4.50);
mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:10>);
recipes.remove(<skyresources:lifeinjector>);
recipes.remove(<skyresources:redsandstoneinfusionstone>);
recipes.remove(<skyresources:sandstoneinfusionstone>);
recipes.addShaped(<skyresources:lifeinjector>, [[null, <skyresources:alchemicalinfusionstone>, null],[null, log, null],[log, log, log]]);
mods.skyresources.infusion.removeRecipe(<skyresources:itemhealthgem>);
mods.skyresources.infusion.addRecipe(<skyresources:itemhealthgem>, <skyresources:alchemyitemcomponent:10>, <minecraft:leaves:*>, 15);
furnace.addRecipe(<minecraft:netherrack>, <skyresources:techitemcomponent:3>);
mods.skyresources.infusion.addRecipe(<skyresources:techitemcomponent:3>*8, <skyresources:techitemcomponent>*8, <minecraft:sand:1>, 19);
recipes.remove(<skyresources:diamondgrinder>);
recipes.addShaped(<skyresources:diamondgrinder>, [[<skyresources:alchemyitemcomponent:10>, null,null],[null,<skyresources:alchemyitemcomponent:10>,null],[null,null,stick]]);
recipes.remove(<skyresources:irongrinder>);
<skyresources:irongrinder>.displayName = "Reinforced Stone Grinder";
recipes.addShaped(<skyresources:irongrinder>, [[rstone, null, null],[null, rstone, null],[null, null, stick]]);

recipes.remove(<skyresources:fluiddropper>);
recipes.addShaped(<skyresources:fluiddropper>, [[pstone, pstone, pstone],[pstone, <skyresources:waterextractor>,pstone],[pstone, null, pstone]]);
recipes.remove(<skyresources:waterextractor>);
recipes.addShaped(<skyresources:waterextractor>, [[null, pwood, null],[pwood, pwood, pwood],[pwood, null, null]]);
recipes.remove(<minecraft:dropper>);
recipes.addShaped(<minecraft:dropper>, [[pstone, pstone, pstone],[pstone, null, pstone],[pstone, null, pstone]]);


<skyresources:baseitemcomponent:2>.displayName = "Cooling Component";
recipes.remove(<skyresources:baseitemcomponent:2>);
mods.tconstruct.Casting.addTableRecipe(<skyresources:baseitemcomponent:2>, rstone, <liquid:water>, 1000, true);
<skyresources:baseitemcomponent:1>.displayName = "Simple Oscilator Component";
recipes.remove(<skyresources:baseitemcomponent:1>);
mods.skyresources.combustion.addRecipe(SOC, [<minecraft:gunpowder>*2, <minecraft:clay_ball>*2, <minecraft:coal:1>*2, blaze*3, rstone*8, <skyresources:baseitemcomponent:2>], 3000);
recipes.remove(<skyresources:heat:6>);
recipes.addShaped(<skyresources:heat:6>, [
  [nb,nb,nb],
  [nb,<minecraft:fire_charge>,nb],
  [nb,nb,nb]]);
recipes.remove(<skyresources:quickdropper>);
recipes.addShaped(<skyresources:quickdropper>, [
  [rstone, rstone, rstone],
  [rstone, <minecraft:dropper>, rstone],
  [rstone, null, rstone]]);
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [
  [rstone, null, rstone],
  [rstone, <minecraft:chest>, rstone],
  [null, rstone, null]]);
recipes.remove(<skyresources:combustioncollector>);
recipes.addShaped(<skyresources:combustioncollector>, [
  [rstone, rstone, rstone],
  [rstone, <minecraft:hopper>, rstone],
  [rstone, rstone, rstone]]);
recipes.remove(<skyresources:rockcleaner>);

mods.tconstruct.Alloy.addRecipe(<liquid:glass-_slime_composite>, [<liquid:slime>, <liquid:glass>]);
mods.tconstruct.Melting.addRecipe(<liquid:slime> * 250, <minecraft:slime_ball>);
mods.tconstruct.Melting.addRecipe(<liquid:slime> * 1000, <tconstruct:slime_congealed>);
mods.tconstruct.Casting.addTableRecipe(<minecraft:slime_ball>, null, <liquid:slime>, 250);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:slime_congealed>, null, <liquid:slime>, 1000);
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, <tconstruct:edible:3>, <liquid:glass-_slime_composite>, 1000);
recipes.remove(<skyresources:heat:10>);
recipes.addShaped(<skyresources:heat:10>, [
  [<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>],
  [<minecraft:end_stone>,<minecraft:fire_charge>,<minecraft:end_stone>],
  [<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>]]);
recipes.remove(<skyresources:baseitemcomponent:6>);
mods.skyresources.combustion.addRecipe(<skyresources:baseitemcomponent:6>, [SOC*4, <minecraft:end_stone>*8, <minecraft:quartz>*16], 3000);
recipes.remove(<skyresources:casing:10>);
recipes.addShaped(<skyresources:casing:10>, [
  [<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>],
  [<minecraft:end_stone>,SOC,<minecraft:end_stone>],
  [<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>]]);
recipes.remove(<skyresources:combustionheater:10>);
recipes.addShaped(<skyresources:combustionheater:10>, [
  [<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>],
  [<minecraft:end_stone>,<skyresources:heat:10>,<minecraft:end_stone>],
  [<minecraft:end_stone>,SOC,<minecraft:end_stone>]]);
recipes.remove(<skyresources:casing:12>);
recipes.addShaped(<skyresources:casing:12>, [
  [p,p,p],
  [p,QAC,p],
  [p,p,p]]);
mods.tconstruct.Casting.addTableRecipe(p, null, <liquid:putty>, 144);
recipes.remove(<skyresources:heat:12>);
recipes.addShaped(<skyresources:heat:12>, [
  [p,p,p],
  [p,<minecraft:fire_charge>,p],
  [p,p,p]]);
mods.tconstruct.Alloy.addRecipe(<liquid:putty>*144, [<liquid:glass-_slime_composite>*1000, <liquid:obsidian>*576, <liquid:reinforced_stone>*1296]);

mods.skyresources.fusion.removeRecipe(<skyresources:alchemyitemcomponent:5>);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:5>, [p*4, <skyresources:alchemy:6>*12, <skyresources:alchemyitemcomponent:10>*8], 4.50);
recipes.remove(<skyresources:crucibleinserter>);
recipes.addShaped(<skyresources:crucibleinserter>, [[rstone, <minecraft:dropper>, rstone],[rstone, null, rstone],[rstone, null, rstone]]);
