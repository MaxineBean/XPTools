Maxwell = {}
Maxwell.Perks = {}

Maxwell.XP = 0
Maxwell.XPReq = CalcXPReq(1)
Maxwell.Level = 1

// Includes

include('Maxwell/cl/cl_net.lua')
include('Maxwell/cl/cl_perks.lua')
include('Maxwell/cl/ui/fonts.lua')
include('Maxwell/cl/ui/cl_hud.lua')
include('Maxwell/cl/ui/cl_perksmenu.lua')

// Include the modules, too

local fs,  dir = file.Find( 'Maxwell/modules/*', 'LUA' )

for i=1,#dir do
	
	include( 'Maxwell/modules/' .. dir[i] .. '/module.lua' )

end

// Update required XP on levelup

hook.Add("ClPlayerLevelUp", "LevelUpReqXP", function( lvl )

	Maxwell.XPReq = CalcXPReq( lvl )

end)