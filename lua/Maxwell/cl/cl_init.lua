Maxwell = {}
Maxwell.Perks = {}

Maxwell.XP = 0
Maxwell.XPReq = CalcXPReq(1)
Maxwell.Level = 1

// Includes

include('maxwell/cl/cl_net.lua')
include('maxwell/cl/cl_perks.lua')
include('maxwell/cl/ui/fonts.lua')
include('maxwell/cl/ui/cl_hud.lua')
include('maxwell/cl/ui/cl_perksmenu.lua')

// Include the modules, too

local fs,  dir = file.Find( 'maxwell/modules/*', 'LUA' )

for i=1,#dir do
	
	include( 'maxwell/modules/' .. dir[i] .. '/module.lua' )

end

// Update required XP on levelup

hook.Add("ClPlayerLevelUp", "LevelUpReqXP", function( lvl )

	Maxwell.XPReq = CalcXPReq( lvl )

end)