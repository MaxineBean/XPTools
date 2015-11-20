Maxwell.Perks = {}
Maxwell.PerksFunctions = {}

function RegisterPerk( pcat, pname, plvl, pdesc, pfunc )

	local perkindex = #Maxwell.Perks + 1

	Maxwell.Perks[perkindex] = {}
	Maxwell.Perks[perkindex]['cat'] = pcat
	Maxwell.Perks[perkindex]['name'] = pname
	Maxwell.Perks[perkindex]['lvl'] = plvl
	Maxwell.Perks[perkindex]['desc'] = pdesc
	Maxwell.Perks[perkindex]['group'] = pgroup

	Maxwell.PerksFunctions[perkindex] = pfunc --Seperate table because we don't send this to the client

end

function LoadPerks()

	local fs, dirs = file.Find( 'maxwell/perks/*', 'LUA' )

	for i=1,#fs do
		
		print( 'maxwell/perks/' .. fs[i] )
		AddCSLuaFile( 'maxwell/perks/' .. fs[i] )
		include( 'maxwell/perks/' .. fs[i] )

	end

	for i=1, #dirs do

		local perks = file.Find( 'maxwell/perks/' .. dirs[i] .. '/*.lua', 'LUA' )

		for perkid=1,#perks do
			
			print( 'maxwell/perks/' .. dirs[i] .. '/' .. perks[perkid] )
			AddCSLuaFile( 'maxwell/perks/' .. dirs[i] .. '/' .. perks[perkid] )
			include( 'maxwell/perks/' .. dirs[i] .. '/' .. perks[perkid] )

		end
		
	end

end