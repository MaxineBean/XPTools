function RegisterPerk( pname, pcat, plvl, pdesc, pfunc )

	Maxwell.Perks[#Maxwell.Perks+1] = {}

	Maxwell.Perks[#Maxwell.Perks]['name'] = pname
	Maxwell.Perks[#Maxwell.Perks]['lvl'] = plvl
	Maxwell.Perks[#Maxwell.Perks]['desc'] = pdesc

end