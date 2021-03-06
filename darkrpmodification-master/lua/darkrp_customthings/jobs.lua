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

--[[
    Lord Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
TEAM_MAYOR = DarkRP.createJob("Lord", {
    color = Color(51, 0, 255),
    model = "models/player/tfa_tw3/emhyr.mdl",
    description = [[You are the lord of the town. Create the laws, influence your citizens, and make your town something great!]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_estocone"
    },
    command = "lord",
    max = 1,
    salary = 100,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Guards",
    canDemote = false,
    level = 10,
    mayor = true,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "The lord has been slain") 
    end,
})

--[[
    Town Captain Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
TEAM_CHIEF = DarkRP.createJob("Town Captain", {
    color = Color(51, 0, 255),
    model = "models/player/dovahkiin.mdl",
    description = [[You are the captain of the town. Lead the guards and enforce the laws set in place by the lord!]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_sunlightone"
    },
    command = "guardcapt",
    max = 1,
    salary = 80,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Guards",
    canDemote = true,
    level = 8,
    chief = true,
    PlayerSpawn = function(ply)
        ply:SetHealth(150)
        ply:SetMaxHealth(150)
        ply:SetArmor(100)
        ply:SetMaxArmor(100)
    end,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "The Town Captain has been slain") 
    end,
})

--[[
    Town Guard Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
TEAM_POLICE = DarkRP.createJob("Town Guard", {
    color = Color(51, 0, 255),
    model = {
        "models/player/guard_falkreath.mdl",
        "models/player/guard_dawnstar.mdl",
        "models/player/guard_hjaalmarch.mdl",
        "models/player/guard_markarth.mdl",
        "models/player/guard_riften.mdl",
        "models/player/guard_solitude.mdl",
        "models/player/guard_whiterun.mdl",
        "models/player/guard_winterhold.mdl"
    },
    description = [[You are a guard of the town. Help out the citizens, arrest the criminals, and listen to the orders of your Captain.]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_shortswordone",
    },
    command = "guard",
    max = 4,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Guards",
    canDemote = true,
    level = 3,
    PlayerSpawn = function(ply)
        ply:SetHealth(100)
        ply:SetMaxHealth(100)
        ply:SetArmor(50)
        ply:SetMaxArmor(100)
    end,
})

--[[
    Bandit Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
TEAM_CITIZEN = DarkRP.createJob("Bandit", {
    color = Color(0, 0, 0),
    model = "models/player/tfa_tw3/iorveth.mdl",
    description = [[Rob, mug, and terrorize the citizens of your local village! Make sure the guards don't catch you!]],
    weapons = {
        "weapon_mfrp_lantern",
        "lockpick"
    },
    command = "bandit",
    max = 5,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
    canDemote = false,
})

--[[
    Innkeeper Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
TEAM_CITIZEN = DarkRP.createJob("Innkeeper", {
    color = Color(0, 0, 0),
    model = "models/models/gared/gared.mdl",
    description = [[Treat guests to clean rooms and luxurious food!]],
    weapons = {
        "weapon_mfrp_lantern",
        "rpgguitar"
    },
    command = "inn",
    max = 2,
    salary = 60,
    admin = 0,
    vote = false,
    cook = true,
    hasLicense = false,
    category = "Citizens",
    canDemote = true,
})

--[[
    Staff On Duty Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
TEAM_STAFF = DarkRP.createJob("Staff On Duty", {
    color = Color(0, 0, 0),
    model = "models/player/combine_super_soldier.mdl",
    description = [[If we're here you fucked up]],
    weapons = {},
    command = "onduty",
    max = 0,
    salary = 0,
    admin = 1,
    vote = false,
    hasLicense = false,
    category = "Staff",
    canDemote = false,
    customCheck = function(ply) 
        return table.HasValue({"admin", "operator", "superadmin", "Owner"}, ply:GetUserGroup()) 
    end,
    CustomCheckFailMsg = "This job is Staff only!",
})

TEAM_GUN = DarkRP.createJob("Blacksmith", {
    color = Color(255, 140, 0, 255),
    model = "models/player/tfa_tw3/gaetan.mdl",
    description = [[A Blacksmith is the only person who can sell swords to other people.]],
    weapons = {"weapon_mfrp_lantern"},
    command = "blacksmith",
    max = 3,
    salary = 60,
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
    description = [[The Peasant is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
    weapons = {"weapon_mfrp_lantern"},
    command = "peasant",
    max = 0,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

--[[
    Imperial Foot Soldier Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]
TEAM_IMPERIAL = DarkRP.createJob("Imperial Foot Soldier", {
    color = Color(233, 22, 28),
    model = {
        "models/player/martin/camprouge/fantassinrouge02.mdl",
        "models/player/martin/camprouge/fantassinrouge03.mdl"
    },
    description = [[Basic Level of the Imperial Military ]],
    weapons = {
        "meleearts_blade_broadone",
        "weapon_mfrp_lantern"
    },
    command = "imperialfootsoldier",
    max = 9,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Imperials",
    canDemote = false,


})
--[[
    Assassin Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_ASSASSIN = DarkRP.createJob("Assassin", {
    color = Color(194, 0, 0),
    model = "models/koz/lotr/nazgul/nazgul.mdl",
    description = [[Accept money in exchange for assassinating other players. Don't get caught by the guards!]],
    weapons = {
        "weapon_huntingbow",
        "meleearts_blade_knifeone",
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
    ammo = {
        ["huntingbow_arrows"] = 20,
    },
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
    description = [[???Arrow! Black arrow! I have saved you to the last."]],
    weapons = {
        "weapon_huntingbow",
        "meleearts_blade_shortswordone",
        "weapon_mfrp_lantern"
    },
    command = "imperialarcher",
    max = 2,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Imperials",
    canDemote = false,
    ammo = {
        ["huntingbow_arrows"] = 20,
    },
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
    hasLicense = true,
    category = "Imperials",
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
    hasLicense = true,
    category = "Imperials",
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

TEAM_KING = DarkRP.createJob("King", {
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
    salary = 600,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Imperials",
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
        DarkRP.notifyAll(0, 4, "The King has fallen") 
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
    salary = 300,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Imperials",
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
    hasLicense = true,
    category = "Imperials",
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
    salary = 800,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Imperials",
    canDemote = false,
    ammo = {
        ["xbowbolt"] = 20,
    },
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
    salary = 1000,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Imperials",
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
    salary = 1400,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Imperials",
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
//rebels
--[[
    Rebel Squire Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBEL = DarkRP.createJob("Rebel Squire", {
    color = Color(0, 0, 255),
    model = "models/player/martin/campbleu/generalbleu00.mdl",
    description = [[Basic soldier of the Rebellion]],
    weapons = {
        "meleearts_blade_broadone",
        "weapon_mfrp_lantern"
    },
    command = "rebelsquire",
    max = 10,
    salary = 35,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Rebels",
    canDemote = false,
    level = 3,
})
--[[
    Rebel Archer Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBEL = DarkRP.createJob("Rebel Archer", {
    color = Color(0, 0, 255),
    model = "models/hgn/cru/crossbowman.mdl",
    description = [[Use your arrows to keep the enemy at bay!]],
    weapons = {
        "weapon_huntingbow",
        "weapon_mfrp_lantern",
        "meleearts_blade_shortswordone"
    },
    command = "rebelarcher",
    max = 2,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Rebels",
    canDemote = false,
    level = 4,
})
--[[
    Rebel Sergeant Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBEL = DarkRP.createJob("Rebel Sergeant", {
    color = Color(0, 0, 255),
    model = "models/player/martin/campbleu/groyalbleu00.mdl",
    description = [[Lead your Rebel comrades to beat the Empire back!]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_broaddual"
    },
    command = "rebelsergeant",
    max = 1,
    salary = 55,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Rebels",
    canDemote = false,
    level = 11,
})
--[[
    Rebel General Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBEL = DarkRP.createJob("Rebel General", {
    color = Color(0, 0, 255),
    model = "models/player/martin/campbleu/officierbleu.mdl",
    description = [[Command your troops to end the Imperial reign for one and for all]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_maceone"
    },
    command = "rebelgeneral",
    max = 1,
    salary = 100,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Rebels",
    canDemote = false,
    level = 16,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "") 
    end,
})
--[[
    Rebel Leader Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBEL = DarkRP.createJob("Rebel Leader", {
    color = Color(0, 0, 255),
    model = "models/player/martin/campbleu/recruebleu00.mdl",
    description = [[Fight to dethrone the king]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_estocone"
    },
    command = "rebelleader",
    max = 1,
    salary = 150,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Rebels",
    canDemote = false,
    level = 20,
    PlayerSpawn = function(ply)
        ply:SetHealth(115)
        ply:SetMaxHealth(115)
        ply:SetArmor(10)
        ply:SetMaxArmor(10)
    end,
    PlayerDeath = function(ply, weapon, killer)
        ply:TeamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        DarkRP.notifyAll(0, 4, "") 
    end,
})
--[[
    Banished Knight Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBELS = DarkRP.createJob("Banished Knight", {
    color = Color(0, 0, 0),
    model = {
        "models/player/gondorian.mdl",
        "models/player/gondorianv2.mdl"
    },
    description = [[Banished from the Empire; you return to exact your revenge.]],
    weapons = {
        "weapon_mfrp_lantern",
        "weapon_mfrp_crossbow",
        "item_ammo_crossbow",
        "grassshield",
        "meleearts_blade_zweihanderone"
    },
    command = "banishedknight",
    max = 3,
    salary = 800,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Rebels",
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
    Outcast Captain Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBELS = DarkRP.createJob("Outcast Captain", {
    color = Color(0, 0, 0),
    model = "models/suno/vinwood/vinwoodknight.mdl",
    description = [[A outcast Imperial officer that deserted to aid the Rebellion]],
    weapons = {
        "weapon_mfrp_lantern",
        "meleearts_blade_soulgreatsword",
        "swep_sorceries113",
        "entity_hpwand_spell_apparition",
        "entity_hpwand_spell_bombarda",
        "weapon_hpwr_stick",
        "entity_hpwand_spell_demonic_wand"
    },
    command = "outcastcaptain",
    max = 1,
    salary = 1400,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Rebels",
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
--[[
    Sorcerer Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_REBELS = DarkRP.createJob("Sorcerer", {
    color = Color(64, 128, 128),
    model = {
        "models/dwdarksouls/models/darkwraith.mdl",
        "models/koz/lotr/sauron/sauron.mdl",
        "models/player/miraak.mdl"
    },
    description = [[Dark Magicans that won't stand for the Imperial laws on magic.]],
    weapons = {
        "weapon_mfrp_lantern",
        "entity_hpwand_spell_expulso",
        "entity_hpwand_spell_mostro",
        "entity_hpwand_spell_hail_of_bullets_duo",
        "weapon_hpwr_stick",
        "entity_hpwand_spell_dark_wand"
    },
    command = "sorcerer",
    max = 2,
    salary = 1000,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Rebels",
    canDemote = false,
    customCheck = function(ply) 
        return table.HasValue({"VIP"}, ply:GetUserGroup()) 
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
DarkRP.addHitmanTeam(TEAM_ASSASSIN)
