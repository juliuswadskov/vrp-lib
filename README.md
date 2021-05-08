# vrp-lib
vRP Library with callback included 

## Add this to your fxmanifest.lua
```lua
client_scripts {
    "lib/Proxy.lua",
    "lib/Tunnel.lua",
    "lib/callback/client.lua"
}

server_scripts {
    "@vrp/lib/utils.lua",
    "lib/callback/server.lua"
}
```

## To use the callback
### Client
```lua
TriggerServerCallback('test', {'hey'}, function(bool)
    if bool then
        print('works')
    end
end)
```

### Server
```lua
RegisterServerCallback('test', function(source, cb, arg2)
    print(arg2)
    cb(true)
end)
```
