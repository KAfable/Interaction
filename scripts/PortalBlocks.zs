#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;

var zsBlockf = VanillaFactory.createBlock("portalBlockf", <blockmaterial:rock>);
zsBlockf.blockSoundType = <soundtype:metal>;
zsBlockf.register();

var zsBlockj = VanillaFactory.createBlock("portalBlockt", <blockmaterial:rock>);
zsBlockj.blockSoundType = <soundtype:metal>;
zsBlockj.blockLayer = "CUTOUT";
zsBlockj.register();

var overworldEssenceL = VanillaFactory.createItem("overworldessencel");
overworldEssenceL.register();

var overworldEssenceR = VanillaFactory.createItem("overworldessencer");
overworldEssenceR.register();
