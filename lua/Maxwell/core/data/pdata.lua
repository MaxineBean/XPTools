local pm = FindMetaTable( 'Player' )

function pm:VSaveXP()

	self:SetPData( 'Maxwellxp', self.Maxwellxp )
	self:SetPData( 'Maxwelllvl', self.Maxwelllvl )

end

function pm:VLoadXP()

	self.Maxwellxp = self:GetPData( 'Maxwellxp', 0 )
	self.Maxwelllvl = self:GetPData( 'Maxwelllvl', 1 )

	self:NetStats() --Networking

end