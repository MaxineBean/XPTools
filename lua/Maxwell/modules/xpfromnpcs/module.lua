if SERVER then
	if (Maxwell.XPFromNPCs) then
		hook.Add('OnNPCKilled', 'SendUserMessage', function(attacker, inflictor)
			if (inflictor:IsPlayer() && IsValid(inflictor)) then
				inflictor:GiveXP(Maxwell.XPAmountFromNPCs)
				inflictor:PrintMessage(HUD_PRINTTALK,"You got " .. Maxwell.XPAmountFromNPCs .. " XP for killing an NPC.")

			end
		end)
	end
end