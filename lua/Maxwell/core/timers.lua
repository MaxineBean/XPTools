if (Maxwell.AutoXP) then

	// Auto-XP timer
	
	timer.Create( 'AutoXPTimer', Maxwell.AutoXPInterval, 0, function()
		
		for k,v in pairs(player.GetAll()) do
		
			local PLevel = tonumber(v:PlayerLevel())
			local PLevel2 = math.floor(PLevel / 10)
			
			local PlayerGroup = v:MaxwellGetPlayerGroup()
			
			local GroupAmount = v:GetGroupAmount()
			
			local GroupMultipler = v:GetGroupMuptipler()
			
			if (Maxwell.IncreasedXPHighLevel) and not (Maxwell.GroupAutoXP) and not (Maxwell.CustomGroupXP) then
				
				v:GiveXP(Maxwell.AutoXPAmount + (PLevel2 * 10))
				
			elseif (Maxwell.IncreasedXPHighLevel) and (Maxwell.GroupAutoXP) and not (Maxwell.CustomGroupXP) then
				
				v:GiveXP(math.Round(Maxwell.AutoXPAmount * GroupMultipler + (PLevel2 * 10) , 1))
			
			elseif (Maxwell.IncreasedXPHighLevel) and (Maxwell.CustomGroupXP) and not (Maxwell.GroupAutoXP) then
		
				v:GiveXP(GroupAmount + (PLevel2 * 10))
		
			elseif (Maxwell.IncreasedXPHighLevel) and (Maxwell.CustomGroupXP) and (Maxwell.GroupAutoXP) and (PlayerGroup) then
			
				v:GiveXP(math.Round(GroupAmount * GroupMultipler + (PLevel2 * 10) , 1))
			
			elseif (Maxwell.IncreasedXPHighLevel) and (Maxwell.CustomGroupXP) and (Maxwell.GroupAutoXP) and not (PlayerGroup) then
			
				v:GiveXP(math.Round(Maxwell.AutoXPAmount * GroupMultipler + (PLevel2 * 10) , 1))
			
			else 
			
				v:GiveXP(Maxwell.AutoXPAmount)
				
			end
			
		end
		
	end)
	
end