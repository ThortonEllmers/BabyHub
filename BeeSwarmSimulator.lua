local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BabyHub - Bee Swarm Simulator", "GrapeTheme")

--Test Section
local ILOVEYOU = Window:NewTab("I Love You")
local ILOVEYOU = ILOVEYOU:NewSection("I Love You")

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
local PlayerSection = PlayerSection:NewSection("Player Settings")

-- Player Settings - Walk Speed
PlayerSection:NewSlider("Walk Speed", "Change Player Speed", 150, 50, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

-- Player Settings - Jump Power
PlayerSection:NewSlider("Jump Power", "Change Player Jump Power", 150, 75, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

-- Teleport Settings 
local TeleportSection = Window:NewTab("Teleport")
local TeleportSection = TeleportSection:NewSection("Teleporters") 

TeleportSection:NewDropdown("Field Teleporter", "Teleport to a selected field", {"Bamboo Field", "Blue Flower Field", "Cactus Field", "Clover Field", "Coconut Field", "Dandelion Field", "Mountain Top Field","Mushroom Field", "Pepper Patch", "Pineapple Patch", "Pine Tree Forest", "Pumpkin Field", "Rose Field", "Spider Field", "Strawberry Field", "Sunflower Field", "Stump Field"}, function(currentOption)
    print(currentOption)
end)

TeleportSection:NewDropdown("Summoner Teleporter", "Teleport to special summoners", {"Honey Storm", "Mythic Meteor", "Sprout"}, function(currentOption)
    print(currentOption)
end)

TeleportSection:NewDropdown("Converter Teleporter", "Teleport to converters", {"Instant Converter A", "Instant Converter B", "Instant Converter C"}, function(currentOption)
    print(currentOption)
end)

-- Game Settings
local Settings = Window:NewTab("Settings")
local Settings = Settings:NewSection("Settings")

-- Game Settings - Menu Toggle
Settings:NewKeybind("Toggle GUI", "Press V to toggle GUI", Enum.KeyCode.V, function()
	Library:ToggleUI()
end)