local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "💚 BabyHub | Bid Battles (Beta) - Tycoon", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

local CurrentNetWorth = game:GetService("Players").LocalPlayer.leaderstats["Net Worth"].Value
local CurrentCash = game:GetService("Players").localPlayer.SaveVars.Cash.Value
local CurrentGems = game:GetService("Players").localPlayer.SaveVars.Gems.Value
local CurrentItemsValue = CurrentNetWorth - CurrentCash

local Activate = Instance.new("TextButton")
Activate.MouseButton1Down:connect(function()
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)

OrionLib:MakeNotification({
	Name = "BabyHub Loaded Successfully",
	Content = "Bid Battles (Beta) - Tycoon",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--BABYHUB MENU TABS

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local PlayersTab = Window:MakeTab({
    Name = "Players Slots",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
    Name = "Teleport",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

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

MainTab:AddParagraph("Net Worth", CurrentNetWorth)
MainTab:AddParagraph("Current Cash", CurrentCash)
MainTab:AddParagraph("Items Value", CurrentItemsValue)
MainTab:AddParagraph("Current Gems", CurrentGems)

TeleportTab:AddButton({
	Name = "Valueation",
	Callback = function(Valueation)
        
  	end    
})