local function AddLuaFile( file ) 

	print( file )
	AddCSLuaFile( file )

end

AddLuaFile('maxwell/cl/cl_init.lua')
AddLuaFile('maxwell/cl/cl_net.lua')
AddLuaFile('maxwell/cl/cl_perks.lua')
AddLuaFile('maxwell/cl/ui/fonts.lua')
AddLuaFile('maxwell/cl/ui/cl_hud.lua')
AddLuaFile('maxwell/cl/ui/cl_perksmenu.lua')

// Resources

resource.AddFile('materials/maxwell/perklocked.png')
resource.AddFile('materials/maxwell/perkunlocked.png')