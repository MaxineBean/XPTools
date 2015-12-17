
	CreateConVar( 'Maxwell_hudtype', 0, FCVAR_ARCHIVE, 'Base HUD variations' ) 

	local ScreenW = ScrW()
	local ScreenH = ScrH()
	local PlayerLevel = LocalPlayer():GetVar("level")

local function DrawDisplay()
local shouldDraw, players = hook.Call("HUDShouldDraw", GAMEMODE, "DarkRP_EntityDisplay")
	if shouldDraw == false then return end
	local shootPos = LocalPlayer():GetShootPos()
	local aimVec = LocalPlayer():GetAimVector()
	for k, ply in pairs(players or player.GetAll()) do
		if not ply:Alive() then continue end
		local hisPos = ply:GetShootPos()
		if GAMEMODE.Config.globalshow and ply ~= localplayer then
				local pos = ply:EyePos()
				pos.z = pos.z + 10 -- The position we want is a bit above the position of the eyes
				pos = pos:ToScreen()
				pos.y = pos.y-20
				draw.DrawText('Level: '..(ply:GetVar('level')), "DarkRPHUD2", pos.x+1, pos.y -56, Color(0,0,0,255), 1)
				draw.DrawText('Level: '..(ply:GetVar('level')), "DarkRPHUD2", pos.x, pos.y -55, Color(255,255,255,200), 1)
		elseif not GAMEMODE.Config.globalshow and hisPos:Distance(shootPos) < 250 then
			local pos = hisPos - shootPos
			local unitPos = pos:GetNormalized()

				local trace = util.QuickTrace(shootPos, pos, localplayer)
				if trace.Hit and trace.Entity ~= ply then return end
					local pos = ply:EyePos()
					pos.z = pos.z + 10 -- The position we want is a bit above the position of the eyes
					pos = pos:ToScreen()
					pos.y = pos.y-20
					draw.DrawText('Level: '..(ply:GetVar('level')), "DarkRPHUD2", pos.x, pos.y -58, Color(0,0,0,255), 1)
					draw.DrawText('Level: '..(ply:GetVar('level')), "DarkRPHUD2", pos.x+1, pos.y -57, Color(255,255,255,200), 1)
		end
	end
 
	local tr = LocalPlayer():GetEyeTrace()

end
	
	local function BaseHUDOne()

		draw.RoundedBox( 10, 90, 8, ScreenW - 180, 24, Color(0, 0, 0, 255) )
		
		draw.RoundedBox( 10, ScreenW / 2 - 100, 2, 200, 20, Color(0, 0, 0, 255) )  --Background 
		draw.RoundedBox( 10, ScreenW / 2 - 60, 20, 120, 30, Color(0, 0, 0, 255) )  --Background 2 

		draw.RoundedBox( 10, ScreenW / 2 - 98, 4, 196, 16, Color(0, 0, 0, 255) )  --Background 3
		draw.RoundedBox( 10, ScreenW / 2 - 58, 22, 116, 26, Color(0, 0, 0, 255) )  --Background 4

		draw.RoundedBox( 0, 100, 12, ScreenW - 200, 16, Color(0, 0, 0, 255) )  --Background 5
		draw.RoundedBox( 0, 102, 14, ScreenW - 204, 12, Color(140, 150, 150, 255) ) --Background 6

		// XP bar

		draw.RoundedBox( 0, 102, 14, math.Clamp(( Maxwell.XP / Maxwell.XPReq * (ScreenW - 204)), 0, ScreenW - 204), 12, Color(6, 116, 255, 200) )
		
		// Level text

		draw.DrawText('Level ' .. PlayerLevel, 'MaxwellFont', ScreenW / 2, 28, Color(255, 255, 255, 160), TEXT_ALIGN_CENTER)
		
		//XP Percent Text
		
		local percent = math.Round( ( (Maxwell.XP or 0)/(Maxwell.XPReq or 1) ) * 100, 2)
		
		local XPPercent = math.Clamp(percent, 0, 100)
		
		draw.DrawText(XPPercent..'%', 'MaxwellFont', ScreenW / 2, 10, Color(255, 255, 255, 160), TEXT_ALIGN_CENTER)

		//Other Players Level's
		
		DrawDisplay()
		
	end

	local function BaseHUDTwo()

		draw.RoundedBox( 0, 400, ScreenH-18, ScreenW - 800, 12, Color(0, 0, 0, 255) )  --Background 5
		draw.RoundedBox( 0, 402, ScreenH-16, ScreenW - 804, 8, Color(0, 0, 0, 255) ) --Background 6

		// XP bar

		draw.RoundedBox( 0, 402, ScreenH - 16, math.Clamp((Maxwell.XP / Maxwell.XPReq * (ScreenW - 800)), 0, ScreenW - 804), 4, Color(6, 116, 255, 200) )
		// Level text

		draw.DrawText('Lv. ' .. Maxwell.Level, 'MaxwellFont', ScreenW / 2, ScreenH - 36, Color(255, 255, 255, 160), TEXT_ALIGN_CENTER)

	end
	


	hook.Add("HUDPaint", "BaseHUD", function()

		if (GetConVarNumber('Maxwell_hudtype') == 0) then
			BaseHUDOne()
		elseif (GetConVarNumber('Maxwell_hudtype') == 1) then
			BaseHUDTwo()
		end

	end)
	