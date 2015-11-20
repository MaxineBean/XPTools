util.AddNetworkString("SendStats")
util.AddNetworkString("ExperienceReceived")
util.AddNetworkString("LevelUp")
util.AddNetworkString("Perks")

local pm = FindMetaTable("Player")

// XP and Level

function pm:NetStats()

	local plystats = {}
	plystats['lvl'] = self.Maxwelllvl
	plystats['xp'] = self.Maxwellxp

	net.Start( "SendStats" )
		net.WriteTable( plystats )
	net.Send( self )

end

function pm:NetXPReceived( amount )

	net.Start( "ExperienceReceived" )
		net.WriteInt( amount, 16 )
	net.Send( self )

end

function pm:NetLevelUp( level )

	net.Start( "LevelUp" )
		net.WriteInt( level, 16 )
	net.Send( self )

end

// PERKS

function pm:NetPerks()

	net.Start( "Perks" )
		net.WriteTable( Maxwell.Perks )
	net.Send( self )

end