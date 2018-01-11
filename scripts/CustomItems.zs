

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("------------------------Custom Items Start-------------------------");

#Basic Tier
	#Basic Robot Arm
recipes.addShaped(robotArmBasic, [
  [motorBasic, <ore:plateIron>, motorBasic],
  [<ore:plateIron>, null, <ore:plateIron>],
  [null , null, <contenttweaker:basicpiston>]]);
	#Basic Motor
recipes.addShaped(motorBasic, [
	[<ore:ringRubber>, <thermaldynamics:duct_0>, <ore:stickSteel>],
	[<thermaldynamics:duct_0>, <ore:stickSteel>, <thermaldynamics:duct_0>],
	[<ore:stickSteel>, <thermaldynamics:duct_0>, <ore:ringRubber>]]);
	#Basic Valve
recipes.addShaped(valveBasic, [
	[<ore:boltSteel>, <ore:rotorSteel>, <ore:ringRubber>],
	[null, <thermaldynamics:duct_16>, null],
	[<ore:ringRubber>, motorBasic, <thermaldynamics:duct_0>]]);
	#Basic Conveyor
	#Basic Emitter
	#Basic Sensor

#Rings
function makeRingRecipe(output as IItemStack, input as IOreDictEntry) {
	recipes.addShaped(output*4, [
		[input, input, input],
		[input, null, input],
		[input, input, input]]);
}
	#Copper Ring
makeRingRecipe(<contenttweaker:material_part:26>, <ore:ingotCopper>);
	#Iron Ring
makeRingRecipe(<contenttweaker:material_part:55>, <ore:ingotIron>);
	#Steel Ring
makeRingRecipe(<contenttweaker:material_part:98>, <ore:ingotSteel>);
	#Rubber Ring
makeRingRecipe(<contenttweaker:material_part:88>, <ore:itemRubber>);
	

#Plates
#Foil
#Rod
#Rotor
#Dense Plate

print("-------------------------Custom Items End--------------------------");

