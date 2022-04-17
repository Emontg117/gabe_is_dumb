--[[---------------------------------------------------------------------------
Door groups
---------------------------------------------------------------------------
The server owner can set certain doors as owned by a group of people, identified by their jobs.


HOW TO MAKE A DOOR GROUP:
AddDoorGroup("NAME OF THE GROUP HERE, you will see this when looking at a door", Team1, Team2, team3, team4, etc.)
---------------------------------------------------------------------------]]


-- Example: AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
-- Example: AddDoorGroup("Gundealer only", TEAM_GUN)
--[[
    Imperials - Door Group
    Generated using: DarkRP | Door Group Generator
    https://yourdevtools.com/gmod/darkrp-doorgroup
--]]

AddDoorGroup("Imperials", TEAM_IMPERIAL, TEAM_KING)
AddDoorGroup("Guards", TEAM_POLICE, TEAM_CHIEF, TEAM_MAYOR)
AddDoorGroup("Rebels", TEAM_REBEL)