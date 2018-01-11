#priority 999
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

#This script is for declaring all global variables and to set up AN ACCURATE NAMING CONVENTION.

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
global nuggetReinforcedStone = <contenttweaker:material_part:72>;

	#Robot Arms
global robotArmBasic as IItemStack = <contenttweaker:basicrobotarm>;
global robotArmIntermediate as IItemStack = <contenttweaker:intermediaterobotarm>;
global robotArmAdvanced as IItemStack = <contenttweaker:advancedrobotarm>;
global robotArmElite as IItemStack = <contenttweaker:eliterobotarm>;
global robotArmInsane as IItemStack = <contenttweaker:insanerobotarm>;
global robotArmUltimate as IItemStack = <contenttweaker:ultimaterobotarm>;
global robotArmLudicrous as IItemStack = <contenttweaker:ludicrousrobotarm>;
global robotArmDivine as IItemStack = <contenttweaker:divinerobotarm>;

	#Valve
global valveBasic as IItemStack = <contenttweaker:basicvalve>;
global valveIntermediate as IItemStack = <contenttweaker:intermediatevalve>;
global valveAdvanced as IItemStack = <contenttweaker:advancedvalve>;
global valveElite as IItemStack = <contenttweaker:elitevalve>;
global valveInsane as IItemStack = <contenttweaker:insanevalve>;
global valveUltimate as IItemStack = <contenttweaker:ultimatevalve>;
global valveLudicrous as IItemStack = <contenttweaker:ludicrousvalve>;
global valveDivine as IItemStack = <contenttweaker:divinevalve>;


