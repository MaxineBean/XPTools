local pm = FindMetaTable( 'Player' )

function pm:FetchPerks()

	if (self.Maxwellperks == nil) then self.vlomsperks = {} end --Safety

	for i=1,#Maxwell.Perks do
		
		if (!table.HasValue(self.Maxwellperks, i) && (tonumber(Maxwell.Perks[i]['lvl']) <= tonumber(self.Maxwelllvl))) then
			self.Maxwellperks[#self.Maxwellperks+1] = i
		end

	end

end