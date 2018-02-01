print("------------------Nuclearcraft Start------------------");
	
	#Cooler - Empty
recipes.remove(<nuclearcraft:cooler>);
recipes.addShaped(<nuclearcraft:cooler>, [
	[<ore:plateLapis>, <ore:plateSteel>, <ore:plateLapis>],
	[<ore:plateSteel>, null, <ore:plateSteel>],
	[<ore:plateLapis>, <ore:plateSteel>, <ore:plateLapis>]]);
	
	#Dominos Special
recipes.remove(<nuclearcraft:dominos>);
recipes.addShapeless(<nuclearcraft:dominos>, [
	<harvestcraft:doughitem>, <minecraft:cooked_chicken>, <minecraft:cooked_beef>, <minecraft:cooked_porkchop>,
	<minecraft:cooked_mutton>, <minecraft:brown_mushroom>, <minecraft:brown_mushroom>]);


	#Alloy Furnace
recipes.remove(<nuclearcraft:alloy_furnace_idle>);
	#Ingot Former
recipes.remove(<nuclearcraft:ingot_former_idle>);
	#Manufactory
recipes.remove(<nuclearcraft:manufactory_idle>);
	#Blast Block
recipes.remove(<nuclearcraft:fission_block:1>);
	#Nuclear Furnace
	#isotope Separator
recipes.remove(<nuclearcraft:isotope_separator_idle>);
	#Cobblestone Generator
recipes.remove(<nuclearcraft:cobblestone_generator>);
	#Fuel Reprocessor
recipes.remove(<nuclearcraft:fuel_reprocessor_idle>);
	#Melter
recipes.remove(<nuclearcraft:melter_idle>);
	#Supercooler
recipes.remove(<nuclearcraft:supercooler_idle>);
	#Electroylzer
recipes.remove(<nuclearcraft:electrolyser_idle>);
	#Irradiator
recipes.remove(<nuclearcraft:irradiator_idle>);
	#Pressurizer
recipes.remove(<nuclearcraft:pressurizer_idle>);
	#Chemical Reactor
recipes.remove(<nuclearcraft:chemical_reactor_idle>);
	#Salt Mixer
recipes.remove(<nuclearcraft:salt_mixer_idle>);
	#Crystyallizer
recipes.remove(<nuclearcraft:crystallizer_idle>);
	#Dissolver
recipes.remove(<nuclearcraft:dissolver_idle>);
	#Machine Interface
recipes.remove(<nuclearcraft:machine_interface>);
	#Fission Controller
recipes.remove(<nuclearcraft:fission_controller_idle>);
	#Fission Port
recipes.remove(<nuclearcraft:fission_port>);
	#Fusion Core
recipes.remove(<nuclearcraft:fusion_core>);
	#Fusion Connector
recipes.remove(<nuclearcraft:fusion_connector>);
	#Infuser
recipes.remove(<nuclearcraft:infuser_idle>);
	#Decay Hastener
recipes.remove(<nuclearcraft:decay_hastener_idle>);

print("-------------------Nuclearcraft End-------------------");