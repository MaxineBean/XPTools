if (Maxwell.AutoXP) then

	// Auto-XP timer
	
	timer.Create( 'AutoXPTimer', Maxwell.AutoXPInterval, 0, function()
		
		for k,v in pairs(player.GetAll()) do

			if (Maxwell.GroupXPAmount) then

				v:GiveXP(GetGroupAmount)

			else

				if (Maxwell.GroupAutoXP and not Maxwell.GroupAllXP) then

					v:GiveXP(math.Round(Maxwell.AutoXPAmount * v:GetGroupMuptipler(), 1))

				else

					v:GiveXP(Maxwell.AutoXPAmount)

				end	
			end
		end
	end)		
end
