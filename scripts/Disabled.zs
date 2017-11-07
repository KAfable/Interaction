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
  <teslacorelib:gear_wood>,
  ] as IItemStack[];

for item in gearsDisabled{
    mods.jei.JEI.removeAndHide(item);}

////////////////////////
// Immersive Engineering
////////////////////////
var immDisabled = [
  <immersiveengineering:wooden_device1>,
  <immersiveengineering:material:10>]
  as IItemStack[];

for item in immDisabled{
    recipes.remove(item);}

<immersiveengineering:wooden_device1>.addTooltip(format.red("Disabled"));
<immersiveengineering:material:10>.addTooltip(format.red("Disabled"));

////////////////////////////
//Ingots & Plates & Blocks
/////////////////////////////
var ipDisabled = [
  <abyssalcraft:copperingot>,
  <abyssalcraft:tiningot>,
  <bigreactors:blockmetals:5>,
  <bigreactors:ingotmetals:5>,
  <crossroads:ingot_bronze>,
  <crossroads:ingot_copper>,
  <crossroads:ingot_tin>,
  <factorytech:ingot:1>,
  <factorytech:ingot:2>,
  <factorytech:ingot:3>,
  <factorytech:ingot>,
  <factorytech:oreblock>,
  <forestry:ingot_bronze>,
  <forestry:ingot_copper>,
  <forestry:ingot_tin>,
  <forestry:resource_storage:1>,
  <forestry:resource_storage:2>,
  <forestry:resource_storage:3>,
  <fp:erz_blocke:2>,
  <fp:erz_blocke>,
  <fp:itemerze:1>,
  <fp:itemerze:2>,
  <fp:itemerze>,
  <fp:spaceship:13>,
  <ic2:ingot:1>,
  <ic2:ingot:2>,
  <ic2:ingot:3>,
  <ic2:ingot:4>,
  <ic2:ingot:5>,
  <ic2:ingot:6>,
  <ic2:plate:1>,
  <ic2:plate:3>,
  <ic2:plate:5>,
  <ic2:plate:7>,
  <ic2:plate:8>,
  <ic2:plate>,
  <ic2:resource:5>,
  <ic2:resource:6>,
  <ic2:resource:8>,
  <ic2:resource:9>,
  <immersiveengineering:metal:1>,
  <immersiveengineering:metal:2>,
  <immersiveengineering:metal:3>,
  <immersiveengineering:metal:30>,
  <immersiveengineering:metal:32>,
  <immersiveengineering:metal:38>,
  <immersiveengineering:metal:39>,
  <immersiveengineering:metal:4>,
  <immersiveengineering:metal:5>,
  <immersiveengineering:metal:7>,
  <immersiveengineering:metal:8>,
  <immersiveengineering:metal>,
  <immersiveengineering:storage:1>,
  <immersiveengineering:storage:8>,
  <immersiveengineering:storage_slab:1>,
  <immersiveengineering:storage>,
  <mekanism:basicblock:1>,  
  <mekanism:basicblock:12>,
  <mekanism:basicblock:13>,
  <mekanism:ingot:2>,
  <mekanism:ingot:5>,
  <mekanism:ingot:6>,
  <sgextraparts:ingot:1>,
  <sgextraparts:ingot:10>,
  <sgextraparts:ingot:11>,
  <sgextraparts:ingot:12>,
  <sgextraparts:ingot:13>,
  <sgextraparts:ingot:14>,
  <sgextraparts:ingot:15>,
  <sgextraparts:ingot:16>,
  <sgextraparts:ingot:18>,
  <sgextraparts:ingot:19>,
  <sgextraparts:ingot:2>,
  <sgextraparts:ingot:3>,
  <sgextraparts:ingot:4>,
  <sgextraparts:ingot:5>,
  <sgextraparts:ingot:6>,
  <sgextraparts:ingot:7>,
  <sgextraparts:ingot:8>,
  <sgextraparts:ingot:9>,
  <sgextraparts:ingot>,
  <techreborn:ingot:10>,
  <techreborn:ingot:11>,
  <techreborn:ingot:12>,
  <techreborn:ingot:13>,
  <techreborn:ingot:2>,
  <techreborn:ingot:4>,
  <techreborn:ingot:5>,
  <techreborn:ingot:6>,
  <techreborn:ingot:8>,
  <techreborn:ingot:9>,
  <techreborn:ingot>,
  <techreborn:plates:18>,
  <techreborn:plates:20>,
  <techreborn:plates:24>,
  <techreborn:plates:28>,
  <techreborn:plates:29>,
  <techreborn:plates>,
  <techreborn:storage:4>,
  <techreborn:storage2:8>,
  <techreborn:storage2:9>,
  <thermalfoundation:storage_alloy>]
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
  <techreborn:nuggets:4>,
  <immersiveengineering:metal:29>,
  <techreborn:nuggets:23>,
  <techreborn:nuggets:9>,
  <immersiveengineering:metal:24>,
  <factorytech:ore_dust:5>,
  <magicbees:orepart:5>,
  <techreborn:nuggets:2>,
  <techreborn:nuggets:8>,
  <immersiveengineering:metal:22>,
  <techreborn:nuggets:13>,
  <magicbees:orepart:4>]
  as IItemStack[];

for item in nuggetsDisabled{
    mods.jei.JEI.removeAndHide(item);}


////////////////////////////
// Ores Disabled
////////////////////////////
var mineralsDisabled = [
  <crossroads:ore_copper>,
  <crossroads:ore_native_copper>,
  <crossroads:ore_tin>,
  <embers:ore_copper>,
  <embers:ore_silver>,
  <embers:ore_lead>,
  <factorytech:ore>,
  <factorytech:ore:1>,
  <forestry:resources:1>,
  <forestry:resources:2>,
  <fp:erze>,
  <fp:erze:2>,
  <fp:erze:3>,
  <ic2:resource:1>,
  <ic2:resource:2>,
  <ic2:resource:3>,
  <immersiveengineering:ore>,
  <immersiveengineering:ore:1>,
  <immersiveengineering:ore:2>,
  <immersiveengineering:ore:3>,
  <immersiveengineering:ore:4>,
  <immersiveengineering:ore:5>,
  <mekanism:oreblock:1>,
  <mekanism:oreblock:2>,
  <mysticalagriculture:nether_inferium_ore>,
  <mysticalagriculture:inferium_ore>,
  <techreborn:ore:1>,
  <techreborn:ore:12>,
  <techreborn:ore2>,
  <techreborn:ore2:1>
  ] as IItemStack[];

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

/////////
//Weapons
/////////
var wepRedundant = [
  <techreborn:bronzesword>,
  <ic2:bronze_sword>,
  <thermalfoundation:tool.sword_bronze>]
  as IItemStack[];

for item in wepRedundant {
    mods.jei.JEI.removeAndHide(item);}
