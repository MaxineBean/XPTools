/*
	LEVEL META
*/

local pm = FindMetaTable( 'Player' )

------------------------------
---------XP functions---------
------------------------------

function pm:GiveXP( amount )

	if amount <= 0 then return end --No point

	//Give XP

	local newxp = self.Maxwellxp + amount
	local xpreq = CalcXPReq(self.Maxwelllvl)

	--Network it to the player
	self:NetXPReceived( amount )

	if (newxp < xpreq) then

		self.Maxwellxp = newxp

	else

		self:LevelUp()
		self:GiveXP(newxp - xpreq)

	end

	Log('Gave ' .. self:Nick() .. ' (' .. self:SteamID() .. ') ' .. amount .. ' xp')

end

function pm:SetXP( amount )

	if amount < 0 then return end --No point

	self.Maxwellxp = amount

	--Network it
	self:NetStats()

	Log('Set xp of ' .. self:Nick() .. '(' .. self:SteamID() .. ')' .. ' to ' .. amount)

end
if (Maxwell.GroupAutoXP) then

	function pm:GetGroupMuptipler()

		for i=1, #Maxwell.GroupXPRates do
			if self:IsUserGroup(Maxwell.GroupXPRates[i][1]) then
				return Maxwell.GroupXPRates[i][2]
			end
		end

		return 1

	end

	function pm:MaxGetPlayerGroup()
	
		for i=1, #Maxwell.GroupXPRates do
			if self:IsUserGroup(Maxwell.GroupXPRates[i][1]) then
				return Maxwell.GroupXPRates[i][1]
			end
		end

		return 1

	end	

end

if (Maxwell.CustomGroupXP) then
	function pm:GetGroupAmount()
	
		for i=1, #Maxwell.GroupXPAmount do
			if self:IsUserGroup(Maxwell.GroupXPAmount[i][1]) then
				return Maxwell.GroupXPAmount[i][2]
			end
		end
	
		return 1
	
	end
end

function pm:PlayerLevel()
	local Level = tostring(self.Maxwelllvl)
	if Level == nil then return end
	return Level
end

-------------------------------
---------LVL functions---------
-------------------------------

function pm:GiveLevel( amount ) 

	if amount < 0 then return end --No point
	
	for i=1,amount do	
		self:LevelUp()
	end

	Log('Gave ' .. self:Nick() .. ' (' .. self:SteamID() .. ') ' .. amount .. ' level(s)')

end

function pm:SetLevel( amount ) 

	if amount < 1 then return end --No point

	if (amount <= tonumber(self.Maxwelllvl)) then
		
		self.Maxwelllvl = amount
		self:NetStats()

	else

		local diff = amount - self.Maxwelllvl

		for i=1,diff do
			self:LevelUp()
		end

	end

end

------------------------------
----------RESET USER----------
------------------------------

function pm:ResetLvl()

	self.Maxwelllvl = 1
	self.Maxwellxp = 0

	self:SaveXP()

	--Network it to the player
	self:NetStats()

end

//

function pm:LevelUp()

	self.Maxwelllvl = self.Maxwelllvl + 1
	self.Maxwellxp = 0

	self:FetchPerks()

	--Network it to the player
	self:NetStats()
	self:NetLevelUp( self.Maxwelllvl )

	Log(self:Nick() .. '(' .. self:SteamID() .. ')' .. ' leveled up to lvl ' .. self.Maxwelllvl)

	hook.Run("PlayerLevelUp", self, self.Maxwelllvl)

end
