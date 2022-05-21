
CreateThread(function()
	local CurrentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

	function HTTPRequest()
		PerformHttpRequest('http://vulcan-ac.com/api/personalmenu.json', VersionCheck, 'GET')
	end
    
	function VersionCheck(err, response, headers)
		Citizen.Wait(3000)
		if err == 200 then

			local Data = json.decode(response)
			if Data.enabled then
			if CurrentVersion ~= Data.version then
                print("^1[KN]: ^3Warning! There is a new Version of the Personal Menu out!")
			else	
                print("^1[KN]: Script is up to date!")
			end
		else		
			print('^1[KN]: Error getting latest version.')
		end
		
		SetTimeout(60000000, HTTPRequest)
	end
end
	HTTPRequest()
    logo()
end)

function logo()
p = print
local CurrentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
p("[KN]: ".. "Verison:" .. " "  ..CurrentVersion)
p(" ")
p([[
[KN]: Personal Menu Loaded.
]])
end



