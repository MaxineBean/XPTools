Maxwell = {}
Maxwell.Version = '0.1'

Maxwell.DataType = 'pdata' --How to save / load data

Maxwell.Logging = false --Log events like players leaving etc
Maxwell.LoggingExtensive = false --More detailed logging

Maxwell.AutoXP = true --Automatically give XP every interval
Maxwell.AutoXPInterval = 60 --Interval in seconds
Maxwell.AutoXPAmount = 100 --XP to give every interval

Maxwell.GroupAutoXP = true --Enable bonus XP rate ONLY from the auto-XP timer (see above)
Maxwell.GroupAllXP = false --Determines if XP bonuses are always given (including autoxp)
Maxwell.GroupXPRates = {
	{'owner', 2.5},
	{'superadmin', 2},
	{'admin', 1.5},
	{'moderator', 1.4},
	{'operator', 1.3},
	{'vip', 1.5},
	{'trusted', 1.1}
}

Maxwell.PerksEnabled = true --Enable or disable perks