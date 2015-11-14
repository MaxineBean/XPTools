/*
	LEVEL META
*/

local pm = FindMetaTable( 'Player' )

------------------------------
---------XP functions---------
------------------------------

function pm:GiveXP( amount )

	if amount <= 0 then return end --No point

	if Maxwell.GroupAllXP then
		amount = math.Round(amount * self:GetXPRate(), 1)
	end

	//Give XP

	local newxp = self.xp + amount
	local xpreq = CalcXPReq(self.Maxwelllvl)

	--Network it to the player
	self:NetXPReceived( amount )

	if (newxp < xpreq) then

		self.xp = newxp

	else

		self:LevelUp()
		self:GiveXP(newxp - xpreq)

	end

	Log('Gave ' .. self:Nick() .. ' (' .. self:SteamID() .. ') ' .. amount .. ' xp')

end

function pm:SetXP( amount )

	if amount < 0 then return end --No point

	self.xp = amount

	--Network it
	self:NetStats()

	Log('Set xp of ' .. self:Nick() .. '(' .. self:SteamID() .. ')' .. ' to ' .. amount)

end

function pm:GetXPRate()

	for i=1, #Maxwell.GroupXPRates do
		if self:IsUserGroup(Maxwell.GroupXPRates[i][1]) then
			return Maxwell.GroupXPRates[i][2]
		end
	end

	return 1

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

function pm:Reset()

	self.Maxwelllvl = 1
	self.xp = 0

	self:SaveXP()

	--Network it to the player
	self:NetStats()

end

//

function pm:LevelUp()

	self.Maxwelllvl = self.Maxwelllvl + 1
	self.xp = 0

	self:FetchPerks()

	--Network it to the player
	self:NetStats()
	self:NetLevelUp( self.Maxwelllvl )

	Log(self:Nick() .. '(' .. self:SteamID() .. ')' .. ' leveled up to lvl ' .. self.Maxwelllvl)

	hook.Run("PlayerLevelUp", self, self.Maxwelllvl)

end