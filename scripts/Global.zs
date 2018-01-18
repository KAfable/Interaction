#priority 999
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

#This script is for declaring all global variables and to set up AN ACCURATE NAMING CONVENTION.

	#Blocks
global blockReinforcedStone as IItemStack = <contenttweaker:sub_block_holder_0:2>;

	#Bolts
global boltAbyssalnite as IItemStack = <contenttweaker:material_part:2>;
global boltAluminum as IItemStack = <contenttweaker:material_part:13>;
global boltCopper as IItemStack = <contenttweaker:material_part:23>;
global boltFieryInfused as IItemStack = <contenttweaker:material_part:32>;
global boltGold as IItemStack = <contenttweaker:material_part:46>;
global boltIron as IItemStack = <contenttweaker:material_part:53>;
global boltRedstone as IItemStack = <contenttweaker:material_part:59>;
global boltReinforcedStone as IItemStack = <contenttweaker:material_part:70>;
global boltTin as IItemStack = <contenttweaker:material_part:91>;
global boltSteel as IItemStack = <contenttweaker:material_part:96>;
global boltWood as IItemStack = <contenttweaker:material_part:103>;

	#Conveyor
global conveyorBasic as IItemStack = <contenttweaker:basicconveyor>;
global conveyorIntermediate as IItemStack = <contenttweaker:intermediateconveyor>;
global conveyorAdvanced as IItemStack = <contenttweaker:advancedconveyor>;
global conveyorElite as IItemStack = <contenttweaker:eliteconveyor>;
global conveyorInsane as IItemStack = <contenttweaker:insaneconveyor>;
global conveyorUltimate as IItemStack = <contenttweaker:ultimateconveyor>;
global conveyorLudicrous as IItemStack = <contenttweaker:ludicrousconveyor>;
global conveyorDivine as IItemStack = <contenttweaker:divineconveyor>;

	#Circuits

global circuitBasic as IItemStack = <ic2:crafting:1>;
	#IC2 parts cannot be renamed for some reason
global circuitIntermediate as IItemStack = <advgenerators:controller>;
circuitIntermediate.displayName = "Intermediate Circuit";
global circuitAdvanced as IItemStack = <ic2:crafting:2>;
global circuitElite as IItemStack = <gendustry:env_processor>;
circuitElite.displayName = "Elite Circuit";
global circuitInsane as IItemStack = <extendedcrafting:material:14>;
circuitInsane.displayName = "Insane Circuit";
global circuitUltimate as IItemStack = <extendedcrafting:material:16>;
circuitUltimate.displayName = "Ultimate Circuit";
global circuitLudicrous as IItemStack = <extendedcrafting:material:17>;
circuitLudicrous.displayName = "Ludicrous Circuit";
global circuitDivine as IItemStack = <extendedcrafting:material:19>;
circuitDivine.displayName = "Divine Circuit";

	#Energy Cables
global fluxductBasic as IItemStack = <thermaldynamics:duct_0>;
fluxductIntermediate.displayName = "Basic Fluxduct";
global fluxductIntermediate as IItemStack = <thermaldynamics:duct_0:1>;
fluxductIntermediate.displayName = "Intermediate Fluxduct";
global fluxductAdvanced as IItemStack = <thermaldynamics:duct_0:2>;
fluxductAdvanced.displayName = "Advanced Fluxduct";
global fluxductElite as IItemStack = <thermaldynamics:duct_0:3>;
global fluxductElite2 as IItemStack = <mekanism:transmitter>.withTag({tier: 0});
fluxductElite.displayName = "Elite Fluxduct";
fluxductElite2.displayName = "Elite Fluxduct MKII";

	#Electric Pistons
global electricPistonBasic as IItemStack = <contenttweaker:basicpiston>;
global electricPistonIntermediate as IItemStack = <contenttweaker:intermediatepiston>;
global electricPistonAdvanced as IItemStack = <contenttweaker:advancedpiston>;
global electricPistonElite as IItemStack = <contenttweaker:elitepiston>;
global electricPistonInsane as IItemStack = <contenttweaker:insanepiston>;
global electricPistonUltimate as IItemStack = <contenttweaker:ultimatepiston>;
global electricPistonLudicrous as IItemStack = <contenttweaker:ludicrouspiston>;
global electricPistonDivine as IItemStack = <contenttweaker:divinepiston>;

	#Emitters
