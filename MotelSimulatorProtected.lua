--BABYHUB LIB
local version = "Version 1.0.1"
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "BabyHub | Motel Simulator | "..version.."", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

--BABYHUB SUPPLY PRICES
local CookiePrice = 4
local PancakePrice = 5
local PizzaPrice = 10
local BaconPrice = 3
local CoffeePrice = 12
local WaterPrice = 6
local BananasPrice = 18
local StrawberriesPrice = 18

local BuyAllPrice10 = CookiePrice * 10 + PancakePrice * 10 + PizzaPrice * 10 + BaconPrice * 10 + CoffeePrice * 10 + WaterPrice * 10 + BananasPrice * 10 + StrawberriesPrice * 10
local BuyAllPrice50 = CookiePrice * 50 + PancakePrice * 50 + PizzaPrice * 50 + BaconPrice * 50 + CoffeePrice * 50 + WaterPrice * 50 + BananasPrice * 50 + StrawberriesPrice * 50

--BABYHUB COOKIE COST
local CookieCost1 = CookiePrice
local CookieCost5 = CookieCost1 * 5 
local CookieCost10 = CookieCost1 * 10
local CookieCost50 = CookieCost1 * 50

--BABYHUB PANCAKE COST
local PancakeCost1 = PancakePrice
local PancakeCost5 = PancakeCost1 * 5 
local PancakeCost10 = PancakeCost1 * 10
local PancakeCost50 = PancakeCost1 * 50

--BABYHUB PIZZA COST
local PizzaCost1 = PizzaPrice
local PizzaCost5 = PizzaCost1 * 5 
local PizzaCost10 = PizzaCost1 * 10
local PizzaCost50 = PizzaCost1 * 50

--BABYHUB BACON COST
local BaconCost1 = BaconPrice
local BaconCost5 = BaconCost1 * 5 
local BaconCost10 = BaconCost1 * 10
local BaconCost50 = BaconCost1 * 50

--BABYHUB COFFEE COST
local CoffeeCost1 = CoffeePrice
local CoffeeCost5 = CoffeeCost1 * 5 
local CoffeeCost10 = CoffeeCost1 * 10
local CoffeeCost50 = CoffeeCost1 * 50

--BABYHUB WATER COST
local WaterCost1 = WaterPrice
local WaterCost5 = WaterCost1 * 5 
local WaterCost10 = WaterCost1 * 10
local WaterCost50 = WaterCost1 * 50

--BABYHUB BANANAS COST
local BananasCost1 = BananasPrice
local BananasCost5 = BananasCost1 * 5 
local BananasCost10 = BananasCost1 * 10
local BananasCost50 = BananasCost1 * 50

--BABYHUB STAWBERRIES COST
local StrawberriesCost1 = StrawberriesPrice
local StrawberriesCost5 = StrawberriesCost1 * 5 
local StrawberriesCost10 = StrawberriesCost1 * 10
local StrawberriesCost50 = StrawberriesCost1 * 50

--BABYHUB MENU TABS

local WelcomeTab = Window:MakeTab({
Name = "Welcome",
Icon = "rbxassetid://9584292194",
PremiumOnly = false
})

local MainTab = Window:MakeTab({
Name = "Main",
Icon = "rbxassetid://9584292194",
PremiumOnly = false
})

local AutoCookTab = Window:MakeTab({
Name = "Auto Cook",
Icon = "rbxassetid://9584292194",
PremiumOnly = false
})

local BuyPersonalFundsTab = Window:MakeTab({
Name = "Buy - Personal",
Icon = "rbxassetid://9584292194",
PremiumOnly = false
})

local BuyMotelFundsTab = Window:MakeTab({
Name = "Buy - Motel",
Icon = "rbxassetid://9584292194",
PremiumOnly = false
})

local MiscTab = Window:MakeTab({
Name = "Misc",
Icon = "rbxassetid://9584292194",
PremiumOnly = false
})

local TestingTab = Window:MakeTab({
Name = "Testing",
Icon = "rbxassetid://9584292194",
PremiumOnly = false
})

--BABYHUB WELCOME TAB
local Players = game:GetService("Players").LocalPlayer
WelcomeTab:AddLabel("                     Welcome To BabyHub "..Players.Name.."")
WelcomeTab:AddLabel("           Join The Discord Below To Suggest Features")
WelcomeTab:AddButton({
	Name = "                            Click To Join Our Discord",
	Callback = function()
            game:GetService("StarterGui"):SetCore("SendNotification",{
                  Title = "Discord Link", 
                  Text = "Here is a Link To\nBabyHub's Discord", 
                  Icon = "rbxassetid://4483345998",
                  Duration = "10",
                  Button1 = "Copy To Clipboard"
            
            })
            setclipboard("https://discord.gg/invite")
            toclipboard("https://discord.gg/invite")
  	end    
})
WelcomeTab:AddLabel("")
WelcomeTab:AddLabel("      Note: Some Features Only Work For Certain Games!")
WelcomeTab:AddLabel("                        BabyHub Will Forever Be Free")
WelcomeTab:AddButton({
	Name = "                                     Close Game!",
	Callback = function()
            game:Shutdown()
  	end    
})
--BABYHUB FUCTIONS

