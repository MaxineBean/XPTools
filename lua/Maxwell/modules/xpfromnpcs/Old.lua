--[[if SERVER then

	CreateConVar( 'Maxwell_npckillxp', 5, FCVAR_NOTIFY, 'How much XP you get for killing an NPC' ) 

	hook.Add('OnNPCKilled', 'XPFromNPCKill', function(attacker, inflictor)

		if (inflictor:IsPlayer() && IsValid(inflictor)) then
			
			inflictor:GiveXP( GetConVarNumber( 'Maxwell_npckillxp' ) )

		end

	end)

end