global emitterBasic as IItemStack = <contenttweaker:basicemitter>;
global emitterIntermediate as IItemStack = <contenttweaker:intermediateemitter>;
global emitterAdvanced as IItemStack = <contenttweaker:advancedemitter>;
global emitterElite as IItemStack = <contenttweaker:eliteemitter>;
global emitterInsane as IItemStack = <contenttweaker:insaneemitter>;
global emitterUltimate as IItemStack = <contenttweaker:ultimateemitter>;
global emitterLudicrous as IItemStack = <contenttweaker:ludicrousemitter>;
global emitterDivine as IItemStack = <contenttweaker:divineemitter>;

	#Gears
global gearStone as IItemStack = <buildcraftcore:gear_stone>;
global gearDiamond as IItemStack = <buildcraftcore:gear_diamond>;
global gearAbyssalnite as IItemStack = <contenttweaker:material_part:1>;
global gearFieryInfused as IItemStack = <contenttweaker:material_part:31>;
global gearRedstone as IItemStack = <contenttweaker:material_part:58>;
global gearReinforcedStone as IItemStack = <contenttweaker:material_part:69>;
global gearWood as IItemStack = <contenttweaker:material_part:102>;
global gearFluxedElectrum as IItemStack = <redstonearsenal:material:96>;
global gearIron as IItemStack = <thermalfoundation:material:24>;
global gearGold as IItemStack = <thermalfoundation:material:25>;
global gearCopper as IItemStack = <thermalfoundation:material:256>;
global gearTin as IItemStack = <thermalfoundation:material:257>;
global gearSilver as IItemStack = <thermalfoundation:material:258>;
global gearLead as IItemStack = <thermalfoundation:material:259>;
global gearAluminum as IItemStack = <thermalfoundation:material:260>;
global gearNickel as IItemStack = <thermalfoundation:material:261>;
global gearPlatinum as IItemStack = <thermalfoundation:material:262>;
global gearIridium as IItemStack = <thermalfoundation:material:263>;
global gearMithril as IItemStack = <thermalfoundation:material:264>;
global gearSteel as IItemStack = <thermalfoundation:material:288>;
global gearElectrum as IItemStack = <thermalfoundation:material:289>;
global gearInvar as IItemStack = <thermalfoundation:material:290>;
global gearBronze as IItemStack = <thermalfoundation:material:291>;
global gearConstantan as IItemStack = <thermalfoundation:material:292>;
global gearSignalum as IItemStack = <thermalfoundation:material:293>;
global gearLumium as IItemStack = <thermalfoundation:material:294>;
global gearEnderium as IItemStack = <thermalfoundation:material:295>;

	#Ingots
global ingotManasteel as IItemStack = <botania:manaresource>;
global ingotTerrasteel as IItemStack = <botania:manaresource:4>;
global ingotElementium as IItemStack = <botania:manaresource:7>;
global ingotGaia as IItemStack = <botania:manaresource:14>;
global ingotReinforcedStone as IItemStack = <contenttweaker:material_part:67>;
global ingotBlackIron as IItemStack = <extendedcrafting:material>;
global ingotCrystaltine as IItemStack = <extendedcrafting:material:24>;
global ingotUltimate as IItemStack = <extendedcrafting:material:32>;
global ingotDemon as IItemStack = <extrautils2:ingredients:11>;
global ingotEnchanted as IItemStack = <extrautils2:ingredients:12>;
global ingotEvilInfused as IItemStack = <extrautils2:ingredients:17>;
global ingotYellorium as IItemStack = <bigreactors:ingotmetals>;
global ingotCyanite as IItemStack = <bigreactors:ingotmetals:1>;
global ingotGraphite as IItemStack = <bigreactors:ingotmetals:2>;
global ingotBlutonium as IItemStack = <bigreactors:ingotmetals:3>;
global ingotLudicrite as IItemStack = <bigreactors:ingotmetals:4>;
global ingotHOPGraphite as IItemStack = <immersiveengineering:material:19>;
global ingotRefinedObsidian as IItemStack = <mekanism:ingot>;
global ingotOsmium as IItemStack = <mekanism:ingot:1>;
global ingotGlowstone as IItemStack = <mekanism:ingot:3>;
global ingotSteel as IItemStack = <mekanism:ingot:4>;
global ingotBaseEssence as IItemStack = <mysticalagriculture:crafting:32>;
global ingotInferium as IItemStack = <mysticalagriculture:crafting:33>;
global ingotPrudentium as IItemStack = <mysticalagriculture:crafting:34>;
global ingotIntermedium as IItemStack = <mysticalagriculture:crafting:35>;
global ingotSuperium as IItemStack = <mysticalagriculture:crafting:36>;
global ingotSupremium as IItemStack = <mysticalagriculture:crafting:37>;
global ingotSoulium as IItemStack = <mysticalagriculture:crafting:38>;
global ingotBrass as IItemStack = <techreborn:ingot:1>;
global ingotCopper as IItemStack = <thermalfoundation:material:128>;
global ingotAluminium as IItemStack = <frogcraftrebirth:metal_ingot>;
global ingotAluminum as IItemStack = <thermalfoundation:material:132>;
global ingotEnderium as IItemStack = <thermalfoundation:material:167>;
global ingotBronze as IItemStack = <thermalfoundation:material:163>;
global ingotConstantan as IItemStack = <thermalfoundation:material:164>;
global ingotElectrum as IItemStack = <thermalfoundation:material:161>;
global ingotInvar as IItemStack = <thermalfoundation:material:162>;
global ingotIridium as IItemStack = <thermalfoundation:material:135>;
global ingotLumium as IItemStack = <thermalfoundation:material:166>;
global ingotSignalum as IItemStack = <thermalfoundation:material:165>;
global ingotLead as IItemStack = <thermalfoundation:material:131>;
global ingotMithril as IItemStack = <thermalfoundation:material:136>;
global ingotNickel as IItemStack = <thermalfoundation:material:133>;
global ingotPlatinum as IItemStack = <thermalfoundation:material:134>;
global ingotTin as IItemStack = <thermalfoundation:material:129>;
global ingotSilver as IItemStack = <thermalfoundation:material:130>;

	#Machine Casings
