//Disabled
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/////////////////
// Hammer Removal
var hammerRemoved = [
  <immersiveengineering:metal:31>,
  <immersiveengineering:metal:33>,
  <immersiveengineering:metal:34>,
  <immersiveengineering:metal:35>,
  <immersiveengineering:metal:36>,
  <immersiveengineering:metal:37>,
  <immersiveengineering:metal:40>
  ] as IItemStack[];

for i in hammerRemoved {
  recipes.removeShapeless(i);}


  #Furnace Removals
furnace.remove(<ore:ingotLead>,         <ore:oreLead>);
furnace.remove(<ore:ingotSilver>,       <ore:oreSilver>);
furnace.remove(<ore:ingotGold>,         <ore:oreGold>);
furnace.remove(<ore:ingotAbyssalnite>,  <ore:oreAbyssalnite>);
furnace.remove(<ore:ingotCopper>,       <ore:oreCopper>);
furnace.remove(<ore:ingotTin>,          <ore:oreTin>);
furnace.remove(<forestry:ingot_tin>,    <forestry:resources:2>);
furnace.remove(<crossroads:ingot_tin>,  <crossroads:ore_tin>);
furnace.remove(<abyssalcraft:tiningot>, <ore:oreTin>);
furnace.remove(<techreborn:ingot:13>,   <ore:oreTin>);
furnace.remove(<fp:itemerze>,           <ore:oreTin>);
furnace.remove(<ore:ingotIron>,         <ore:oreIron>);
furnace.remove(<ore:ingotZinc>,         <ore:oreZinc>);
furnace.remove(<ore:ingotAluminum>,     <ore:oreAluminum>);
furnace.remove(<ore:ingotOsmium>,       <ore:oreOsmium>);
furnace.remove(<ore:ingotThorium>,      <ore:oreThorium>);
furnace.remove(<ore:ingotUranium>,      <ore:oreUranium>);
furnace.remove(<ore:ingotUranium>,      <ore:oreYellorite>);
furnace.remove(<ore:ingotAstralStarmetal>,      <ore:oreAstralStarmetal>);
furnace.remove(<ore:ingotMagnesium>,      <ore:oreMagnesium>);
furnace.remove(<ore:ingotLithium>,      <ore:oreLithium>);
furnace.remove(<ore:ingotIron>,      <ore:oreMagnetite>);
furnace.remove(<ore:ingotDraconium>,      <draconicevolution:draconium_ore>);
furnace.remove(<ore:ingotCobalt>,      <ore:oreCobalt>);
furnace.remove(<ore:ingotBoron>,      <ore:oreBoron>);
furnace.remove(<ore:ingotArdite>,      <ore:oreArdite>);
furnace.remove(<ore:ingotNickel>,      <ore:oreNickel>);
furnace.remove(<ore:ingotPlatinum>,      <ore:orePlatinum>);

////////////////////////////
//Actually Additions
////////////////////////////

var aaDisabled = [
  <actuallyadditions:item_mining_lens>,
  <actuallyadditions:block_heat_collector>,
  <actuallyadditions:block_tiny_torch>]
  as IItemStack[];

for item in aaDisabled{
  mods.jei.JEI.removeAndHide(item);}

////////////////////////////
//XTones
////////////////////////////
var xtonesdisabled = [
	<xtones:zeta>,
	<xtones:zeta:1>,
	<xtones:zeta:2>,
	<xtones:zeta:3>,
	<xtones:zeta:4>,
	<xtones:zeta:5>,
	<xtones:zeta:6>,
	<xtones:zeta:7>,
	<xtones:zeta:8>,
	<xtones:zeta:9>,
	<xtones:zeta:10>,
	<xtones:zeta:11>,
	<xtones:zeta:13>,
	<xtones:zeta:14>,
	<xtones:zeta:15>
	] as IItemStack[];

for item in xtonesdisabled {
	mods.jei.JEI.removeAndHide(item);
}

////////////////////////////
//Applied Energistics 2
////////////////////////////
var ae2Disabled = [
  <appliedenergistics2:material:4>,
  <appliedenergistics2:certus_quartz_axe>,
  <appliedenergistics2:certus_quartz_hoe>,
  <appliedenergistics2:certus_quartz_spade>,
  <appliedenergistics2:certus_quartz_pickaxe>,
  <appliedenergistics2:certus_quartz_sword>]
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



  #Quarries
var quarryDisabled = [
  <buildcraftbuilders:quarry>,
  <rftools:shape_card:2>,
  <rftools:shape_card:3>,
  <rftools:shape_card:4>,
  <rftools:shape_card:5>,
  <rftools:shape_card:6>,
  <rftools:shape_card:7>
  ] as IItemStack[];

for item in quarryDisabled{
  mods.jei.JEI.removeAndHide(item);}


////////
//Cyclic
////////
var cycDisabled = [
  <cyclicmagic:tool_swap_match>,
  <cyclicmagic:tool_swap>]
  as IItemStack[];

for item in cycDisabled{
  mods.jei.JEI.removeAndHide(item);}

