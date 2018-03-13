import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("-----------------------Matter Overdrive Start-----------------------");

  #Circuits - Isolinear MK1 / Intermediate
recipes.remove(<matteroverdrive:isolinear_circuit>);
  #Circuits - Isolinear MK2
recipes.remove(<matteroverdrive:isolinear_circuit:1>);
  #Circuits - Isolinear MK3
recipes.remove(<matteroverdrive:isolinear_circuit:2>);
  #Circuits - Isolinear MK4
recipes.remove(<matteroverdrive:isolinear_circuit:3>);

  #Crates
var moCrates = [
  <matteroverdrive:tritanium_crate_white>,
  <matteroverdrive:tritanium_crate_orange>,
  <matteroverdrive:tritanium_crate_magenta>,
  <matteroverdrive:tritanium_crate_light_blue>,
  <matteroverdrive:tritanium_crate_yellow>,
  <matteroverdrive:tritanium_crate_lime>,
  <matteroverdrive:tritanium_crate_pink>,
  <matteroverdrive:tritanium_crate_gray>,
  <matteroverdrive:tritanium_crate_silver>,
  <matteroverdrive:tritanium_crate_cyan>,
  <matteroverdrive:tritanium_crate_purple>,
  <matteroverdrive:tritanium_crate_blue>,
  <matteroverdrive:tritanium_crate_brown>,
  <matteroverdrive:tritanium_crate_green>,
  <matteroverdrive:tritanium_crate_red>,
  <matteroverdrive:tritanium_crate_black>,
  <matteroverdrive:tritanium_crate>] as IItemStack[];

  #Inscriber
recipes.remove(<matteroverdrive:inscriber>);

  #Guns
recipes.remove(<matteroverdrive:phaser>);
recipes.remove(<matteroverdrive:phaser_rifle>);
recipes.remove(<matteroverdrive:plasma_shotgun>);
recipes.remove(<matteroverdrive:ion_sniper>);
recipes.remove(<matteroverdrive:omni_tool>);

  #Machine Hull
recipes.remove(<matteroverdrive:machine_hull>);

  #Matter Analyzer
recipes.remove(<matteroverdrive:matter_analyzer>);
  #Matter Decomposer
recipes.remove(<matteroverdrive:decomposer>);
  #Matter Pipe
recipes.remove(<matteroverdrive:matter_pipe>);
  #Matter Pipe - Heavy
recipes.remove(<matteroverdrive:heavy_matter_pipe>);
  #Matter Replicator
recipes.remove(<matteroverdrive:replicator>);
  #Matter Recycler
recipes.remove(<matteroverdrive:matter_recycler>);

  #Network Pipe
recipes.remove(<matteroverdrive:network_pipe>);
  #Network Router
recipes.remove(<matteroverdrive:network_router>);
  #Network Switch
recipes.remove(<matteroverdrive:network_switch>);

  #Pattern Monitor
recipes.remove(<matteroverdrive:pattern_monitor>);
  #Pattern Storage
recipes.remove(<matteroverdrive:pattern_storage>);

  #Gravitational Anomaly
recipes.remove(<matteroverdrive:gravitational_anomaly>);
  #Gravitational Stabilizer
recipes.remove(<matteroverdrive:gravitational_stabilizer>);

  #Fusion Reactor
recipes.remove(<matteroverdrive:fusion_reactor_controller>);
recipes.remove(<matteroverdrive:fusion_reactor_coil>);
recipes.remove(<matteroverdrive:fusion_reactor_io>);

  #Solar Panel
mods.jei.JEI.removeAndHide(<matteroverdrive:solar_panel>);

print("----------------------Matter Overdrive End------------------------");