global casingBasic as IItemStack = <techreborn:machine_frame>;
casingBasic.displayName = "Basic Machine Casing";
global casingIntermediate as IItemStack	= <modularmachinery:blockcasing:4>;
casingIntermediate.displayName = "Intermediate Machine Casing";
global casingAdvanced as IItemStack	= <techreborn:machine_frame:1>;
casingAdvanced.displayName	= "Advanced Machine Casing";
global casingElite as IItemStack = <thermalexpansion:frame:128>;
casingElite.displayName	= "Elite Machine Casing";
global casingInsane	as IItemStack = <thermalexpansion:frame:129>;
casingInsane.displayName = "Insane Machine Casing";
global casingUltimate as IItemStack	= <thermalexpansion:frame:131>;
casingUltimate.displayName = "Ultimate Machine Casing";
global casingLudicrous as IItemStack = <thermalexpansion:frame:132>;
casingLudicrous.displayName = "Ludicrous Machine Casing";
global casingDivine	as IItemStack = <actuallyadditions:block_misc:8>;
casingDivine.displayName = "Divine Machine Casing";

	#Motors
global motorBasic as IItemStack = <contenttweaker:basicmotor>;
global motorIntermediate as IItemStack = <contenttweaker:intermediatemotor>;
global motorAdvanced as IItemStack = <contenttweaker:advancedmotor>;
global motorElite as IItemStack = <contenttweaker:elitemotor>;
global motorInsane as IItemStack = <contenttweaker:insanemotor>;
global motorUltimate as IItemStack = <contenttweaker:ultimatemotor>;
global motorLudicrous as IItemStack = <contenttweaker:ludicrousmotor>;
global motorDivine as IItemStack = <contenttweaker:divinemotor>;
	
	#Nugget
global nuggetReinforcedStone as IItemStack = <contenttweaker:material_part:72>;

	#Plates
