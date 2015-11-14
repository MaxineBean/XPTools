Maxwell.Perks = {}
Maxwell.PerksFunctions = {}

function RegisterPerk( pcat, pname, plvl, pdesc, pfunc )

	local perkindex = #Maxwell.Perks + 1

	Maxwell.Perks[perkindex] = {}
	Maxwell.Perks[perkindex]['cat'] = pcat
	Maxwell.Perks[perkindex]['name'] = pname
	Maxwell.Perks[perkindex]['lvl'] = plvl
	Maxwell.Perks[perkindex]['desc'] = pdesc

	Maxwell.PerksFunctions[perkindex] = pfunc --Seperate table because we don't send this to the client

end

function LoadPerks()

	local fs, dirs = file.Find( 'Maxwell/perks/*', 'LUA' )

	for i=1,#fs do
		
		print( 'Maxwell/perks/' .. fs[i] )
		AddCSLuaFile( 'Maxwell/perks/' .. fs[i] )
		include( 'Maxwell/perks/' .. fs[i] )

	end

	for i=1, #dirs do

		local perks = file.Find( 'Maxwell/perks/' .. dirs[i] .. '/*.lua', 'LUA' )

		for perkid=1,#perks do
			
			print( 'Maxwell/perks/' .. dirs[i] .. '/' .. perks[perkid] )
			AddCSLuaFile( 'Maxwell/perks/' .. dirs[i] .. '/' .. perks[perkid] )
			include( 'Maxwell/perks/' .. dirs[i] .. '/' .. perks[perkid] )

		end
		
	end

end