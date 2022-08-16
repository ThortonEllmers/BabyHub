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
            Name = "Buy 1 Cookie",
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
            Name = "Buy 5 Cookies",
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
            Name = "Buy 10 Cookies",
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
            Name = "Buy 100 Cookies",
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
            Name = "Buy 1 Pancake",
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
            Name = "Buy 5 Pancakes",
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
            Name = "Buy 10 Pancakes",
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
            Name = "Buy 100 Pancakes",
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
            Name = "Buy 1 Pizza",
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
            Name = "Buy 5 Pizzas",
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
            Name = "Buy 10 Pizzas",
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
            Name = "Buy 100 Pizzas",
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
            Name = "Buy 1 Bacon",
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
            Name = "Buy 5 Bacon",
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
            Name = "Buy 10 Bacon",
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
            Name = "Buy 100 Bacon",
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
            Name = "Buy 1 Coffee",
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
            Name = "Buy 5 Coffee",
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
            Name = "Buy 10 Coffee",
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
            Name = "Buy 100 Coffee",
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
            Name = "Buy 1 Water",
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
            Name = "Buy 5 Water",
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
            Name = "Buy 10 Water",
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
            Name = "Buy 100 Water",
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
            Name = "Buy Banana Smoothie with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Banana Smoothie",
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
            Name = "Buy 5 Banana Smoothie",
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
            Name = "Buy 10 Banana Smoothie",
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
            Name = "Buy 100 Banana Smoothie",
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
            Name = "Buy Strawberry Smoothie with Personal Funds"
      })

      BuyPersonalFundsTab:AddButton({
            Name = "Buy 1 Strawberry Smoothie",
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
            Name = "Buy 5 Strawberry Smoothie",
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
            Name = "Buy 10 Strawberry Smoothie",
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
            Name = "Buy 100 Strawberry Smoothie",
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
            Name = "Buy 1 Cookie",
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
            Name = "Buy 5 Cookies",
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
            Name = "Buy 10 Cookies",
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
            Name = "Buy 100 Cookies",
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
            Name = "Buy 1 Pancake",
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
            Name = "Buy 5 Pancakes",
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
            Name = "Buy 10 Pancakes",
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
            Name = "Buy 100 Pancakes",
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
            Name = "Buy 1 Pizza",
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
            Name = "Buy 5 Pizzas",
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
            Name = "Buy 10 Pizzas",
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
            Name = "Buy 100 Pizzas",
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
            Name = "Buy 1 Bacon",
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
            Name = "Buy 5 Bacon",
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
            Name = "Buy 10 Bacon",
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
            Name = "Buy 100 Bacon",
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
            Name = "Buy 1 Coffee",
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
            Name = "Buy 5 Coffee",
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
            Name = "Buy 10 Coffee",
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
            Name = "Buy 100 Coffee",
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
            Name = "Buy 1 Water",
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
            Name = "Buy 5 Water",
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
            Name = "Buy 10 Water",
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
            Name = "Buy 100 Water",
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
            Name = "Buy Banana Smoothie with Personal Funds"
      })

      BuyMotelFundsTab:AddButton({
            Name = "Buy 1 Banana Smoothie",
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
            Name = "Buy 5 Banana Smoothie",
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
            Name = "Buy 10 Banana Smoothie",
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
            Name = "Buy 100 Banana Smoothie",
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
            Name = "Buy 1 Strawberry Smoothie",
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
            Name = "Buy 5 Strawberry Smoothie",
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
            Name = "Buy 10 Strawberry Smoothie",
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
            Name = "Buy 100 Strawberry Smoothie",
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

      MainTab:AddButton({
            Name = "Energy Test",
            Callback = function()
            local vNumber = 50 --quantity

            game:GetService("ReplicatedStorage").Remotes.Energy:FireServer(vNumber)
            wait(.3)
            end    
      })