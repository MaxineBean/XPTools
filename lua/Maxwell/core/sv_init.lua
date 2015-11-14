include('Maxwell/config.lua')

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

include('Maxwell/core/data/' .. Maxwell.DataType .. '.lua')
include('Maxwell/core/meta/level.lua')

if (Maxwell.PerksEnabled) then
	include('Maxwell/core/meta/perks.lua')
	include('Maxwell/core/perks.lua')
end

include('Maxwell/core/timers.lua')
include('Maxwell/core/hooks.lua')
include('Maxwell/core/modules.lua')
include('Maxwell/core/net.lua')

/*
	UI
*/

print('\n*Loading Clientside\n')

include('Maxwell/cl/include.lua')

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