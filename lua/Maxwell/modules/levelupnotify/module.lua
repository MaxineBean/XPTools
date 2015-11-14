if SERVER then

	hook.Add("PlayerLevelUp", "NotifyOthersLevelUp", function(ply, lvl)

		for k,v in pairs(player.GetAll()) do

			if (v == ply) then return end --Not to self, we have something fancier for that

			v:ChatPrint(ply:Nick() .. ' has reached level ' .. lvl .. '!')

		end

	end)

end

if CLIENT then
	
	hook.Add('ClPlayerLevelUp', 'NotifySelfLevelUp', function( lvl )

		chat.AddText( Color(255, 165, 0, 255), 'Congratulations! ', Color(255, 255, 255, 255), 'You reached level ', Color(255, 165, 0, 255), tostring(lvl), Color(255, 255, 255, 255), '!' )

	end)

end