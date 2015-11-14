Maxwell
A free Garry's Mod leveling addon

Features:

-Leveling system (Possible to change required XP formula) -Dynamic perks system (Examples included) -Dynamic modules system (Examples included) -Easy to configure (Change XP rate, etc) -Perks menu (Clientside) -Simple logging system (Can be disabled) -ULX Integration (Admin commands)

Planned:

-XP rate per usergroup -Perks per usergroup

------------CONFIG-------------

Maxwell.DataType = 'pdata' --How to save / load data

Maxwell.Logging = false --Log events like players leaving etc Maxwell.LoggingExtensive = false --More detailed logging

Maxwell.AutoXP = true --Automatically give XP every interval Maxwell.AutoXPInterval = 10 --Interval in seconds Maxwell.AutoXPAmount = 100 --XP to give every interval

Maxwell.GroupAutoXP = true --Enable bonus XP rate ONLY from the auto-XP timer (see above) Maxwell.GroupXPRates = { //Sets Mulptipler for XP {'VIP', 2} }

Maxwell.GroupXPAmount = { //Sets the Amount of XP a Group gets, overrides AutoXPAmount {'Owner', 500}, {'superadmin', 250} }

Maxwell.IncreasedXPHighLevel = true --Enables Higher levels to get Higher XP Maxwell.IncreasedXPAmount = 100 --This determines how much xp is added per level set Maxwell.LevelSet = 10 --Sets the amount of levels needed to progress to next level set

Maxwell.XPFromNPCs = true --Enables XP gains for killing NPCs

Maxwell.PerksEnabled = true --Enable or disable perks

--------ADDING MODULES---------

How adding modules works:

-WIP

---------ADDING PERKS----------

How adding Perks works:

-WIP

-------FUNCS,VARS,HOOKS--------

The following vars are available:

-WIP, WHAT IS LISTED WILL CHANGE.

SERVER

ENT.Maxwellxp -- Entity's XP (player) ENT.Maxwelllvl -- Entity's Level (player)

CLIENT

Maxwell.XP -- Current XP Maxwell.Level -- Current level Maxwell.XPReq -- XP required for next level

The following functions are available:

CalcReqXP( lvl ) -- Calculates required XP

ENT:SaveXP() -- Saves level and XP ENT:LoadXP() -- Loads level and XP

The following hooks are available:

PlayerLevelUp -- Called when a player levels up, with ply and lvl as params

-----------Liscence------------

You are allowed to change/modify/distribute these files at your own will.