--BABYHUB TOGGLES
--BABYHUB SLIDERS

local Section = MainTab:AddSection({
Name = "Set me to 0 for instant interaction"
})

MainTab:AddSlider({
Name = "Interaction Speed",
Save = true,
Min = 0,
Max = 1,
Default = 0,
Color = Color3.fromRGB(255,255,255),
Increment = 0.5,
ValueName = " ",
Callback = function(Value)
      for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == 'ProximityPrompt' then
            v.HoldDuration = Value
            end
      end
end    
})

local Section = MainTab:AddSection({
      Name = "Set me to change character walkspeed"
})

MainTab:AddSlider({
Name = "Walk Speed",
Min = 25,
Max = 50,
Default = 25,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = " ",
Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end    
})

--BABYHUB PERSONAL BUY BUTTONS

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy x Amount of each supply"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Of each \nCost $"..BuyAllPrice10.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Of each \nCost $"..BuyAllPrice50.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Cookies with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Cookie\nCost $"..CookieCost1.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Cookies\nCost $"..CookieCost5.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Cookies\nCost $"..CookieCost10.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Cookies\nCost $"..CookieCost50.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Pancakes with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Pancake\nCost $"..PancakeCost1.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Pancakes\nCost $"..PancakeCost5.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Pancakes\nCost $"..PancakeCost10.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Pancakes\nCost $"..PancakeCost50.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Pizza with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Pizza\nCost $"..PizzaCost1.."",
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Pizzas\nCost $"..PizzaCost5.."",
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Pizzas\nCost $"..PizzaCost10,
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Pizzas\nCost $"..PizzaCost50.."",
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Bacon with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Bacon\nCost $"..BaconCost1.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Bacon\nCost $"..BaconCost5.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Bacon\nCost $"..BaconCost10.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Bacon\nCost $"..BaconCost50.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Coffee with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Coffee\nCost $"..CoffeeCost1.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Coffee\nCost $"..CoffeeCost5.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Coffee\nCost $"..CoffeeCost10.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Coffee\nCost $"..CoffeeCost50.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Water with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Water\nCost $"..WaterCost1.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Water\nCost $"..WaterCost5.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Water\nCost $"..WaterCost10.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Water\nCost $"..WaterCost50.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Bananas with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Bananas\nCost $"..BananasCost1.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Bananas\nCost $"..BananasCost5.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Bananas\nCost $"..BananasCost10.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Bananas\nCost $"..BananasCost50.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Buy Strawberries with Personal Funds"
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 1 Strawberries\nCost $"..StrawberriesCost1.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 5 Strawberries\nCost $"..StrawberriesCost5.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 10 Strawberries\nCost $"..StrawberriesCost10.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyPersonalFundsTab:AddButton({
      Name = "Buy 50 Strawberries\nCost $"..StrawberriesCost50.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyPersonalFundsTab:AddSection({
      Name = "Had enough of buying supplies?"
})

BuyPersonalFundsTab:AddButton({
      Name = "Unlimited Supplies",
      Callback = function()
            local Event = game:GetService("ReplicatedStorage").Remotes.Supplies
            local Stuff = {"Pizzas";"Cookies";"Pancakes";"Bacon";"Banana Smoothie";"Strawberry Smoothie";"Coffee";"Water"}
            for _, Supply in next, Stuff do
            Event:FireServer("PersonalFunds", Supply, 1.1)
            end
      end    
})
--BABYHUB MOTEL BUY BUTTONS

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy x Amount of each supply"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Of each \nCost $"..BuyAllPrice10.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Of each \nCost $"..BuyAllPrice50.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)

      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(1)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Cookies with Motel Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Cookie\nCost $"..CookieCost1.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Cookies\nCost $"..CookieCost5.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Cookies\nCost $"..CookieCost10.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Cookies\nCost $"..CookieCost50.."",
      Callback = function()
      local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Pancakes with Motel Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Pancake\nCost $"..PancakeCost1.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Pancakes\nCost $"..PancakeCost5.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Pancakes\nCost $"..PancakeCost10.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Pancakes\nCost $"..PancakeCost50.."",
      Callback = function()
      local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Pizza with Motel Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Pizza\nCost $"..PizzaCost1.."",
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Pizzas\nCost $"..PizzaCost5.."",
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Pizzas\nCost $"..PizzaCost10.."",
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Pizzas\nCost $"..PizzaCost50.."",
      Callback = function()
      local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Bacon with Motel Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Bacon\nCost $"..BaconCost1.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Bacon\nCost $"..BaconCost5.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Bacon\nCost $"..BaconCost10.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Bacon\nCost $"..BaconCost50.."",
      Callback = function()
      local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Coffee with Personal Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Coffee\nCost $"..CoffeeCost1.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Coffee\nCost $"..CoffeeCost5.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Coffee\nCost $"..CoffeeCost10.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Coffee\nCost $"..CoffeeCost50.."",
      Callback = function()
      local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Water with Personal Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Water\nCost $"..WaterCost1.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Water\nCost $"..WaterCost5.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Water\nCost $"..WaterCost10.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Water\nCost $"..WaterCost50.."",
      Callback = function()
      local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Bananas with Personal Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Bananas\nCost $"..BananasCost1.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Bananas\nCost $"..BananasCost5.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Bananas\nCost $"..BananasCost10.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Bananas\nCost $"..BananasCost50.."",
      Callback = function()
      local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 50 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Buy Strawberry Smoothie with Personal Funds"
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 1 Strawberries\nCost $"..StrawberriesCost1.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 1 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 5 Strawberries\nCost $"..StrawberriesCost5.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 5 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 10 Strawberries\nCost $"..StrawberriesCost10.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

