ESX = exports["es_extended"]:getSharedObject()

local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	if Config.UsePed == true then
    	for _,v in pairs(Config.Garagens) do
      		RequestModel(GetHashKey(v[6]))
      		while not HasModelLoaded(GetHashKey(v[6])) do
        	Wait(1)
      	end
  

      	ped =  CreatePed(4, GetHashKey(v[6]), v[1], 3374176, false, true)
      	SetEntityHeading(ped, v[2])
      	FreezeEntityPosition(ped, true)
	  	SetEntityInvincible(ped, true)
      	SetBlockingOfNonTemporaryEvents(ped, true)
		end
	end
end)


Citizen.CreateThread(function()
    while true do
        Wait(0)

        for key, value in pairs(Config.Garagens) do
            local dist = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), value[1])

            if dist <= 5.0 then
                if IsControlJustReleased(0, 38) then
					OpenGarage(key)
                end
            end
        end
    end
end)

function OpenGarage(garage)

	OpenGarageEsxMenu(garage)

end

function OpenGarageEsxMenu(garage)
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'garage_main_menu', {
		title 		= Strings["garage_nui"],
		align		= "top-left",
		elements	= {
			{label = Strings["takeout"], value = "park-out"}
		}

	}, function(data, menu)

		if data.current.value == 'park-out' then
			OpenParkOutESXMenu(garage)
		end

	end, function(data, menu)
		menu.close()
	end)
end

function OpenParkOutESXMenu(garage)
	local permitted_vehicle_entrys = {}

	ESX.TriggerServerCallback("sh59_Garage:GetPermittedVehicles", function(result) 
		for _,v in pairs(result) do
			props = v.vehicle
			xLabel = '<FONT COLOR="YELLOW">'..v.plate.."</FONT> - "..GetLabelText(GetDisplayNameFromVehicleModel(props.model))
			table.insert(permitted_vehicle_entrys, {label = xLabel, value = "availible_vehs_menu", valdata = props})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'show_owned_vehicles_menu', {
			title 		= Strings["takeout"],
			align		= "top-left",
			elements	= permitted_vehicle_entrys
		}, function(data, menu)
	
			if data.current.value == 'availible_vehs_menu' then
				SpawnVehicle(data.current.valdata, garage)
				ESX.UI.Menu.CloseAll()
			end
	
		end, function(data, menu)
			menu.close()
		end)

	end) 
end

function SpawnVehicle(vehdata, garage)
	for k, v in pairs(Config.Garages) do
    	local props = vehdata

    	ESX.Game.SpawnVehicle(props.model, v.spawn, v.spawnW, function(callback_vehicle)
    	    ESX.Game.SetVehicleProperties(callback_vehicle, props)
    	    SetVehRadioStation(callback_vehicle, "OFF")
    	    TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
    	end)
	end

	TriggerServerEvent('sh59_Garage:changeState', props.plate, 0)
end
