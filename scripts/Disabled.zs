// Tier 2 Disabled
import crafttweaker.item.IItemStack;


////////////////////////////
// Refined Storage Disabled
////////////////////////////
var rsDisable = [
  <refinedstorage:controller:1>,
  <refinedstorage:portable_grid>,
  <refinedstorage:portable_grid:1>,
  <refinedstorage:crafting_monitor>,
  <refinedstorage:storage_monitor>,
  <refinedstorage:security_manager>,
  <refinedstorage:storage:4>,
  <refinedstorage:fluid_storage>,
  <refinedstorage:fluid_storage:1>,
  <refinedstorage:storage:3>,
  <refinedstorage:storage>,
  <refinedstorage:storage:1>,
  <refinedstorage:storage:2>,
  <refinedstorage:fluid_storage:2>,
  <refinedstorage:fluid_storage:3>,
  <refinedstorage:fluid_storage:4>,
  <refinedstorage:importer>,
  <refinedstorage:exporter>,
  <refinedstorage:external_storage>,
  <refinedstorage:constructor>,
  <refinedstorage:destructor>,
  <refinedstorage:reader>,
  <refinedstorage:writer>,
  <refinedstorage:detector>,
  <refinedstorage:relay>,
  <refinedstorage:interface>,
  <refinedstorage:fluid_interface>,
  <refinedstorage:wireless_transmitter>,
  <refinedstorage:wireless_grid>,
  <refinedstorage:wireless_fluid_grid>,
  <refinedstorage:wireless_crafting_monitor>,
  <refinedstorageaddons:infinite_wireless_transmitter>,
  <refinedstorageaddons:network_bag>] //WIP
  as IItemStack[];

for item in rsDisable {
    mods.jei.JEI.removeAndHide(item);}

////////////
// Forestry
///////////
var fDisabled = [
  <forestry:apiary>,
  <forestry:miner_bag>,
  <forestry:miner_bag_t2>,
  <forestry:adventurer_bag>,
  <forestry:adventurer_bag_t2>,
  <forestry:builder_bag>,
  <forestry:builder_bag_t2>,
  <forestry:hunter_bag>,
  <forestry:hunter_bag_t2>,
  <forestry:forester_bag>,
  <forestry:forester_bag_t2>,
  <forestry:digger_bag>,
  <forestry:digger_bag_t2>]
  as IItemStack[];

print("ForestryTest1");
for item in fDisabled{
    mods.jei.JEI.removeAndHide(item);}
print("ForestryTest1");

////////////////////
//Environmental Tech
////////////////////
var etDisabled = [
  <environmentaltech:lightning_rod>,
  <environmentaltech:lightning_rod_insulated>,
  <environmentaltech:void_ore_miner_cont_1>,
  <environmentaltech:void_ore_miner_cont_2>,
  <environmentaltech:void_ore_miner_cont_3>,
  <environmentaltech:void_ore_miner_cont_4>,
  <environmentaltech:void_ore_miner_cont_5>,
  <environmentaltech:void_ore_miner_cont_6>,
  <environmentaltech:thermal_cell>]
  as IItemStack[];

for item in etDisabled{
  mods.jei.JEI.removeAndHide(item);}

////////////
//Project E
///////////
var peDisabled = [

]
