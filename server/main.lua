local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("nvg_headset", function(src, item)
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('luma-thermalheadset:toggleOn', src)
end)