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

var zsBlockUnf = VanillaFactory.createBlock("portalBlockUnf", <blockmaterial:rock>);
zsBlockUnf.blockSoundType = <soundtype:metal>;
zsBlockUnf.register();

var zsBlockUnj = VanillaFactory.createBlock("portalBlockUnt", <blockmaterial:rock>);
zsBlockUnj.blockSoundType = <soundtype:metal>;
zsBlockUnj.blockLayer = "CUTOUT";
zsBlockUnj.register();

var zsBlockUnk = VanillaFactory.createBlock("portalBlockUnk", <blockmaterial:rock>);
zsBlockUnk.blockSoundType = <soundtype:metal>;
zsBlockUnk.blockLayer = "CUTOUT";
zsBlockUnk.register();

var overworldEssenceL = VanillaFactory.createItem("overworldessencel");
overworldEssenceL.register();

var overworldEssenceR = VanillaFactory.createItem("overworldessencer");
overworldEssenceR.register();

var underworldEssence = VanillaFactory.createItem("underworldessence");
underworldEssence.register();