global plateAbyssalnite as IItemStack = <contenttweaker:material_part:4>;
global plateAluminum as IItemStack = <thermalfoundation:material:324>;
global plateBrass as IItemStack = <techreborn:plates:17>;
global plateBronze as IItemStack = <thermalfoundation:material:355>;
global plateConstantan as IItemStack = <thermalfoundation:material:356>;
global plateCopper as IItemStack = <thermalfoundation:material:320>;
global plateElectrum as IItemStack = <thermalfoundation:material:353>;
global plateEnderium as IItemStack = <thermalfoundation:material:359>;
global plateFluxedElectrum as IItemStack = <redstonearsenal:material:128>;
global plateGlowstone as IItemStack = <contenttweaker:material_part:135>;
global plateInvar as IItemStack = <thermalfoundation:material:354>;
global plateIridium as IItemStack = <thermalfoundation:material:327>;
global plateIron as IItemStack = <thermalfoundation:material:32>;
global plateGold as IItemStack = <thermalfoundation:material:33>;
global plateLapis as IItemStack = <ic2:plate:4>;
global plateLead as IItemStack = <thermalfoundation:material:323>;
global plateLumium as IItemStack = <thermalfoundation:material:358>;
global plateMithril as IItemStack = <thermalfoundation:material:328>;
global plateNickel as IItemStack = <thermalfoundation:material:325>;
global platePlatinum as IItemStack = <thermalfoundation:material:326>;
global plateRedstone as IItemStack = <contenttweaker:material_part:61>;	
global plateReinforcedStone as IItemStack = <contenttweaker:material_part:74>;
global plateRubber as IItemStack = <contenttweaker:material_part:85>;
global plateTin as IItemStack = <thermalfoundation:material:321>;
global plateSignalum as IItemStack = <thermalfoundation:material:357>;
global plateSilver as IItemStack = <thermalfoundation:material:322>;
global plateSteel as IItemStack = <thermalfoundation:material:352>;
	#Processor
//global processorBasic as IItemStack = <refinedstorage:processor:3>;
//processorBasic.displayName = "Basic Processor";
//global processorIntermediate as IItemStack = <refinedstorage:processor:4>;
//processorIntermediate.displayName = "Intermediate Processor";
global processorAdvanced as IItemStack = <appliedenergistics2:material:22>;
processorAdvanced.displayName = "Advanced Processor";
global processorElite as IItemStack = <appliedenergistics2:material:23>;
processorElite.displayName = "Elite Processor";
global processorInsane as IItemStack = <appliedenergistics2:material:24>;
processorInsane.displayName = "Insane Processor";
//global processorUltimate as IItemStack = <refinedstorage:processor:5>;
//processorUltimate.displayName = "Ultimate Processor";
global processorLudicrous as IItemStack = <techreborn:part:1>;
processorLudicrous.displayName = "Ludicrous Processor";
global processorDivine as IItemStack = <techreborn:part>;
processorDivine.displayName = "Divine Processor";

	#Rod
global rodRefinedIron as IItemStack = <contenttweaker:material_part:146>;
	#Robot Arms
global robotArmBasic as IItemStack = <contenttweaker:basicrobotarm>;
global robotArmIntermediate as IItemStack = <contenttweaker:intermediaterobotarm>;
global robotArmAdvanced as IItemStack = <contenttweaker:advancedrobotarm>;
global robotArmElite as IItemStack = <contenttweaker:eliterobotarm>;
global robotArmInsane as IItemStack = <contenttweaker:insanerobotarm>;
global robotArmUltimate as IItemStack = <contenttweaker:ultimaterobotarm>;
global robotArmLudicrous as IItemStack = <contenttweaker:ludicrousrobotarm>;
global robotArmDivine as IItemStack = <contenttweaker:divinerobotarm>;

	#Sensors
global sensorBasic as IItemStack = <contenttweaker:basicsensor>;
global sensorIntermediate as IItemStack = <contenttweaker:intermediatesensor>;
global sensorAdvanced as IItemStack = <contenttweaker:advancedsensor>;
global sensorElite as IItemStack = <contenttweaker:elitesensor>;
global sensorInsane as IItemStack = <contenttweaker:insanesensor>;
global sensorUltimate as IItemStack = <contenttweaker:ultimatesensor>;
global sensorLudicrous as IItemStack = <contenttweaker:ludicroussensor>;
global sensorDivine as IItemStack = <contenttweaker:divinesensor>;

	#Stick
global stickSteel as IItemStack = <immersiveengineering:material:2>;
global stickFluxInfused as IItemStack = <redstonearsenal:material:193>;

	#Valve
global valveBasic as IItemStack = <contenttweaker:basicvalve>;
global valveIntermediate as IItemStack = <contenttweaker:intermediatevalve>;
global valveAdvanced as IItemStack = <contenttweaker:advancedvalve>;
global valveElite as IItemStack = <contenttweaker:elitevalve>;
global valveInsane as IItemStack = <contenttweaker:insanevalve>;
global valveUltimate as IItemStack = <contenttweaker:ultimatevalve>;
global valveLudicrous as IItemStack = <contenttweaker:ludicrousvalve>;
global valveDivine as IItemStack = <contenttweaker:divinevalve>;


