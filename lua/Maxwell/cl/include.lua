local function AddLuaFile( file ) 

	print( file )
	AddCSLuaFile( file )

end

AddLuaFile('Maxwell/cl/cl_init.lua')
AddLuaFile('Maxwell/cl/cl_net.lua')
AddLuaFile('Maxwell/cl/cl_perks.lua')
AddLuaFile('Maxwell/cl/ui/fonts.lua')
AddLuaFile('Maxwell/cl/ui/cl_hud.lua')
AddLuaFile('Maxwell/cl/ui/cl_perksmenu.lua')

// Resources

resource.AddFile('materials/Maxwell/perklocked.png')
resource.AddFile('materials/Maxwell/perkunlocked.png')