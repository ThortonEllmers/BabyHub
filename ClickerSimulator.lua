local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "BabyHub | Clicker Simulator", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

--BabyHub Values
	getgenv().autoRebirth = true

--BabyHub Functions

	function autoRebirth()
		while getgenv().autoRebirth == true do
			game:GetService("ReplicatedStorage").Events.Client.requestRebirth:FireServer(1,false,false)
		 end
	end

--Farm Tab
	local FarmTab = Window:MakeTab({
		Name = "AutoFarm",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	FarmTab:AddToggle({
		Name = "Auto Rebirth",
		Default = false,
		Callback = function(Value)
			getgenv().autoRebirth = Value
			autoRebirth()
		end    
	})

OrionLib:Init()