
print("-------------- Water Strainer Start --------------");
  #Garden Trowel
recipes.addShaped(<waterstrainer:garden_trowel>, [
  [null, null, <minecraft:dirt>],
  [null, <ore:ingotReinforced>, null],
  [<ore:stickWood>, null, null]]);

recipes.removeShaped(<waterstrainer:strainer_survivalist>);
recipes.addShaped(<waterstrainer:strainer_survivalist>, [
  [<minecraft:stick>, <minecraft:leather>, <minecraft:stick>],
  [<minecraft:leather>, <waterstrainer:net>, <minecraft:leather>],
  [<minecraft:stick>, <minecraft:leather>, <minecraft:stick>]]);
<waterstrainer:strainer_survivalist>.displayName = "Lapidarist's Strainer";

recipes.removeShaped(<waterstrainer:strainer_survivalist_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_solid>, [
  [<minecraft:stick>, <minecraft:obsidian>, <minecraft:stick>],
  [<minecraft:obsidian>, <waterstrainer:net>, <minecraft:obsidian>],
  [<minecraft:stick>, <minecraft:obsidian>, <minecraft:stick>]]);
<waterstrainer:strainer_survivalist_solid>.displayName = "Gemcutter's Strainer";

recipes.removeShaped(<waterstrainer:strainer_survivalist_reinforced>);
recipes.addShaped(<waterstrainer:strainer_survivalist_reinforced>, [
  [<minecraft:stick>, <ore:gemApatite>, <minecraft:stick>],
  [<ore:gemApatite>, <waterstrainer:net>, <ore:gemApatite>],
  [<minecraft:stick>, <ore:gemApatite>, <minecraft:stick>]]);
<waterstrainer:strainer_survivalist_reinforced>.displayName = "Jeweler's Strainer";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense>, [
  [<minecraft:stick>, <minecraft:leather>, <minecraft:stick>],
  [<minecraft:leather>, <waterstrainer:net:1>, <minecraft:leather>],
  [<minecraft:stick>, <minecraft:leather>, <minecraft:stick>]]);
<waterstrainer:strainer_survivalist_dense>.displayName = "Lapidarist's Strainer (Dense)";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_solid>, [
  [<minecraft:stick>, <minecraft:obsidian>, <minecraft:stick>],
  [<minecraft:obsidian>, <waterstrainer:net:1>,<minecraft:obsidian>],
  [<minecraft:stick>, <minecraft:obsidian>, <minecraft:stick>]]);
<waterstrainer:strainer_survivalist_dense_solid>.displayName = "Gemcutter's Strainer (Dense)";

recipes.removeShaped(<waterstrainer:strainer_survivalist_dense_reinforced>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_reinforced>, [
  [<ore:gemApatite>,  <minecraft:obsidian>, <ore:gemApatite>],
  [ <minecraft:obsidian>, <waterstrainer:net:1>, <minecraft:obsidian>],
  [<ore:gemApatite>,  <minecraft:obsidian>, <ore:gemApatite>]]);
<waterstrainer:strainer_survivalist_dense_reinforced>.displayName = "Jeweler's Strainer (Dense)";

print("-------------- Water Strainer End --------------");