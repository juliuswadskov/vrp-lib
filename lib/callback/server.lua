-- Taget fra https://github.com/bertrammohr/mo-callbacks/blob/main/sCallback.lua
-- Lavet om af Raag2005
callback = {}
local resource = GetCurrentResourceName()

function RegisterServerCallback(name, func)
    callback[name] = func
end

RegisterServerEvent(resource .. ":TriggerServerCallback")
AddEventHandler(resource .. ":TriggerServerCallback", function(name, args)
    local _source = source
    TriggerClientEvent(resource .. ":RecieveServerCallback", _source, name, callback[name](table.unpack(args)))
end)
