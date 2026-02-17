# main.lua
local base = "https://pastebin.com/raw/Zb8bv0Es"

local function loadModule(name)
    local src = game:HttpGet(base .. name .. ".lua")
    return loadstring(src)()
end

local Garden = loadModule("GardenSystem")
local Data = loadModule("DataSystem")
local Admin = loadModule("AdminHub")

Garden.Start()
Data.Init()
Admin.Init()
