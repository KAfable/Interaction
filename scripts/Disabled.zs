//Disabled
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

////////////////////////////
//Actually Additions
////////////////////////////

var aaDisabled = [
  <actuallyadditions:item_mining_lens>]
  as IItemStack[];

for item in aaDisabled{
  mods.jei.JEI.removeAndHide(item);}


////////
//Armors
////////
var armorRedundant = [
  <techreborn:bronzehelmet>,
  <techreborn:bronzeleggings>,
  <techreborn:bronzechestplate>,
  <techreborn:bronzeboots>,
  <ic2:bronze_helmet>,
  <ic2:bronze_leggings>,
  <ic2:bronze_chestplate>,
  <ic2:bronze_boots>,
  <mekanismtools:bronzechestplate>,
  <mekanismtools:bronzeleggings>,
  <mekanismtools:bronzehelmet>,
  <mekanismtools:bronzeboots>]
  as IItemStack[];

for item in armorRedundant{
  mods.jei.JEI.removeAndHide(item);}


////////
//Cyclic
////////
var cycDisabled = [
  <cyclicmagic:block_miner_smart>,
  <cyclicmagic:tool_swap_match>,
  <cyclicmagic:tool_prospector>,
  <cyclicmagic:tool_swap>]
  as IItemStack[];

for item in cycDisabled{
  mods.jei.JEI.removeAndHide(item);}


////////////////
//Energy Storage
////////////////
var energyDisabled = [
  <immersiveengineering:metal_device0:2>,
  <immersiveengineering:metal_device0:1>,
  <immersiveengineering:metal_device0>,
  <advgenerators:power_capacitor_redstone>,
  <advgenerators:power_capacitor_advanced>,
  <advgenerators:capacitor_kit_advanced>,
  <advgenerators:power_capacitor_dense>,
  <advgenerators:capacitor_kit_dense>,
  <fluxnetworks:herculeanfluxstorage>,
  <actuallyadditions:block_battery_box>,
  <rftools:powercell_simple>,
  <rftools:powercell>,
  <rftools:powercell_advanced>,
  <fluxnetworks:fluxstorage>,
  <fluxnetworks:herculeanfluxstorage>,
  <fluxnetworks:gargantuanfluxstorage>]
  as IItemStack[];

for item in energyDisabled{
  mods.jei.JEI.removeAndHide(item);}


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

for item in fDisabled{
    mods.jei.JEI.removeAndHide(item);}

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
//Project E
///////////

////////
//Seeds
///////

var seedRemoved = [
  <minecraft:melon_seeds>,
  <minecraft:pumpkin_seeds>,
  <minecraft:potato>,
  <minecraft:carrot>,
  <minecraft:beetroot_seeds>,
  <natura:overworld_seeds>,
  <natura:overworld_seeds:1>,
  <extrautils2:redorchid>,
  <silentgems:fluffypuffseeds>,
  <actuallyadditions:item_rice_seed>,
  <actuallyadditions:item_flax_seed>]
  as IIngredient[];

for item in seedRemoved {
    vanilla.seeds.removeSeed(item);}
