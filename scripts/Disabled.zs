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

////////////////////////////
//Applied Energistics 2
////////////////////////////
var ae2Disabled = [
  <appliedenergistics2:material:4>]
  as IItemStack[];

for item in ae2Disabled{
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

///////////////
// FactoryTech
///////////////
var ftDisabled = [
  <factorytech:sluice>]
  as IItemStack[];

for item in ftDisabled{
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

///////
//Gears
///////
var gearsDisabled = [
  <forestry:gear_bronze>,
  <forestry:gear_copper>,
  <forestry:gear_tin>,
  <hammercore:iron_gear>,
  <teslacorelib:gear_wood>]
  as IItemStack[];

for item in gearsDisabled{
    mods.jei.JEI.removeAndHide(item);}

////////////////////
//Ingots & Plates
//////////////////
var ipDisabled = [
  <abyssalcraft:copperingot>,
  <crossroads:ingot_copper>,
  <factorytech:ingot>,
  <forestry:ingot_copper>,
  <fp:itemerze:2>,
  <immersiveengineering:metal>,
  <ic2:ingot:2>,
  <magneticraft:ingots:2>,
  <mekanism:ingot:5>,
  <sgextraparts:ingot>,
  <techreborn:ingot:4>,
  <abyssalcraft:tiningot>,
  <crossroads:ingot_tin>,
  <forestry:ingot_tin>,
  <fp:itemerze>,
  <ic2:ingot:6>,
  <magneticraft:ingots:13>,
  <mekanism:ingot:6>,
  <sgextraparts:ingot:1>,
  <techreborn:ingot:10>,
  <techreborn:ingot:13>,
  <sgextraparts:ingot:5>,
  <techreborn:ingot:8>,
  <sgextraparts:ingot:3>,
  <magneticraft:ingots:3>,
  <ic2:ingot:3>,
  <immersiveengineering:metal:2>,
  <techreborn:ingot:9>,
  <sgextraparts:ingot:4>,
  <magneticraft:ingots:10>,
  <immersiveengineering:metal:4>,
  <factorytech:ingot:1>,
  <crossroads:ingot_bronze>,
  <forestry:ingot_bronze>,
  <ic2:ingot:1>,
  <mekanism:ingot:2>,
  <sgextraparts:ingot:11>,
  <techreborn:ingot:2>,
  <immersiveengineering:metal:1>,
  <magneticraft:ingots:7>,
  <sgextraparts:ingot:6>,
  <techreborn:ingot>,
  <thermalfoundation:storage_alloy>,
  <magneticraft:ingots:12>,
  <techreborn:ingot:11>,
  <sgextraparts:ingot:9>,
  <sgextraparts:ingot:10>,
  <magneticraft:ingots:11>,
  <sgextraparts:ingot:12>,
  <techreborn:ingot:5>,
  <sgextraparts:ingot:15>,
  <immersiveengineering:metal:7>,
  <sgextraparts:ingot:19>,
  <sgextraparts:ingot:18>,
  <magneticraft:ingots:4>,
  <techreborn:ingot:6>,
  <sgextraparts:ingot:14>,
  <factorytech:ingot:3>,
  <sgextraparts:ingot:16>,
  <immersiveengineering:metal:8>,
  <ic2:ingot:5>,
  <magneticraft:ingots:6>,
  <sgextraparts:ingot:13>,
  <techreborn:ingot:12>,
  <techreborn:storage:4>,
  <ic2:resource:8>,
  <bigreactors:blockmetals:5>,
  <immersiveengineering:metal:3>,
  <ic2:ingot:4>,
  <sgextraparts:ingot:2>,
  <bigreactors:ingotmetals:5>,
  <thermalfoundation:material:160>,
  <immersiveengineering:metal:5>,
  <fp:itemerze:1>,
  <magneticraft:ingots:14>,
  <sgextraparts:ingot:8>,
  <sgextraparts:ingot:7>,
  <fp:spaceship:13>,
  <immersiveengineering:metal:32>,
  <ic2:plate:3>,
  <ic2:plate:5>,
  <magneticraft:light_plates>,
  <magneticraft:light_plates:3>,
  <techreborn:plates>,
  <techreborn:plates:24>,
  <immersiveengineering:metal:39>,
  <techreborn:plates:28>,
  <magneticraft:light_plates:6>,
  <ic2:plate:7>,
  <immersiveengineering:metal:38>,
  <techreborn:plates:18>,
  <ic2:plate>,
  <immersiveengineering:metal:30>,
  <ic2:plate:1>,
  <techreborn:plates:20>,
  <techreborn:plates:29>,
  <ic2:plate:8>]
  as IItemStack[];

for item in ipDisabled{
    mods.jei.JEI.removeAndHide(item);}

/////////
//Nuggets
/////////
var nuggetsDisabled = [
  <crossroads:nugget_copper>,
  <factorytech:ore_dust:4>,
  <immersiveengineering:metal:20>,
  <magicbees:orepart:3>,
  <magneticraft:nuggets:2>,
  <techreborn:nuggets:4>,
  <immersiveengineering:metal:29>,
  <techreborn:nuggets:23>,
  <techreborn:nuggets:9>,
  <magneticraft:nuggets:10>,
  <immersiveengineering:metal:24>,
  <factorytech:ore_dust:5>,
  <magicbees:orepart:5>,
  <techreborn:nuggets:2>,
  <techreborn:nuggets:8>,
  <magneticraft:nuggets:3>,
  <immersiveengineering:metal:22>,
  <techreborn:nuggets:13>,
  <magneticraft:nuggets:13>,
  <magicbees:orepart:4>]
  as IItemStack[];

for item in nuggetsDisabled{
    mods.jei.JEI.removeAndHide(item);}


////////////////////////////
// Ores Disabled
////////////////////////////
var mineralsDisabled = [
  <crossroads:ore_copper>,
  <factorytech:ore>,
  <factorytech:ore:1>,
  <crossroads:ore_native_copper>,
  <forestry:resources:1>,
  <ic2:resource:1>,
  <mekanism:oreblock:1>,
  <techreborn:ore:1>,
  <techreborn:ore:12>,
  <techreborn:ore2>,
  <techreborn:ore2:1>,
  <forestry:resources:2>,
  <fp:erze>,
  <fp:erze:2>,
  <ic2:resource:2>,
  <ic2:resource:3>,
  <fp:erze:3>,
  <magneticraft:ores>,
  <immersiveengineering:ore>,
  <immersiveengineering:ore:1>,
  <immersiveengineering:ore:2>,
  <immersiveengineering:ore:3>,
  <immersiveengineering:ore:4>,
  <immersiveengineering:ore:5>,
  <mekanism:oreblock:2>,
  <mysticalagriculture:nether_inferium_ore>,
  <mysticalagriculture:inferium_ore>,
  <crossroads:ore_tin>]
  as IItemStack[];

for item in mineralsDisabled{
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
