Maxwell = {}
Maxwell.Version = '0.0.1'

Maxwell.DataType = 'pdata' --How to save / load data

Maxwell.Logging = false --Log events like players leaving etc
Maxwell.LoggingExtensive = false --More detailed logging

Maxwell.AutoXP = true --Automatically give XP every interval
Maxwell.AutoXPInterval = 10 --Interval in seconds
Maxwell.AutoXPAmount = 100 --XP to give every interval

Maxwell.GroupAutoXP = true --Enable bonus XP rate ONLY from the auto-XP timer (see above)
Maxwell.GroupXPRates = { //Sets Mulptipler for XP
	{'VIP', 2}
} 

Maxwell.GroupXPAmount = { //Sets the Amount of XP a Group gets, overrides AutoXPAmount
	{'Owner', 500},
	{'superadmin', 250}
}

Maxwell.IncreasedXPHighLevel = true --Enables Higher levels to get Higher XP
Maxwell.IncreasedXPAmount = 100 --This determines how much xp is added per level set
Maxwell.LevelSet = 10 --Sets the amount of levels needed to progress to next level set

Maxwell.XPFromNPCs = true --Enables XP gains for killing NPCs

Maxwell.PerksEnabled = true --Enable or disable perks