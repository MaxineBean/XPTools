include('maxwell/config.lua')

function Vinclude(file)

	--Fancy way of including so it prints to console
	print(file)
	include(file)

end

function Log(msg)

	if !(Maxwell.Logging) then return end

	print('MAXWELL LOG: ' .. msg)

end

print('\n\n----------------------------------------')
print('------- XP-Tools v' .. Maxwell.Version .. ' by Maxwell------')
print('----------------------------------------\n')

/*
	CORE
*/

print('*Loading Core\n')

include('maxwell/sv/core/data/' .. Maxwell.DataType .. '.lua')
include('maxwell/sv/core/meta/level.lua')

if (Maxwell.PerksEnabled) then
	include('maxwell/sv/core/meta/perks.lua')
	include('maxwell/core/perks.lua')
end

include('maxwell/sv/core/timers.lua')
include('maxwell/sv/core/hooks.lua')
include('maxwell/sv/core/modules.lua')
include('maxwell/sv/core/net.lua')

/*
	UI
*/

print('\n*Loading Clientside\n')

include('maxwell/cl/include.lua')

/*
	PERKS
*/

print('\n*Loading Perks\n')

if (Maxwell.PerksEnabled) then
	LoadPerks()
else
	print('Perks disabled')
end

/*
	MODULES
*/

print('\n*Loading Modules\n')

LoadModules()

print('\n----------------------------------------')
print('----------------------------------------\n')