BuyMotelFundsTab:AddButton({
      Name = "Buy 50 Strawberries\nCost $"..StrawberriesCost50.."",
      Callback = function()
      local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
      local CookTime = 2 --starter is like 3 seconds

      local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
      local vString2 = food
      local vNumber3 = 10 --quantity

      game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
      wait(.3)
      end    
})

local Section = BuyMotelFundsTab:AddSection({
      Name = "Had enough of buying supplies?"
})

BuyMotelFundsTab:AddButton({
      Name = "Unlimited Supplies",
      Callback = function()
            local Event = game:GetService("ReplicatedStorage").Remotes.Supplies
            local Stuff = {"Pizzas";"Cookies";"Pancakes";"Bacon";"Banana Smoothie";"Strawberry Smoothie";"Coffee";"Water"}
            for _, Supply in next, Stuff do
            Event:FireServer("PersonalFunds", Supply, 1.1)
            end
      end    
})

local Section = MiscTab:AddSection({
      Name = "List of Misc Features"
})

MiscTab:AddTextbox({
	Name = "Teleport - Case Sensitive!\nEnter Username and press Enter",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		targetUsername = Value

            players = game:GetService("Players")
            targetPlayer = players:FindFirstChild(targetUsername)
            players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
	end	  
})

MiscTab:AddButton({
      Name = "Player ESP",
      Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/ESP.lua"))()
      end    
})

MiscTab:AddButton({
      Name = "Fly\nPress F to Toggle",
      Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/Fly.lua"))()
      end    
})

MiscTab:AddButton({
      Name = "No Gravity\nPress G to Toggle",
      Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/NoGravity.lua"))()
      end    
})

MiscTab:AddButton({
      Name = "Click Teleport - Click to Enable/Disable\nHold Left CTRL + Click to Teleport",
      Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/ClickTeleport.lua"))()
      end    
})

MiscTab:AddButton({
      Name = "Infinite Jump - Click to Enable/Disable",
      Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/InfiniteJump.lua"))()
      end    
})

MiscTab:AddButton({
      Name = "Walk With A Limp",
      Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/LimpWalk.lua"))()
      end    
})

local Section = AutoCookTab:AddSection({
      Name = "Auto Cook 1x Cookie, 1x Pancake, 1x Pizza and 1x Bacon"
})

AutoCookTab:AddButton({
      Name = "Auto Cook all Food",
      Callback = function()
            local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
            wait(.3)
            local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
            wait(.3)
            local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
            wait(.3)
            local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
      end    
})

local infCook = false
AutoCookTab:AddToggle({
	Name = "Toggle Auto Cook",
	Default = false,
	Callback = function(Value)
		infCook = Value

        while infCook do
            wait()
            local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
            wait(.3)
            local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
            wait(.3)
            local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
            wait(.3)
            local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
        end

	end    
})

local Section = AutoCookTab:AddSection({
      Name = "Auto Cook Food"
})

AutoCookTab:AddButton({
      Name = "Auto Cook a Cookie",
      Callback = function()
            local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
      end    
})

AutoCookTab:AddButton({
      Name = "Auto Cook a Pancake",
      Callback = function()
            local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
      end    
})

AutoCookTab:AddButton({
      Name = "Auto Cook a Pizza",
      Callback = function()
            local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
      end    
})

AutoCookTab:AddButton({
      Name = "Auto Cook a Bacon",
      Callback = function()
            local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 1 --starter is like 3 seconds
            local ohString1 = "Cook"
            local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
            wait(CookTime)
            local ohNil1 = nil
            local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
            local ohString3 = food
            game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)
      end    
})

local Section = TestingTab:AddSection({
      Name = "These are on my TODO list"
})

local infEnergy = false
TestingTab:AddToggle({
	Name = "Inf Energy\nNot Fully Working",
	Default = false,
	Callback = function(Value)
		infEnergy = Value

        while infEnergy do
            wait()
            game.Players.LocalPlayer.Energy.Value = math.huge
            for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                  if v.Energy == 'Start' then
                  v.Energy += 250
                  end
            end
        end

	end    
}) 

TestingTab:AddButton({
      Name = "Auto Clean Rooms\nNot Working",
      Callback = function()
            --game:GetService("ReplicatedStorage").Remotes.Verification:FireServer(nil, game:GetService("Workspace").Nodes.Room1Nodes.Bed.Bed.Seats)
      end    
})

OrionLib:Init()