if CLIENT then

	hook.Add('ClPlayerLevelUp', 'NotifyPerkReceived', function( lvl )

		for i=1,#Maxwell.Perks do
			
			if (Maxwell.Perks[i]['lvl'] == lvl) then
				chat.AddText( Color(255, 255, 255, 255), 'Perk unlocked: ', Color(255, 165, 0, 255), Maxwell.Perks[i]['name'] )
			end

		end

	end)

end