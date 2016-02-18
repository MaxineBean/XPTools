NOTE: This is the GitHub for XP-Tools Leveling System, and as such, you can get the newest version of the addon here, but that also means that if you download from here, it may not be stable.

NOTE: This Addon is distrubited under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0). 
Learn more at http://creativecommons.org/licenses/by-nc-sa/4.0/

A free Garry's Mod leveling addon 

Version: 3.0.2

How I breakdown Version numbers: Example V.9.5.7:12

What this means is, Full Release 9, Beta Release 5, Alpha Release 7, Patch 12.
Full Release: Should not break your game, the full release is always the version on Steam.
Beta Release: May break your game, so make backups.
Alpha Release: This is almost gaurenteed to break at some point or another, make regular backups if running this version.
Patch Realease: This is just an emergency patch to fix a bug or a(n) small update.


Features: 

-Leveling system (Possible to change required XP formula, and other Formulas) 
-Perk system (Allows for 'perks' for leveling up) 
-Modules System 
-Easy to configure 
-Perks menu (Clientside) 
-Simple and Advanced logging system (Can be disabled) 
-ULX Integration (Admin commands) 
-XP rate per usergroup 


Planned: 

-Perks per usergroup 

(You can technically add usergroup-specific perks by adding a check in the perk function. However, this will not be properly networked so the user will still be told he got the perk, even when he didn't.)

--------ADDING MODULES--------- 

How adding modules works: 

Create a new folder, name it anything you want (for your own sake, something you'll recognise) Create a file module.lua, this is basically a shared.lua and will be received by both server and player 

In this module.lua, put the usual Includes (serverside) and AddCSLuaFile (Clientside) From there on, it's just like any other addon 

---------ADDING PERKS---------- 

Perks are added in Maxwell/perks and are SHARED 

Single files are seen as a perk Folders are seen as a category, all files inside belong to that category 

-------FUNCTIONS VARIABLES AND HOOKS-------- 

NOTE: Some of these may be removed or become obsolete do not rely on all of these being available.

The following vars are available: 

SERVER 

ENT.Maxwellxp -- Entity's XP (player) 
ENT.Maxwelllvl -- Entity's Level (player) 

CLIENT 

Maxwell.XP -- Current XP 
Maxwell.Level -- Current level
Maxwell.XPReq -- XP required for next level 

The following functions are available: 

CalcReqXP( lvl ) -- Calculates required XP 

ENT:SaveXP() -- Saves level and XP 
ENT:LoadXP() -- Loads level and XP 

The following hooks are available: 

PlayerLevelUp -- Called when a player levels up, with ply and lvl as params 

For any HUD modules, the default HUD is called BaseHUD. You can either hide or override this to create your own HUD. 

Some notes: 

If you have a suggestion or issue please contact me on Github: https://github.com/Lovemaxwell/XPTools 

I (author of this addon) am not liable for any damage, problems, etc this addon may or may not cause to you, your computer, your potato or anything else
