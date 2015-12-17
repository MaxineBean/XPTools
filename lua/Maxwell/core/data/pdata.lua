
function GameModeLoad()	
		MySQLite.query([[CREATE TABLE IF NOT EXISTS xp_tools_addon(
				uid VARCHAR(32) NOT NULL,
				level int NOT NULL,
				xp int NOT NULL,
				UNIQUE(uid) 
			);
		]])
end

hook.Add("PostGamemodeLoaded", "Maxwell:LevelsSystem", GameModeLoad)

function RetrievePlayerLevelXP(ply, callback)
	MySQLite.query("SELECT level,xp FROM xp_tools_addon WHERE uid = ".. MySQLite.SQLStr(ply:UniqueID())..";", function(r)callback(r)end)
end

function CreatePlayerLevelData(ply)
	MySQLite.query([[REPLACE INTO xp_tools_addon VALUES(]]..MySQLite.SQLStr(ply:UniqueID()) .. [[,'1','0')]])
end

function RetrievePlayerLevelData(ply)
	RetrievePlayerLevelXP(ply,function(data)
		if not IsValid(ply) then return end
		local info = data and data[1] or {}
		info.xp = (info.xp or 0)
		info.level = (info.level or 1)
		ply:SetVar('xp', tonumber(info.xp))
		ply:SetVar('level', tonumber(info.level))
		if not data then CreatePlayerLevelData(ply) end
	end)
end

function StoreXPData(ply, level, xp)
	xp = math.max(xp,0)
	MySQLite.query("UPDATE xp_tools_addon SET level = " ..MySQLite.SQLStr(level) ..", xp = "..MySQLite.SQLStr(xp).." WHERE uid = "..MySQLite.SQLStr(ply:UniqueID()))
end

function PlayerInitialSpawn(ply)
	RetrievePlayerLevelData(ply)
end

hook.Add('PlayerInitialSpawn', 'Maxwell:LevelsSystem',PlayerInitialSpawn)

local pm = FindMetaTable( 'Player' )

function pm:SaveXP()

	self:SetVar( 'xp', self.Maxwellxp )
	self:SetVar( 'level', self.Maxwelllvl )

end

function pm:LoadXP()

	self.Maxwellxp = self:GetVar( 'Maxwellxp', 0 )
	self.Maxwelllvl = self:GetVar( 'Maxwelllvl', 1 )

	self:NetStats() --Networking

end

function AllPlayerLevels()

	for k, v in pairs(player.GetAll()) do
	
		local k = v:GetVar('level')
	
	end
	
	return k
	
end