--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_GUN = DarkRP.createJob("Blacksmith", {
    color = Color(255, 140, 0, 255),
    model = "models/player/tfa_tw3/gaetan.mdl",
    description = [[A Blacksmith is the only person who can sell swords to other people.]],
    weapons = {},
    command = "blacksmith",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_CITIZEN = DarkRP.createJob("Peasant", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/martin/camprouge/recruerouge01.mdl",
        "models/player/martin/camprouge/recruerouge02.mdl",
        "models/player/martin/camprouge/recruerouge03.mdl",
        "models/player/martin/camprouge/recruerouge04.mdl",
        "models/player/martin/camprouge/recruerouge05.mdl",
        "models/player/martin/camprouge/recruerouge06.mdl"
    },
    description = [[The Peasent is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
    weapons = {},
    command = "peasant",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
       
        --[[
    Imperial Foot Soldier Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
 //Imperials 
TEAM_IMPERIALS = DarkRP.createJob("Imperial Foot Soldier", {
    color = Color(233, 22, 28),
    model = {
        "models/player/martin/camprouge/fantassinrouge02.mdl",
        "models/player/martin/camprouge/fantassinrouge03.mdl"
    },
    description = [[Basic Level of the Imperial Military ]],
    weapons = {
        "dsaur_sword_silver"
    },
    command = "imperialfootsoldier",
    max = 9,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Imperials ",
    canDemote = false,
})
})

--[[
    Assassin Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

--[[
    Assassin Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_HITMAN = DarkRP.createJob("Assassin", {
    color = Color(194, 0, 0),
    model = "models/koz/lotr/nazgul/nazgul.mdl",
    description = [[Accept money in exchange for assassinating other players. Don't get caught by the guards!]],
    weapons = {
        "dsaur_sword_silver",
        "weapon_huntingbow"
    },
    command = "assassin",
    max = 2,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
    canDemote = true,
    level = 10,
    PlayerSpawn = function(ply)
        ply:SetHealth(100)
        ply:SetMaxHealth(100)
        ply:SetArmor(0)
        ply:SetMaxArmor(0)
    end,
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
