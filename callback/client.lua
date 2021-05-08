-- Taget fra https://github.com/bertrammohr/mo-callbacks/blob/main/cCallback.lua
-- Lavet om af Raag2005

callback = {}
local resource = GetCurrentResourceName()

TriggerServerCallback = function(name, args, cb)
    TriggerServerEvent(resource .. ":TriggerServerCallback", name, args)
    while not callback[name] do
        Wait(1)
    end
    cb(callback[name])
end

RegisterNetEvent(resource .. ":RecieveServerCallback")
AddEventHandler(resource .. ":RecieveServerCallback", function(name, data)
    callback[name] = data
end)
