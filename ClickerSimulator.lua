local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BabyHub - Clicker Simulator", "GrapeTheme")

-- Main Settings
local MainSection = Window:NewTab("Main")
local Settings = Settings:NewSection("Main")

-- Game Settings
local Settings = Window:NewTab("Settings")
local Settings = Settings:NewSection("Settings")

-- Game Settings - Menu Toggle
Settings:NewKeybind("Toggle GUI", "Press V to toggle GUI", Enum.KeyCode.V, function()
	Library:ToggleUI()
end)