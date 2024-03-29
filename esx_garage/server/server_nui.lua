ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterServerCallback("sh59_Garage:GetPermittedVehicles", function(source, cb)

    local ownedCars = {}
    local s = source
    local x = ESX.GetPlayerFromId(s)

    MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE `owner` = @owner AND `type` = 'car' AND `stored` = 1", {['@owner'] = x.identifier}, function(vehicles)
	    for _,v in pairs(vehicles) do
		    local vehicle = json.decode(v.vehicle)
		    table.insert(ownedCars, {vehicle = vehicle, stored = v.stored, plate = v.plate})
	    end
	    cb(ownedCars)
    end)

end)

RegisterNetEvent('sh59_Garage:changeState')
AddEventHandler('sh59_Garage:changeState', function(plate, state)
	MySQL.Sync.execute("UPDATE owned_vehicles SET `stored` = @state WHERE `plate` = @plate", {['@state'] = state, ['@plate'] = plate})
end)

RegisterNetEvent('sh59_Garage:saveProps')
AddEventHandler('sh59_Garage:saveProps', function(plate, props)
	local xProps = json.encode(props)
	MySQL.Sync.execute("UPDATE owned_vehicles SET `vehicle` = @props WHERE `plate` = @plate", {['@plate'] = plate, ['@props'] = xProps})
end)

ESX.RegisterServerCallback('sh59_Garage:CheckIfOwned', function(source, cb, plate)

    local s = source
    local x = ESX.GetPlayerFromId(s)

    MySQL.Async.fetchAll('SELECT `vehicle` FROM owned_vehicles WHERE `plate` = @plate AND `owner` = @owner', {['@plate'] = plate, ['@owner'] = x.identifier}, function(vehicle)
	    if next(vehicle) then
		    cb(true)
	    else
		    cb(false)
	    end
    end)

end)