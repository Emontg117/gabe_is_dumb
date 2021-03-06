--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
https://darkrp.miraheze.org/wiki/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
DarkRP.createCategory {
    name = "Staff",
    categorises = "jobs",
    startExpanded = false,
    color = Color(140, 140, 140),
    sortOrder = 100,
    canSee = function(ply) 
         return true 
    end,
}
DarkRP.createCategory{
    name = "ShortSwords", -- The name of the category.
    categorises = "shipments", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}
--[[
    Imperials - Category
    Generated using: DarkRP | Category Generator
    https://yourdevtools.com/gmod/darkrp-category
--]]
DarkRP.createCategory {
    name = "Imperials",
    categorises = "jobs",
    startExpanded = false,
    color = Color(255, 0, 0),
    sortOrder = 2,
    canSee = function(ply) 
         return true 
    end,
}
DarkRP.createCategory {
    name = "Guards",
    categorises = "jobs",
    startExpanded = false,
    color = Color(51, 0, 255),
    sortOrder = 2,
    canSee = function(ply) 
         return true 
    end,
}
--[[
    Rebels - Category
    Generated using: DarkRP | Category Generator
    https://yourdevtools.com/gmod/darkrp-category
--]]
DarkRP.createCategory {
    name = "Rebels",
    categorises = "jobs",
    startExpanded = false,
    color = Color(0, 0, 255),
    sortOrder = 3,
    canSee = function(ply) 
         return true 
    end,
}
--[[
    Arrows - Category
    Generated using: DarkRP | Category Generator
    https://yourdevtools.com/gmod/darkrp-category
--]]
DarkRP.createCategory {
    name = "Arrows",
    categorises = "ammo",
    startExpanded = false,
    color = Color(0, 0, 0),
    sortOrder = 1,
    canSee = function(ply) 
         return true 
    end,
}
--[[
    Printers - Category
    Generated using: DarkRP | Category Generator
    https://yourdevtools.com/gmod/darkrp-category
--]]
DarkRP.createCategory {
    name = "Printers",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 0, 0),
    sortOrder = 2,
    canSee = function(ply) 
         return true 
    end,
}
