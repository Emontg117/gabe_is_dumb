--[[---------------------------------------------------------------------------
DarkRP custom food
---------------------------------------------------------------------------

This file contains your custom food.
This file should also contain food from DarkRP that you edited.

THIS WILL ONLY LOAD IF HUNGERMOD IS ENABLED IN darkrp_config/disabled_defaults.lua.
IT IS DISABLED BY DEFAULT.

Note: If you want to edit a default DarkRP food, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the food item to this file and edit it.

The default food can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/modules/hungermod/sh_init.lua#L33

Add food under the following line:
---------------------------------------------------------------------------]]
DarkRP.createFood("Loaf of Bread", {
    model = "models/food/bread/bread.mdl",
    energy = 10,
    price = 5
})
DarkRP.createFood("Cooked Chicken", {
    model = "models/food/chicken/roasted_chicken.mdl",
    energy = 35,
    price = 20
})
DarkRP.createFood("Smoked Ham", {
    model = "models/food/ham/ham.mdl",
    energy = 50,
    price = 35
})
DarkRP.createFood("Meat Pie", {
    model = "models/food/pie/pie.mdl",
    energy = 40,
    price = 25
})
DarkRP.createFood("Pumpkin", {
    model = "models/food/pumpkin/pumpkin01.mdl",
    energy = 60,
    price = 45
})
DarkRP.createFood("Ale", {
    model = "models/props_junk/garbage_glassbottle003a.mdl",
    energy = 5,
    price = 2
})
DarkRP.createFood("Wine", {
    model = "models/food/winepitcher/winepitcher.mdl",
    energy = 10,
    price = 10
})
