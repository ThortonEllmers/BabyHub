--BABYHUB LIB

      local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
      local Window = OrionLib:MakeWindow({Name = "💚 BabyHub | Motel Simulator", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

--BABYHUB MENU TABS

      local MainTab = Window:MakeTab({
      Name = "Main",
      Icon = "rbxassetid://4483345998",
      PremiumOnly = false
      })

      local BuyPersonalFundsTab = Window:MakeTab({
      Name = "Buy - Personal",
      Icon = "rbxassetid://4483345998",
      PremiumOnly = false
      })

      local BuyMotelFundsTab = Window:MakeTab({
      Name = "Buy - Motel",
      Icon = "rbxassetid://4483345998",
      PremiumOnly = false
      })
      local TestingTab = Window:MakeTab({
            Name = "Testing",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
      })

--BABYHUB FUCTIONS

      function instantInteract()
      while getgenv().instantInteract == true do
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                  if v.Name == 'ProximityPrompt' then
                  v.HoldDuration = 0
                  end
            end
      end
      end

--BABYHUB TOGGLES
--BABYHUB SLIDERS

      local Section = MainTab:AddSection({
      Name = "Set me to 0 for instant interaction"
      })

      MainTab:AddSlider({
      Name = "Interaction Speed",
      Min = 0,
      Max = 5,
      Default = 2,
      Color = Color3.fromRGB(255,255,255),
      Increment = 1,
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

--BABYHUB PERSONAL BUY BUTTONS

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Cookies with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Cookie\nCost $4",
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
            Name = "Buy 5 Cookies\nCost $20",
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
            Name = "Buy 10 Cookies\nCost $40",
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
            Name = "Buy 100 Cookies\nCost $400",
            Callback = function()
            local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Pancakes with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Pancake\nCost $5",
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
            Name = "Buy 5 Pancakes\nCost $25",
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
            Name = "Buy 10 Pancakes\nCost $50",
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
            Name = "Buy 100 Pancakes\nCost $500",
            Callback = function()
            local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Pizza with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Pizza\nCost $10",
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
            Name = "Buy 5 Pizzas\nCost $50",
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
            Name = "Buy 10 Pizzas\nCost $100",
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
            Name = "Buy 100 Pizzas\nCost $1000",
            Callback = function()
            local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Bacon with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Bacon\nCost $3",
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
            Name = "Buy 5 Bacon\nCost $15",
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
            Name = "Buy 10 Bacon\nCost $30",
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
            Name = "Buy 100 Bacon\nCost $300",
            Callback = function()
            local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Coffee with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Coffee\nCost $12",
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
            Name = "Buy 5 Coffee\nCost $60",
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
            Name = "Buy 10 Coffee\nCost $120",
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
            Name = "Buy 100 Coffee\nCost $1200",
            Callback = function()
            local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Water with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Water\nCost $6",
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
            Name = "Buy 5 Water\nCost $30",
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
            Name = "Buy 10 Water\nCost $60",
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
            Name = "Buy 100 Water\nCost $600",
            Callback = function()
            local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Bananas with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Bananas\nCost $18",
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
            Name = "Buy 5 Bananas\nCost $90",
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
            Name = "Buy 10 Bananas\nCost $180",
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
            Name = "Buy 100 Bananas\nCost $1800",
            Callback = function()
            local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyPersonalFundsTab:AddSection({
            Name = "Buy Strawberries with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Strawberries\nCost $18",
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
            Name = "Buy 5 Strawberries\nCost $90",
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
            Name = "Buy 10 Strawberries\nCost $180",
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
            Name = "Buy 100 Strawberries\nCost $1800",
            Callback = function()
            local food = 'Strawberry Smoothie' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })
--BABYHUB MOTEL BUY BUTTONS

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Cookies with Motel Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Cookie\nCost $4",
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
            Name = "Buy 5 Cookies\nCost $20",
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
            Name = "Buy 10 Cookies\nCost $40",
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
            Name = "Buy 100 Cookies\nCost $400",
            Callback = function()
            local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Pancakes with Motel Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Pancake\nCost $5",
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
            Name = "Buy 5 Pancakes\nCost $25",
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
            Name = "Buy 10 Pancakes\nCost $50",
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
            Name = "Buy 100 Pancakes\nCost $500",
            Callback = function()
            local food = 'Pancakes' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Pizza with Motel Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Pizza\nCost $10",
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
            Name = "Buy 5 Pizzas\nCost $50",
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
            Name = "Buy 10 Pizzas\nCost $100",
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
            Name = "Buy 100 Pizzas\nCost $1000",
            Callback = function()
            local food = 'Pizzas' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Bacon with Motel Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Bacon\nCost $3",
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
            Name = "Buy 5 Bacon\nCost $15",
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
            Name = "Buy 10 Bacon\nCost $30",
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
            Name = "Buy 100 Bacon\nCost $300",
            Callback = function()
            local food = 'Bacon' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "MotelFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Coffee with Personal Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Coffee\nCost $12",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 5 Coffee\nCost $60",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 10 Coffee\nCost $120",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 100 Coffee\nCost $1200",
            Callback = function()
            local food = 'Coffee' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Water with Personal Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Water\nCost $6",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 5 Water\nCost $30",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 10 Water\nCost $60",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 100 Water\nCost $600",
            Callback = function()
            local food = 'Water' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Bananas with Personal Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Bananas\nCost $18",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 5 Bananas\nCost $90",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 10 Bananas\nCost $180",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 100 Bananas\nCost $1800",
            Callback = function()
            local food = 'Banana Smoothie' --Bacon, Pizzas, Pancakes, Cookies
            local CookTime = 2 --starter is like 3 seconds

            local vString1 = "PersonalFunds" --MotelFunds or PersonalFunds
            local vString2 = food
            local vNumber3 = 100 --quantity

            game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(vString1, vString2, vNumber3)
            wait(.3)
            end    
      })

      local Section = BuyMotelFundsTab:AddSection({
            Name = "Buy Strawberry Smoothie with Personal Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Strawberries\nCost $18",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 5 Strawberries\nCost $90",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy 10 Strawberries\nCost $180",
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

      BuyMotelFundsTab:AddButton({
            Name = "Buy Strawberries\nCost $1800",
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

--BABYHUB TESTING TAB
      TestingTab:AddButton({
            Name = "Energy Test",
            Callback = function()
            local vNumber = 50 --quantity

            game:GetService("ReplicatedStorage").Remotes.Energy:FireServer(vNumber)
            wait(.3)
            end    
      })