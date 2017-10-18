#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;

var part_names = ["dust", "gear", "plate", "nugget", "ingot", "beam", "bolt"] as string[];

//////////////////
//Tier 1 Materials
//////////////////
var putty = MaterialSystem.getMaterialBuilder().setName("Putty").setColor(3342387).build();
var wood = MaterialSystem.getMaterialBuilder().setName("Wood").setColor(10053171).build();
var brick = MaterialSystem.getMaterialBuilder().setName("Brick").setColor(12016192).build();
var rstone = MaterialSystem.getMaterialBuilder().setName("Reinforced Stone").setColor(11908533).build();
var slime = MaterialSystem.getMaterialBuilder().setName("Slime_").setColor(52224).build();
var slimeg = MaterialSystem.getMaterialBuilder().setName("Glass-Slime Composite").setColor(3342210).build();
var tier1_list = [putty, wood, brick, rstone] as Material[];

rstone.registerPart("molten");
slime.registerPart("molten");
slimeg.registerPart("molten");
putty.registerPart("molten");

// materialPart.getData().addValue("viscosity", "<number>"); To edit flow rates of materials
// Lava has a density of 3000, and a viscosity of 6000

//////////////////
//Tier 2 Materials
//////////////////
var fiery = MaterialSystem.getMaterialBuilder().setName("Fiery Infused").setColor(6032139).setHasEffect(true).build();
var tier2_list = [fiery] as Material[];

//Tier 1 Registration
for i, mat in tier1_list {
    mat.registerParts(part_names);

    var blockData = mat.registerPart("block").getData();
    blockData.addDataValue("hardness", "5");
    blockData.addDataValue("resistance", "30");
    blockData.addDataValue("harvestTool", "pickaxe");
    blockData.addDataValue("harvestLevel", "1");
}

//Tier 2 Registration
fiery.registerParts(part_names);

// Motors
var motors = ["motor1", "motor2", "motor3", "motor4", "motor5", "motor6"] as string[];
var glowingMotors = ["motor7", "motor8"] as string[];
for i in motors {VanillaFactory.createItem(i).register();}
for i in glowingMotors {
  var tempMotor = VanillaFactory.createItem(i);
  tempMotor.glowing = true;
  tempMotor.register();}

// Conveyors
var conveyors = ["conveyor1", "conveyor2", "conveyor3", "conveyor4", "conveyor5", "conveyor6"] as string[];
var glowingConveyors = ["conveyor7","conveyor8"] as string[];
for i in conveyors {VanillaFactory.createItem(i).register();}
for i in glowingConveyors {
  var tempConveyor = VanillaFactory.createItem(i);
  tempConveyor.glowing = true;
  tempConveyor.register();}

// Pistons
var pistons = ["piston1", "piston2", "piston3", "piston4", "piston5", "piston6"] as string[];
var glowingPistons = ["piston7","piston8"] as string[];
for i in pistons {VanillaFactory.createItem(i).register();}
for i in glowingPistons {
  var tempPiston = VanillaFactory.createItem(i);
  tempPiston.glowing = true;
  tempPiston.register();}

//Emitters
var emitters = ["emitter1", "emitter2", "emitter3", "emitter4", "emitter5", "emitter6"] as string[];
var glowingEmitters = ["emitter7","emitter8"] as string[];
for i in emitters {VanillaFactory.createItem(i).register();}
for i in glowingEmitters {
    var tempEmitter = VanillaFactory.createItem(i);
    tempEmitter.glowing = true;
    tempEmitter.register();}

// Sensors
var sensors = ["sensor1", "sensor2", "sensor3", "sensor4", "sensor5", "sensor6"] as string[];
var glowingSensors = ["sensor7","sensor8"] as string[];
for i in sensors {VanillaFactory.createItem(i).register();}
for i in glowingSensors {
    var tempSensor = VanillaFactory.createItem(i);
    tempSensor.glowing = true;
    tempSensor.register();}

// Robot Arms
var robotArms = ["robotArm1", "robotArm2", "robotArm3", "robotArm4", "robotArm5", "robotArm6"] as string[];
var glowingRobotArms= ["robotArm7","robotArm8"] as string[];
for i in robotArms {VanillaFactory.createItem(i).register();}
for i in glowingRobotArms {
    var tempRobotArm = VanillaFactory.createItem(i);
    tempRobotArm.glowing = true;
    tempRobotArm.register();}

// Valves
var valves = ["valve1", "valve2", "valve3", "valve4", "valve5", "valve6"] as string[];
var glowingValves = ["valve7","valve8"] as string[];
for i in valves {VanillaFactory.createItem(i).register();}
for i in glowingValves {
    var tempValve = VanillaFactory.createItem(i);
    tempValve.glowing = true;
    tempValve.register();}

// Celestial Motor
var astralMotor = VanillaFactory.createItem("astralmotor");
astralMotor.glowing = true;
astralMotor.register();
