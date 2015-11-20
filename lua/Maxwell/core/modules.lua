function LoadModules()

	local fs, dirs = file.Find( 'maxwell/modules/*', 'LUA' )

	for i=1,#dirs do

		print( 'maxwell/modules/' .. dirs[i] )
		AddCSLuaFile( 'maxwell/modules/' .. dirs[i] .. '/module.lua' )	
		include( 'maxwell/modules/' .. dirs[i] .. '/module.lua' )

	end

	if (#fs > 0) then print( 'Found unused files in modules' ) end --Log if there's any unused files
	if (Maxwell.Logging && Maxwell.LoggingExtensive && #fs > 0) then PrintTable( fs ) end --Extensive log

end