    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "BabyHub | All Games Supported", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

--BABYHUB MENU TABS

    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

--BABYHUB FUCTIONS
    


--BABYHUB SLIDERS

    MiscTab:AddSlider({
        Name = "Walk Speed",
        Min = 50,
        Max = 1000,
        Default = 50,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = " ",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end    
    })

    MiscTab:AddSlider({
        Name = "Jump Power",
        Min = 75,
        Max = 1000,
        Default = 75,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = " ",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end    
    })