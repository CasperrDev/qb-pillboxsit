CreateThread(function()
	if Config.MLO == "gabz" then
		for k, v in pairs(Config.GabzChairs) do
			exports['qb-target']:AddBoxZone("UniChair"..k, v.location, v.width, v.depth, { name="UniChair"..k, heading = v.heading, debugPoly=false, minZ = v.minZ, maxZ = v.maxZ, }, 
				{ options = { { event = "qb-pillboxsit:Chair", icon = "fas fa-chair", label = "Sit Down", loc = v.location, head = v.heading, seat = v.seat }, },
				  distance = v.distance
			})
		end
	end
end)

RegisterNetEvent('qb-pillboxsit:Chair')
AddEventHandler('qb-pillboxsit:Chair', function(data)
	local ped = PlayerPedId()
	TaskStartScenarioAtPosition(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", data.loc.x, data.loc.y, data.loc.z-0.5, data.head, 0, 1, true)
	vseat = data.seat
end)

CreateThread(function()
	while true do
		local ped = PlayerPedId()
		if IsPedUsingScenario(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER") then sitting = true else sitting = false end
		if sitting then
			if IsControlJustReleased(0, 202) then
				ClearPedTasks(ped)
				
				if Config.MLO == "gabz" then
					if vseat == 1 then SetEntityCoords(ped, vector3(126.17, -1282.86, 29.27-0.5)) SetEntityHeading(ped, 300.0) end
					if vseat == 2 then SetEntityCoords(ped, vector3(126.99, -1284.28, 29.27-0.5)) SetEntityHeading(ped, 300.0) end
					if vseat == 3 then SetEntityCoords(ped, vector3(127.69, -1285.48, 29.27-0.5)) SetEntityHeading(ped, 300.0) end
					if vseat == 4 then SetEntityCoords(ped, vector3(128.34, -1286.61, 29.27-0.5)) SetEntityHeading(ped, 300.0) end
					if vseat == 5 then SetEntityCoords(ped, vector3(129.01, -1287.77, 29.27-0.5)) SetEntityHeading(ped, 300.0) end
					
					if vseat == 6 then SetEntityCoords(ped, vector3(94.65, -1292.76, 29.26-0.5)) SetEntityHeading(ped, 300.0) end
					
				end
				vseat = 0
			end
		end
		Wait(50)
	end
end)

Config.GabzChairs = {
	--Front Lobby
	{ location = vector3(298.91, -588.69, 43.28), heading = 248.75, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(298.13, -590.75, 43.28), heading = 248.75, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(301.4, -590.3, 43.28), heading = 70.55, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(300.96, -591.51, 43.28), heading = 70.55, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(299.57, -593.53, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(300.54, -593.87, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(302.55, -594.61, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(303.47, -594.95, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(312.48, -585.85, 43.28), heading = 160.78, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(314.44, -586.58, 43.28), heading = 160.78, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(322.39, -601.79, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(321.18, -601.4, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(320.2, -600.97, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(318.04, -600.19, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(317.07, -599.86, 43.28), heading = 335.91, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(315.02, -599.01, 43.28), heading = 309.72, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(317.57, -595.3, 43.28), heading = 166.45, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(318.48, -595.63, 43.28), heading = 161.28, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(319.45, -596.0, 43.28), heading = 161.28, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(319.99, -597.21, 43.28), heading = 71.05, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },
	{ location = vector3(319.66, -598.09, 43.28), heading = 71.05, width = 0.5, depth = 0.7, minZ=42.28, maxZ=43.28, distance = 1.7 },

	--example - { location = vector3(1, 2, 3), heading = 300.0, width = 0.5, depth = 0.7, minZ=28.29, maxZ=29.49, distance = 1.7 },
	
}