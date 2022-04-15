--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]
--[[
  Iron Shortsword - Shipment
  Generated using: DarkRP | Shipment Generator
  https://yourdevtools.com/gmod/darkrp-shipment
--]]

DarkRP.createShipment("Iron Shortsword", {
    entity = "weapon_mor_iron_shortsword",
    model = "models/morrowind/iron/shortsword/w_iron_shortsword.mdl",
    amount = 10,
    price = 1000,
    pricesep = 150,
    noship = false,
    separate = true,
    category = "ShortSwords",
    allowed = {
        TEAM_GUN
    },
    customCheck = function(ply) 
        return table.HasValue({TEAM_GUN}, ply:Team()) 
    end,
})