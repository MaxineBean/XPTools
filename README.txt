Features:

-Leveling system (Possible to change required XP formula)
-Dynamic perks system (Examples included)
-Dynamic modules system (Examples included)
-Easy to configure (Change XP rate, etc)
-HUD with 2 choices (Or add your own via a module)
-Perks menu (Clientside)
-Simple logging system (Can be disabled)
-ULX Integration (Admin commands)

Planned:

-XP rate per usergroup
-Perks per usergroup

Some notes
-----------

Do not resell
Do not redistribute, link to the github page instead (No reuploading this anywhere without original author's written permission)
Do not sublicense
No claiming as your own
Leave credit to original author at all times

I (author of this addon) am not liable for any damage, problems, etc this addon may or may not cause to you, your computer, your potato or anything else

-------------------------------
------------CONFIG-------------
-------------------------------

Maxwell.DataType = 'pdata' --How to save / load data, this is also a lua file in Maxwell/core/data/ so you may easily create your own way of saving and loading (The functions for that have to be the same name, see below)

Maxwell.Logging = false --Log events like players leaving etc
Maxwell.LoggingExtensive = false --More detailed logging

Maxwell.AutoXP = true --Automatically give XP every interval
Maxwell.AutoXPInterval = 5 --Interval in seconds
Maxwell.AutoXPAmount = 2 --XP to give every interval


-------------------------------
--------ADDING MODULES---------
-------------------------------


How adding modules works:

Create a new folder, name it anything you want (for your own sake, something you'll recognise)
Create a file module.lua, this is basically a shared.lua and will be received by both server and player

In this module.lua, put the usual Includes (serverside) and AddCSLuaFile (Clientside)
From there on, it's just like any other addon


-------------------------------
---------ADDING PERKS----------
-------------------------------


Perks are added in Maxwell/perks and are SHARED

Single files are seen as a perk
Folders are seen as a category, all files inside belong to that category


-------------------------------
-------FUNCS,VARS,HOOKS--------
-------------------------------


The following vars are available:

SERVER

ENT.Maxwellsxp		-- Entity's XP (player)
ENT.Maxwelllvl		-- Entity's Level (player)

CLIENT

Maxwell.XP		-- Current XP
Maxwell.Level		-- Current level
Maxwell.XPReq		-- XP required for next level



The following functions are available:

ValcReqXP( lvl ) 	-- Calculates required XP

ENT:SaveXP()		-- Saves level and XP
ENT:LoadXP()		-- Loads level and XP



The following hooks are available:

PlayerLevelUp 		-- Called when a player levels up, with ply and lvl as params



For any HUD modules, the default HUD is called BaseHUD.
You can either hide or override this to create your own HUD.