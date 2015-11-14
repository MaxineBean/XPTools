if SERVER then
hook.Add('OnNPCKilled', 'XPFromNPCKill', function(attacker, inflictor)

	if (inflictor:IsPlayer() && IsValid(inflictor)) then
	
		inflictor:GiveXP(Maxwell.XPAmountFromNPCs)
		SendUserMessage( "NPCDeath", 'attacker', 'You got '.. Maxwell.XPAmountFromNPCs ..'XP for killing an NPC.')
	else 
	
	end
	
end