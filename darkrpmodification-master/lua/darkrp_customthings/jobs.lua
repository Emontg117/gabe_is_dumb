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

TEAM_HITMAN = DarkRP.createJob("Assassin", {
    color = Color(194, 0, 0),
    model = "models/koz/lotr/nazgul/nazgul.mdl",
    description = [[Accept money in exchange for assassinating other players. Don't get caught by the guards!]],
    weapons = {
        "weapon_huntingbow",
        "meleearts_blade_knifeone",
        "huntingbow_quiver",
        "huntingbow_quiver",
        "climb_swep2"
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
--[[
    Imperial Archer Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Imperial Archer", {
    color = Color(255, 0, 0),
    model = "models/aoc_player/e_archer.mdl",
    description = [[“Arrow! Black arrow! I have saved you to the last."]],
    weapons = {
        "weapon_huntingbow",
        "huntingbow_quiver",
        "huntingbow_quiver",
        "weapon_mfrp_lantern"
    },
    command = "imperialarcher",
    max = 2,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    level = 3,
})
--[[
    Imperial Captain Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Imperial Captain", {
    color = Color(255, 0, 0),
    model = "models/player/martin/camprouge/officierrouge.mdl",
    description = [[Lead the lower branches of the Imperial military.]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_broadone",
        "blackironshield"
    },
    command = "imperialcaptain",
    max = 1,
    salary = 95,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    level = 12,
})
--[[
    Imperial General Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Imperial General", {
    color = Color(255, 0, 0),
    model = "models/suno/agarius/agariusknight.mdl",
    description = [[Control the Imperial might and crush it's enemies]],
    weapons = {
        "weapon_mfrp_lantern",
        "blackironshield",
        "meleearts_blade_sunlight"
    },
    command = "imperialgeneral",
    max = 1,
    salary = 105,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    level = 18,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "") 
    end,
})
--[[
    King Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("King", {
    color = Color(165, 7, 3),
    model = "models/koz/lotr/aragorn/aragorn.mdl",
    description = [[Lead your Empire to glory!]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_astora",
        "crestshield"
    },
    command = "king",
    max = 1,
    salary = 1200,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    level = 20,
    PlayerSpawn = function(ply)
        ply:SetHealth(120)
        ply:SetMaxHealth(120)
        ply:SetArmor(50)
        ply:SetMaxArmor(50)
    end,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "") 
    end,
})
--[[
    Queen  Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Queen ", {
    color = Color(255, 102, 102),
    model = "models/models/margaery/margaery.mdl",
    description = [[Keep the Royal Family in check]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_shortswordone"
    },
    command = "queen",
    max = 1,
    salary = 800,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    level = 12,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "") 
    end,
})
--[[
    Prince Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Prince", {
    color = Color(193, 0, 0),
    model = "models/models/rodrik/rodrik.mdl",
    description = [[Lead the Royal branch of the military.]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_shortswordone"
    },
    command = "prince",
    max = 1,
    salary = 150,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    level = 10,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "") 
    end,
})
--[[
    Royal Guard Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Royal Guard", {
    color = Color(255, 255, 0),
    model = {
        "models/models/citadel/citadel.mdl",
        "models/models/citadel/citadel_npc.mdl",
        "models/models/citadel/citadel_npc_evil.mdl"
    },
    description = [[Protect and serve the Royal Family at all cost.]],
    weapons = {
        "weapon_mfrp_crossbow",
        "item_ammo_crossbow",
        "weapon_mfrp_lantern",
        "meleearts_spear_yari",
        "havelgreatshield"
    },
    command = "royalguard",
    max = 3,
    salary = 1600,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    PlayerSpawn = function(ply)
        ply:SetHealth(135)
        ply:SetMaxHealth(135)
        ply:SetArmor(50)
        ply:SetMaxArmor(50)
    end,
    customCheck = function(ply) 
        return table.HasValue({"VIP"}, ply:GetUserGroup()) 
    end,
    CustomCheckFailMsg = "Donate to access this job.",
})
--[[
    Royal Mage Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Royal Mage", {
    color = Color(255, 255, 0),
    model = {
        "models/koz/lotr/gandalf/gandalf.mdl",
        "models/koz/lotr/saruman/saruman.mdl"
    },
    description = [[Use your powers to protect and serve the Royal Family.]],
    weapons = {
        "swep_sorceries116",
        "entity_hpwand_healingbook",
        "entity_hpwand_unforgivablebook",
        "entity_hpwand_destrbook",
        "entity_hpwand_spell_mind_wand",
        "weapon_hpwr_stickweapon_hpwr_stick",
        "weapon_hpwr_stick"
    },
    command = "royalmage",
    max = 2,
    salary = 1800,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    PlayerSpawn = function(ply)
        ply:SetHealth(150)
        ply:SetMaxHealth(150)
        ply:SetArmor(65)
        ply:SetMaxArmor(65)
    end,
    customCheck = function(ply) 
        return table.HasValue({"VIP"}, ply:GetUserGroup()) 
    end,
    CustomCheckFailMsg = "Donate to gain access.",
})
--[[
    Royal Knight Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_IMPERIAL = DarkRP.createJob("Royal Knight", {
    color = Color(255, 255, 0),
    model = "models/suno/kingsguard/kingsguard.mdl",
    description = [[The best of the Imperial Military.]],
    weapons = {
        "meleearts_blade_soulgreatsword",
        "swep_sorceries111",
        "meleearts_blade_greatsword"
    },
    command = "royalknight",
    max = 2,
    salary = 2000,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Imperial",
    canDemote = false,
    PlayerSpawn = function(ply)
        ply:SetHealth(200)
        ply:SetMaxHealth(200)
        ply:SetArmor(100)
        ply:SetMaxArmor(100)
    end,
    customCheck = function(ply) 
        return table.HasValue({"VIP+"}, ply:GetUserGroup()) 
    end,
    CustomCheckFailMsg = "Donate to gain access.",
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
