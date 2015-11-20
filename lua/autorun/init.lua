	// Function to calculate required XP

function CalcXPReq(lvl)

	return math.ceil(((lvl * 72 + ((lvl+3) * 2)^2)*1.5)

end

if SERVER then

	include('maxwell/sv/core/sv_init.lua')

end

if CLIENT then
	
	include('maxwell/cl/cl_init.lua')

end