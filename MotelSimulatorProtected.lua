local version = "Version 1.0.1"
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "BabyHub | Motel Simulator | "..version.."", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

local WelcomeTab = Window:MakeTab({
    Name = "Welcome",
    Icon = "rbxassetid://9584292194",
    PremiumOnly = false
    })

    local Section = MainTab:AddSection({
        Name = "BabyHub is experiencing issues with the lastest update\nPlease try again in 5 minutes"
        })