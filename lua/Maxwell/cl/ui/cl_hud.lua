
	CreateConVar( 'Maxwell_hudtype', 0, FCVAR_NONE, 'Base HUD variations' ) 

	local ScreenW = ScrW()
	local ScreenH = ScrH()

	local function BaseHUDOne()

		draw.RoundedBox( 12, 90, 8, 200, 24, Color(0, 0, 0, 255) )
		draw.RoundedBox( 12, ScreenW - 290, 8, 200, 24, Color(0, 0, 0, 255) )

		draw.RoundedBox( 10, ScreenW / 2 - 100, 2, 200, 20, Color(0, 0, 0, 255) )  --Background 
		draw.RoundedBox( 10, ScreenW / 2 - 60, 20, 120, 30, Color(0, 0, 0, 255) )  --Background 2

		draw.RoundedBox( 10, ScreenW / 2 - 98, 4, 196, 16, Color(0, 0, 0, 255) )  --Background 3
		draw.RoundedBox( 10, ScreenW / 2 - 58, 22, 116, 26, Color(0, 120, 0, 255) )  --Background 4

		draw.RoundedBox( 0, 100, 12, ScreenW - 200, 16, Color(0, 80, 0, 255) )  --Background 5
		draw.RoundedBox( 0, 102, 14, ScreenW - 204, 12, Color(140, 150, 150, 255) ) --Background 6

		// XP bar

		draw.RoundedBox( 0, 102, 14, math.Clamp((Maxwell.XP / Maxwell.XPReq * (ScreenW - 204)), 0, ScreenW - 204), 6, Color(6, 116, 255, 200) ) --Top, darker
		draw.RoundedBox( 0, 102, 20, math.Clamp((Maxwell.XP / Maxwell.XPReq * (ScreenW - 204)), 0, ScreenW - 204), 6, Color(6, 116, 255, 200) ) --Bot, lighter

		// Level text

		draw.DrawText('Lv. ' .. Maxwell.Level, 'MaxwellFont', ScreenW / 2, 28, Color(255, 255, 255, 160), TEXT_ALIGN_CENTER)

	end

	local function BaseHUDTwo()

		draw.RoundedBox( 0, 400, ScreenH-18, ScreenW - 800, 12, Color(0, 0, 0, 255) )  --Background 5
		draw.RoundedBox( 0, 402, ScreenH-16, ScreenW - 804, 8, Color(0, 0, 0, 255) ) --Background 6

		// XP bar

		draw.RoundedBox( 0, 402, ScreenH - 16, math.Clamp((Maxwell.XP / Maxwell.XPReq * (ScreenW - 800)), 0, ScreenW - 804), 4, Color(6, 116, 255, 200) ) --Top, darker
		draw.RoundedBox( 0, 402, ScreenH - 12, math.Clamp((Maxwell.XP / Maxwell.XPReq * (ScreenW - 804)), 0, ScreenW - 804), 4, Color(6, 116, 255, 200) ) --Bot, lighter

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
	