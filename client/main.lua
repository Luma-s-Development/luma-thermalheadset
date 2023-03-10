local QBCore = exports['qb-core']:GetCoreObject()

local ThermalActive = false
local player = PlayerPedId()
local ped = GetPlayerPed(playerId)

function QBCore.Functions.HasItem(item)
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
        if result then
            return true
        end
        return false
    end, item)
    return false
end

local function loadAnimDict(dict) -- interactions, job,
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(10)
    end
end

RegisterNetEvent('luma-thermalheadset:toggleOn', function()
	QBCore.Functions.Progressbar("putonthermal", "Equipting Thermal Headset", 5000, false, true, {
	}, {}, {}, {}, function() -- Done
		local ped = PlayerPedId()
		if ThermalActive then
			loadAnimDict("missheist_agency2ahelmet")
			Wait(100)
			TaskPlayAnim(ped, 'missheist_agency2ahelmet', 'take_off_helmet_stand', 3.0, 3.0, -1, 32, 0, 0, 0, 0 ,false, false, false)
			Wait(1000)
			SetNightvision(false)
			SetPedPropIndex(ped, 0, 8, 0)
			ThermalActive = false
		else
			loadAnimDict("mp_masks@standard_car@ds@")
			Wait(100)
			TaskPlayAnim(ped, 'mp_masks@standard_car@ds@', 'put_on_mask', 3.0, 3.0, -1, 32, 0, 0, 0, 0 ,false, false, false)
			Wait(1000)
			SetNightvision(true)
			SetPedPropIndex(ped, 0, 36, 0)
			ThermalActive = true
		end
	end)
end)

--[[CreateThread(function()
	while true do
        Wait(1000)
		if ThermalActive then
			local hasItem = QBCore.Functions.HasItem('nvg_headset')
			if hasItem then
				print ("Has Item is True")
			else
				loadAnimDict("missheist_agency2ahelmet")
				Wait(100)
				TaskPlayAnim(ped, 'missheist_agency2ahelmet', 'take_off_helmet_stand', 3.0, 3.0, -1, 32, 0, 0, 0, 0 ,false, false, false)
				Wait(1000)
				SetNightvision(false)
				SetPedPropIndex(ped, 0, 8, 0)
				ThermalActive = false
				print("U don't have the item anymore")
			end
		end
	end
end)]]