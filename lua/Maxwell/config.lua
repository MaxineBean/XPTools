Maxwell = {}
Maxwell.Version = '1.0.0'

Maxwell.DataType = 'pdata' --How to save / load data

Maxwell.Logging = true --Log events like players leaving etc
Maxwell.LoggingExtensive = true --More detailed logging

Maxwell.AutoXP = true --Automatically give XP every interval
Maxwell.AutoXPInterval = 1 --Interval in seconds
Maxwell.AutoXPAmount = 100 --XP to give every interval

Maxwell.GroupAutoXP = true --Enable bonus XP rate ONLY from the auto-XP timer (see above)
Maxwell.GroupXPRates = { //Sets Mulptipler for XP
	{'VIP', 2}
} 
Maxwell.CustomGroupXP = true --Enables Custom XP gains for groups
Maxwell.GroupXPAmount = { //Sets the Amount of XP a Group gets, overrides AutoXPAmount, Groups in GroupXPRates HAVE to bee listed here too but with the base amount of xp they get, GroupXPRates will then muptiply that
	{'Owner', 500},
	{'superadmin', 250},
	{'VIP', 100}
}

Maxwell.IncreasedXPHighLevel = true --Enables Higher levels to get Higher XP

Maxwell.XPFromNPCs = true --Enables XP gains for killing NPCs
Maxwell.XPAmountFromNPCs = 10 --Amount of XP you get from killing an NPC

Maxwell.PerksEnabled = true --Enable or disable perks