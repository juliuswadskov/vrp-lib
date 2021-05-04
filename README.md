# vrp-lib
vRP Library with callback included 

### Add this to your fxmanifest.lua
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
