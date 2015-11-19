if (Maxwell.AutoXP) then

	// Auto-XP timer
	
	timer.Create( 'AutoXPTimer', Maxwell.AutoXPInterval, 0, function()
		
		for k,v in pairs(player.GetAll()) do
		
			if (Maxwell.IncreasedXPHighLevel) and not (Maxwell.GroupAutoXP) and not (Maxwell.CustomGroupXP) then
			
				if v:PlayerLevel() < '10' then
					
					v:GiveXP(Maxwell.AutoXPAmount)
				
				elseif v:PlayerLevel() >= '10' and v:PlayerLevel() < '20' then
				
 					v:GiveXP(Maxwell.AutoXPAmount+10)
			
				elseif v:PlayerLevel() >= '20' and v:PlayerLevel() < '30' then
			
					v:GiveXP(Maxwell.AutoXPAmount+20)
				
				elseif v:PlayerLevel() >= '30' and v:PlayerLevel() < '40' then
			
					v:GiveXP(Maxwell.AutoXPAmount+30)
					
				elseif v:PlayerLevel() >= '40' and v:PlayerLevel() < '50' then
					
					v:GiveXP(Maxwell.AutoXPAmount+40)
						
				elseif v:PlayerLevel() >= '50' and v:PlayerLevel() < '60' then
					
					v:GiveXP(Maxwell.AutoXPAmount+50)
						
				elseif v:PlayerLevel() >= '60' and v:PlayerLevel() < '70' then
	
					v:GiveXP(Maxwell.AutoXPAmount+60)
					
				elseif v:PlayerLevel() >= '70' and v:PlayerLevel() < '80' then
					
					v:GiveXP(Maxwell.AutoXPAmount+70)
					
				elseif v:PlayerLevel() >= '80' and v:PlayerLevel() < '90' then
					
					v:GiveXP(Maxwell.AutoXPAmount+80)
						
				elseif v:PlayerLevel() >= '90' and v:PlayerLevel() < '100' then
					
					v:GiveXP(Maxwell.AutoXPAmount+90)
						
				elseif v:PlayerLevel() >= '100' and v:PlayerLevel() < '110' then
					
					v:GiveXP(Maxwell.AutoXPAmount+100)
						
				elseif v:PlayerLevel() >= '110' and  v:PlayerLevel() < '120' then
					
					v:GiveXP(Maxwell.AutoXPAmount+110)
						
				elseif v:PlayerLevel() >= '120' and v:PlayerLevel() < '130' then
					
					v:GiveXP(Maxwell.AutoXPAmount+120)
						
				elseif v:PlayerLevel() >= '130' and v:PlayerLevel() < '140' then
					
					v:GiveXP(Maxwell.AutoXPAmount+130)
						
				elseif v:PlayerLevel() >= '140' and v:PlayerLevel() < '150' then
					
					v:GiveXP(Maxwell.AutoXPAmount+140)
						
				elseif v:PlayerLevel() >= '150' then
					
					v:GiveXP(Maxwell.AutoXPAmount+150)
					
				end
				
			elseif (Maxwell.IncreasedXPHighLevel) and (Maxwell.GroupAutoXP) and not (Maxwell.CustomGroupXP) then
				
				if v:PlayerLevel() < '10' then
					
					v:GiveXP(Maxwell.AutoXPAmount)
				
				elseif v:PlayerLevel() >= '10' and v:PlayerLevel() < '20' then
				
 					v:GiveXP(math.Round(Maxwell.AutoXPAmount +10* v:GetGroupMuptipler(), 1))
			
				elseif v:PlayerLevel() >= '20' and v:PlayerLevel() < '30' then
			
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+20 * v:GetGroupMuptipler(), 1))
					
				elseif v:PlayerLevel() >= '30' and v:PlayerLevel() < '40' then
			
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+30* v:GetGroupMuptipler(), 1))
					
				elseif v:PlayerLevel() >= '40' and v:PlayerLevel() < '50' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+40* v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '50' and v:PlayerLevel() < '60' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+50 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '60' and v:PlayerLevel() < '70' then
	
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+60 * v:GetGroupMuptipler(), 1))
					
				elseif v:PlayerLevel() >= '70' and v:PlayerLevel() < '80' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+70 * v:GetGroupMuptipler(), 1))
					
				elseif v:PlayerLevel() >= '80' and v:PlayerLevel() < '90' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+80 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '90' and v:PlayerLevel() < '100' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount +90* v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '100' and v:PlayerLevel() < '110' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+100 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '110' and  v:PlayerLevel() < '120' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount +110* v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '120' and v:PlayerLevel() < '130' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+120* v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '130' and v:PlayerLevel() < '140' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount +130* v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '140' and v:PlayerLevel() < '150' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+140 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '150' then
					
					v:GiveXP(math.Round(Maxwell.AutoXPAmount+150 * v:GetGroupMuptipler(), 1))
					
				end
			
			elseif (Maxwell.IncreasedXPHighLevel) and (Maxwell.CustomGroupXP) and not (Maxwell.GroupAutoXP) then
			
				if v:PlayerLevel() < '10' then
					
					v:GiveXP(Maxwell.AutoXPAmount)
				
				elseif v:PlayerLevel() >= '10' and v:PlayerLevel() < '20' then
				
 					v:GiveXP(v:GetGroupAmount()+10)
			
				elseif v:PlayerLevel() >= '20' and v:PlayerLevel() < '30' then
			
					v:GiveXP(v:GetGroupAmount()+20)
				
				elseif v:PlayerLevel() >= '30' and v:PlayerLevel() < '40' then
			
					v:GiveXP(v:GetGroupAmount()+30)
					
				elseif v:PlayerLevel() >= '40' and v:PlayerLevel() < '50' then
					
					v:GiveXP(v:GetGroupAmount()+40)
						
				elseif v:PlayerLevel() >= '50' and v:PlayerLevel() < '60' then
					
					v:GiveXP(v:GetGroupAmount()+50)
						
				elseif v:PlayerLevel() >= '60' and v:PlayerLevel() < '70' then
	
					v:GiveXP(v:GetGroupAmount()+60)
					
				elseif v:PlayerLevel() >= '70' and v:PlayerLevel() < '80' then
					
					v:GiveXP(v:GetGroupAmount()+70)
					
				elseif v:PlayerLevel() >= '80' and v:PlayerLevel() < '90' then
					
					v:GiveXP(v:GetGroupAmount()+80)
						
				elseif v:PlayerLevel() >= '90' and v:PlayerLevel() < '100' then
					
					v:GiveXP(v:GetGroupAmount()+90)
						
				elseif v:PlayerLevel() >= '100' and v:PlayerLevel() < '110' then
					
					v:GiveXP(v:GetGroupAmount()+100)
						
				elseif v:PlayerLevel() >= '110' and  v:PlayerLevel() < '120' then
					
					v:GiveXP(v:GetGroupAmount()+110)
						
				elseif v:PlayerLevel() >= '120' and v:PlayerLevel() < '130' then
					
					v:GiveXP(v:GetGroupAmount()+120)
						
				elseif v:PlayerLevel() >= '130' and v:PlayerLevel() < '140' then
					
					v:GiveXP(v:GetGroupAmount()+130)
						
				elseif v:PlayerLevel() >= '140' and v:PlayerLevel() < '150' then
					
					v:GiveXP(v:GetGroupAmount()+140)
						
				elseif v:PlayerLevel() >= '150' then
					
					v:GiveXP(v:GetGroupAmount()+150)
					
				end
			
			elseif (Maxwell.IncreasedXPHighLevel) and (Maxwell.CustomGroupXP) and (Maxwell.GroupAutoXP) then
			
				if v:PlayerLevel() < '10' then
					
					v:GiveXP(Maxwell.AutoXPAmount)
				
				elseif v:PlayerLevel() >= '10' and v:PlayerLevel() < '20' then
				
					v:GiveXP(math.Round(v:GetGroupAmount()+10 * v:GetGroupMuptipler(), 1))
			
				elseif v:PlayerLevel() >= '20' and v:PlayerLevel() < '30' then
			
					v:GiveXP(math.Round(v:GetGroupAmount() +20 * v:GetGroupMuptipler(), 1))
				
				elseif v:PlayerLevel() >= '30' and v:PlayerLevel() < '40' then
			
					v:GiveXP(math.Round(v:GetGroupAmount()+30 * v:GetGroupMuptipler(), 1))
					
				elseif v:PlayerLevel() >= '40' and v:PlayerLevel() < '50' then
						
					v:GiveXP(math.Round(v:GetGroupAmount()+40* v:GetGroupMuptipler(), 1))
							
				elseif v:PlayerLevel() >= '50' and v:PlayerLevel() < '60' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+50 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '60' and v:PlayerLevel() < '70' then
	
					v:GiveXP(math.Round(v:GetGroupAmount()+60 * v:GetGroupMuptipler(), 1))
					
				elseif v:PlayerLevel() >= '70' and v:PlayerLevel() < '80' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+70 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '80' and v:PlayerLevel() < '90' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+80 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '90' and v:PlayerLevel() < '100' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+90 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '100' and v:PlayerLevel() < '110' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+100* v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '110' and  v:PlayerLevel() < '120' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+110 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '120' and v:PlayerLevel() < '130' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+120 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '130' and v:PlayerLevel() < '140' then
						
					v:GiveXP(math.Round(v:GetGroupAmount()+130 * v:GetGroupMuptipler(), 1))
					
				elseif v:PlayerLevel() >= '140' and v:PlayerLevel() < '150' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+140 * v:GetGroupMuptipler(), 1))
						
				elseif v:PlayerLevel() >= '150' then
					
					v:GiveXP(math.Round(v:GetGroupAmount()+150 * v:GetGroupMuptipler(), 1))
					
					
					
				end
				
			else 
			
				v:GiveXP(Maxwell.AutoXPAmount)
				
			end
			
		end
		
	end)
	
end		
