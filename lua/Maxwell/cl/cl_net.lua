// XP and Level

net.Receive( "SendStats", function(length)

	local plystats = net.ReadTable()

	Maxwell.XP = plystats['xp']
	Maxwell.Level = plystats['lvl']

	Maxwell.XPReq = CalcXPReq(Maxwell.Level)

end)

net.Receive( "ExperienceReceived", function(length)

	local xprec = net.ReadInt( 16 )
	Maxwell.XP = Maxwell.XP + xprec

	hook.Run( "ClPlayerGotXP", xprec )

end)

net.Receive( "LevelUp", function(length)

	hook.Run( "ClPlayerLevelUp", net.ReadInt( 16 ) )

end)

// Perks

net.Receive( "Perks", function(length)

	Maxwell.Perks = net.ReadTable()
	table.SortByMember( Maxwell.Perks, 'lvl', function(a, b) return tonumber(a) > tonumber(b) end )

end)