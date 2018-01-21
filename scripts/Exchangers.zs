import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("--------------------Exchangers Start ------------------");

var exchangersDisabled = [
	<exchangers:expotato>,
	<exchangers:exwooden>,
	<exchangers:exstone>,
	<exchangers:exgolden>,
	<exchangers:exiron>,
	<exchangers:exdiamond>,
	<exchangers:exemerald>,
	<exchangers:exobsidian>,
	<exchangers:exlv>,
	<exchangers:exmv>,
	<exchangers:exhv>,
	<exchangers:exbasic>,
	<exchangers:exadvanced>,
	<exchangers:exelite>,
	<exchangers:exultimate>
	] as IItemStack[];

for i in exchangersDisabled {
	mods.jei.JEI.removeAndHide(i);}

print("---------------------Exchangers End -------------------");