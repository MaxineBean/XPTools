// Load data on connect

hook.Add('PlayerInitialSpawn', 'LoadOnConnect', function(ply)

	Log('Loading data for ' .. ply:Nick() .. ' - ' .. ply:SteamID() .. ' (CONNECT)') --Log this
	ply:LoadXP()

	ply:FetchPerks()
	ply:NetPerks() --Networking perks

end)

// Save data on disconnect

hook.Add('PlayerDisconnected', 'SaveOnDisconnect', function(ply)

	Log('Saving data for ' .. ply:Nick() .. ' - ' .. ply:SteamID() .. ' (DISCONNECT)') --Log this
	ply:SaveXP()

end)

// Save data on shutdown or map change 

hook.Add('ShutDown', 'SaveOnShutdown', function()

	Log('Saving all player data (SHUTDOWN or MAPCHANGE)') --Log this

	for k,v in pairs(player.GetAll()) do
		v:SaveXP()
	end

end)

// Perk stuff on spawn

hook.Add('PlayerSpawn', 'PerksOnSpawn', function(ply)

	--Weird thing where player hasn't fully spawned yet and perks don't work, so add a 1 second delay
	timer.Simple( 1, function()

		for i=1,#ply.Maxwellperks do
		
			if Maxwell.Perks[ply.Maxwellperks[i]]['cat'] then
				Maxwell.PerksFunctions[ply.Maxwellperks[i]](ply)
			end

		end

	end)

end)

// Check for one-time perks on levelup

hook.Add('PlayerLevelUp', 'LevelUpCheckPerks', function(ply, lvl)

	for i=1,#Maxwell.Perks do

		if (!Maxwell.Perks[i]['cat'] and lvl == Maxwell.Perks[i]['lvl']) then 
		
			Maxwell.PerksFunctions[i](ply)

		end

	end

end)