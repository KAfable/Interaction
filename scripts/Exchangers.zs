import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

print("--------------------Exchangers Start ------------------");

var exchangersDisabled = [
	<exchangers:tuberous_exchanger>,
	<exchangers:wooden_exchanger>,
	<exchangers:stone_exchanger>,
	<exchangers:golden_exchanger>,
	<exchangers:iron_exchanger>,
	<exchangers:diamond_exchanger>,
	<exchangers:emerald_exchanger>,
	<exchangers:basic_exchanger>,
	<exchangers:lv_exchanger>,
	<exchangers:mv_exchanger>,
	<exchangers:hv_exchanger>,
	<exchangers:elite_exchanger>,
	<exchangers:ultimate_exchanger>,
	<exchangers:advanced_exchanger>
	] as IItemStack[];

for i in exchangersDisabled {
	mods.jei.JEI.removeAndHide(i);}

print("---------------------Exchangers End -------------------");