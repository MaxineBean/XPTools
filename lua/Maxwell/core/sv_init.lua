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

include('maxwell/core/data/' .. Maxwell.DataType .. '.lua')
include('maxwell/core/meta/level.lua')

if (Maxwell.PerksEnabled) then
	include('maxwell/core/meta/perks.lua')
	include('maxwell/core/perks.lua')
end

include('maxwell/core/timers.lua')
include('maxwell/core/hooks.lua')
include('maxwell/core/modules.lua')
include('maxwell/core/net.lua')

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