
print("------------------------ Compact Machines Start ------------------------");

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>*4, [
	[<ore:plateRefinedIron>, sensorBasic, <ore:plateRefinedIron>],
	[<ore:plateRefinedIron>, <modularmachinery:blockcontroller>, <ore:plateRefinedIron>]]);

print("------------------------- Compact Machines End -------------------------");