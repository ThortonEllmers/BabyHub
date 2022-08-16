local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "💚 BabyHub | WaterMelon", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

local Bob = Window:MakeTab({
    Name = "Seeds",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
    })

function Notify()
    OrionLib:MakeNotification({
        Name = "I am a notification",
        Content = "Hello there new player... thanks for clicking me!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end 

Bob:AddButton({
    Name = "Juice",
    Callback = function()
        Notify()
    end    
})

OrionLib:Init()