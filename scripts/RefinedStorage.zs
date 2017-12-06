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

//for item in rsDisable {
//    mods.jei.JEI.removeAndHide(item);}
for item in rsDisable {
  recipes.remove(item);
}

recipes.remove(<refinedstorage:controller>);
mods.jei.JEI.addDescription(<refinedstorage:controller>, 
  "One of the few remnants of an advanced civlization that used to live underground. You've been told that you can retrieve pieces of their machinery from dungeons deep underground or underwater and that the entrances to most of these dungeons are visible from the surface. However be careful as whatever destroyed the previous occupants still lurks in the dark.");

recipes.remove(<refinedstorage:grid>);
recipes.remove(<refinedstorage:disk_drive>);
