Maxwell.ResistancePerkOwners = {}

hook.Add('EntityTakeDamage', 'DamageResistancePerk', function(target, dmginfo)

	if (table.HasValue(Maxwell.ResistancePerkOwners, target)) then
		
		dmginfo:SetDamage( math.ceil( dmginfo:GetDamage() * 0.75 ) )

	end

end)

RegisterPerk( true, 'Resistance', 30, 'You take 25% less damage', function( ply )

	if table.HasValue(Maxwell.ResistancePerkOwners, ply) then return end --Don't add if already in the table
	Maxwell.ResistancePerkOwners[#Maxwell.ResistancePerkOwners+1] = ply

end)