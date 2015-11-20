local pm = FindMetaTable( 'Player' )

function pm:SaveXP()

	self:SetPData( 'Maxwellxp', self.Maxwellxp )
	self:SetPData( 'Maxwelllvl', self.Maxwelllvl )

end

function pm:LoadXP()

	self.Maxwellxp = self:GetPData( 'Maxwellxp', 0 )
	self.Maxwelllvl = self:GetPData( 'Maxwelllvl', 1 )

	self:NetStats() --Networking

end