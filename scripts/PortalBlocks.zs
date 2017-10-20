#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var zsBlockf = VanillaFactory.createBlock("portalBlockf", <blockmaterial:rock>);
zsBlockf.blockSoundType = <soundtype:metal>;
zsBlockf.register();

var zsBlockj = VanillaFactory.createBlock("portalBlockt", <blockmaterial:rock>);
zsBlockj.blockSoundType = <soundtype:metal>;
zsBlockj.blockLayer = "CUTOUT";
zsBlockj.register();