///////
// Dust
var dustDisabled = [
  <ic2:dust:7>,
  <immersiveengineering:metal:19>,
  <ic2:dust:14>,
  <immersiveengineering:metal:12>,
  <immersiveengineering:metal:11>,
  <immersiveengineering:metal:18>,
  <immersiveengineering:metal:9>,
  <immersiveengineering:metal:10>,
  <immersiveengineering:metal:13>,
  <immersiveengineering:metal:14>,
  <immersiveengineering:metal:15>,
  <immersiveengineering:metal:16>,
  <immersiveengineering:metal:17>,
  <techreborn:dust:24>,
  <mekanism:dust:1>,
  <actuallyadditions:item_dust:1>,
  <techreborn:dust:27>,
  <ic2:dust:8>,
  <actuallyadditions:item_dust>,
  <mekanism:dust>
  ] as IItemStack[];

for item in dustDisabled{
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
  <fluxnetworks:gargantuanfluxstorage>,
  <integrateddynamics:energy_battery>]
  as IItemStack[];

for item in energyDisabled{
  mods.jei.JEI.removeAndHide(item);}

////////////////////
//Environmental Tech
////////////////////
/*var etDisabled = [
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
  mods.jei.JEI.removeAndHide(item);}*/

/////////
// Flight
/////////
var flightDisabled = [
  <cyclicmagic:charm_air>]
  as IItemStack[];

for item in flightDisabled{
  mods.jei.JEI.removeAndHide(item);}


////////////
// Forestry
///////////
var fDisabled = [
  <forestry:apiary>,
  <forestry:engine_clockwork>
  ]as IItemStack[];

for item in fDisabled{
    mods.jei.JEI.removeAndHide(item);}

///////
//Gears
///////
var gearsDisabled = [
  <forestry:gear_bronze>,
  <forestry:gear_copper>,
  <forestry:gear_tin>,
  <teslacorelib:gear_wood>,
  <teslacorelib:gear_stone>,
  <teslacorelib:gear_diamond>
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

  #IC2
var ic2Disabled = [
  <ic2:te:50>]
  as IItemStack[];

for item in ic2Disabled{
    recipes.remove(item);}

////////////////////////////
//Ingots & Plates & Blocks
/////////////////////////////
var ipDisabled = [
  <abyssalcraft:copperingot>,
  <abyssalcraft:tiningot>,
  <armorplus:steel_ingot>,
  <bigreactors:blockmetals:5>,
  <bigreactors:ingotmetals:5>,
  <crossroads:ingot_bronze>,
  <crossroads:ingot_copper>,
  <crossroads:ingot_tin>,
  <crossroads:block_bronze>,
  <embers:plate_gold>,
  <embers:plate_silver>,
  <embers:plate_iron>,
  <embers:block_copper>,
  <embers:block_lead>,
  <embers:block_silver>,
  <embers:ingot_copper>,
  <embers:ingot_silver>,
  <embers:ingot_lead>,
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
  <ic2:plate:2>,
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
  <immersiveengineering:metal:31>,
  <immersiveengineering:metal:32>,
  <immersiveengineering:metal:33>,
  <immersiveengineering:metal:34>,
  <immersiveengineering:metal:36>,
  <immersiveengineering:metal:37>,
  <immersiveengineering:metal:38>,
  <immersiveengineering:metal:39>,
  <immersiveengineering:metal:40>,
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
  <techreborn:plates:1>,
  <techreborn:plates:18>,
  <techreborn:plates:20>,
  <techreborn:plates:24>,
  <techreborn:plates:25>,
  <techreborn:plates:28>,
  <techreborn:plates:29>,
  <techreborn:plates>,
  <techreborn:storage:4>,
  <techreborn:storage2:8>,
  <techreborn:storage2:9>,
  <techreborn:storage:14>,
  <thermalfoundation:storage_alloy>]
  as IItemStack[];

for item in ipDisabled{
    mods.jei.JEI.removeAndHide(item);}

/////////
//Nuggets
/////////
var nuggetsDisabled = [
  <crossroads:nugget_copper>,
  <immersiveengineering:metal:20>,
  <magicbees:orepart:3>,
  <techreborn:nuggets:4>,
  <immersiveengineering:metal:29>,
  <techreborn:nuggets:23>,
  <techreborn:nuggets:9>,
  <immersiveengineering:metal:24>,
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

////////////
//Project E
///////////

////////
//Seeds
///////

var seedRemoved = [
  <actuallyadditions:item_rice_seed>,
  <actuallyadditions:item_flax_seed>]
  as IIngredient[];

for item in seedRemoved {
    vanilla.seeds.removeSeed(item);}

////////
//Tools
///////
var toolRedundant = [
  <mekanismtools:obsidianpaxel>,
  <mekanismtools:diamondpaxel>,
  <mekanismtools:bronzepaxel>,
  <mekanismtools:goldpaxel>,
  <mekanismtools:osmiumpaxel>,
  <mekanismtools:glowstonepaxel>,
  <mekanismtools:steelpaxel>,
  <mekanismtools:woodpaxel>,
  <mekanismtools:stonepaxel>,
  <mekanismtools:ironpaxel>,
  <mekanismtools:lapislazulipaxel>
  ]
  as IItemStack[];

for item in toolRedundant {
    mods.jei.JEI.removeAndHide(item);}

/////////
//Weapons
/////////
var wepRedundant = [
  <techreborn:bronzesword>,
  <ic2:bronze_sword>,
  <thermalfoundation:tool.sword_bronze>,
  <tp:flint_sword>]
  as IItemStack[];

for item in wepRedundant {
    mods.jei.JEI.removeAndHide(item);}
