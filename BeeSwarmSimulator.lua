local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BabyHub - Bee Swarm Simulator", "GrapeTheme")

-- Main Settings
local MainSection = Window:NewTab("Main")

-- Main Settings - Claim Hive
local MainSection = MainSection:NewSection("Claim Hive") 
MainSection:NewButton("Claim Hive", "Click to claim hive", function()
    hives = game.Workspace.Honeycombs:GetChildren() 
    for i = #hives, 1, -1 
    do  v = game.Workspace.Honeycombs:GetChildren()[i] 
        if v.Owner.Value == nil 
        then game.ReplicatedStorage.Events.ClaimHive:FireServer(v.HiveID.Value) 
        end 
    end
end)

-- Farming Settings
local FarmingSection = Window:NewTab("Farming")
local FarmingSection = FarmingSection:NewSection("Farming")
 
--Farming Settings - Auto Dig
FarmingSection:NewToggle("Auto Dig", "Toggle to auto dig", function(v)
    --while true do

    --end
end)

local Puffshrooms = Window:NewTab("Puffshrooms")
local Planters = Window:NewTab("Planters")

-- Player Settings 
local PlayerSection = Window:NewTab("Player")
local PlayerSection = PlayerSection:NewSection("Settings")

PlayerSection:NewSlider("Walk Speed", "Change Player Speed", 150, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("Jump Power", "Change Player Jump Power", 150, 75, function(ws) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = ws
end)

-- Teleport Settings 
local TeleportSection = Window:NewTab("Teleport")
local TeleportSection = TeleportSection:NewSection("Teleport to field") 

TeleportSection:NewButton("Mushroom Field", "Teleport to Mushroom Field", function()
end)

-- Game Settings
local Settings = Window:NewTab("Settings")
local Settings = Settings:NewSection("Settings")

-- Game Settings - Menu Toggle
Settings:NewKeybind("Toggle GUI", "Press V to toggle GUI", Enum.KeyCode.V, function()
	Library:ToggleUI()
end)