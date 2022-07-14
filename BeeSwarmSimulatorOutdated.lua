local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "💚 BabyHub | Bee Swarm Simulator", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})

--BabyHub Temporary Variables
    local monsterspawners = game:GetService("Workspace").MonsterSpawners

--BabyHub Values
    getgenv().autoSwing = true
    getgenv().autoSwingC = true

--BabyHub Functions
    local Player = game:GetService("Players").LocalPlayer
    local Character = Player.Character or Player:WaitForCharacter()

    function autoSwing()
        while getgenv().autoSwing == true do
            workspace.ICUB4MWAH["Dark Scythe"].ClickEvent:FireServer()
            wait(0.001)
        end
    end

    function autoSwingC()
        while getgenv().autoSwingC == true do
            workspace.CHRISSYC01["Dark Scythe"].ClickEvent:FireServer()
            wait(0.001)
        end
    end

    function convertHoney()
        while getgenv().convertHoney == true do
            if game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text ~= "Stop Making Honey" and game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.BackgroundColor3 ~= Color3.new(201, 39, 28) or (game:GetService("Players").LocalPlayer.SpawnPos.Value.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 13 then
                api.tween(1, game:GetService("Players").LocalPlayer.SpawnPos.Value * CFrame.fromEulerAnglesXYZ(0, 110, 0) + Vector3.new(0, 0, 9))
                wait(1)
                if game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text ~= "Stop Making Honey" and game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.BackgroundColor3 ~= Color3.new(201, 39, 28) or (game:GetService("Players").LocalPlayer.SpawnPos.Value.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 13 then game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking") end
                wait(1)
            end
        end

        function godMode()
            while getgenv().godMode == true do
                game.Players.LocalPlayer.Character.Humanoid.Health = 100
                wait(0.1)
            end
        end

        function autoKillMondoChicken()
            while getgenv().autoKillMondoChicken == true do
                while game.Workspace.Monsters:FindFirstChild("Mondo Chick (Lvl 8)") do
                    game:GetService("Workspace").Map.Ground.HighBlock.CanCollide = false
                    mondoPosition = game.Workspace.Monsters["Mondo Chick (Lvl 8)"].Head.Position
                    api.tween(1, CFrame.new(mondoPosition.x, mondoPosition.y -20, mondoPosition.z))
                    task.wait(1)
                end
            end
        end

    local function getMonsterName(name)
        local newName = nil
        local keywords = {
            ["Mushroom"]="Ladybug";
            ["Rhino"]="Rhino Beetle";
            ["Spider"]="Spider";
            ["Ladybug"]="Ladybug";
            ["Scorpion"]="Scorpion";
            ["Mantis"]="Mantis";
            ["Beetle"]="Rhino Beetle";
            ["Tunnel"]="Tunnel Bear";
            ["Coco"]="Coconut Crab";
            ["King"]="King Beetle";
            ["Stump"]="Stump Snail";
            ["Were"]="Werewolf"
        }
        for i,v in pairs(keywords) do
            if string.find(string.upper(name),string.upper(i)) then
                newName = v
            end
        end
        if newName == nil then newName = name end
        return newName
    end

--On BabyHub Start
    hives = game.Workspace.Honeycombs:GetChildren() 
        for i = #hives, 1, -1 
            do  v = game.Workspace.Honeycombs:GetChildren()[i] 
            if v.Owner.Value == nil 
            then game.ReplicatedStorage.Events.ClaimHive:FireServer(v.HiveID.Value) 
            end 
        end

--MainTab

    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    MainTab:AddToggle({
        Name = "Auto Swing",
        Default = false,
        Callback = function(Value)
            getgenv().autoSwing = Value
            autoSwing()
        end    
    })

    MainTab:AddToggle({
        Name = "Auto Swing V2",
        Default = false,
        Callback = function(Value)
            getgenv().autoSwingV2 = Value
            autoSwingV2()
        end    
    })

    MainTab:AddToggle({
        Name = "Convert Honey",
        Default = false,
        Callback = function(Value)
            getgenv().convertHoney = Value
            convertHoney()
        end    
    })

--TeleportTab

    local TeleportTab = Window:MakeTab({
        Name = "Teleport",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    TeleportTab:AddDropdown({
        Name = "Field Selector",
        Default = "Dandelion Field",
        Options = {"Ant Field", "Bamboo Field", "Blue Flower Field", "Catus Field", "Clover Field", "Coconut Field", "Dandelion Field", "Mountain Top Field", "Mushroom Field", "Pepper Patch", "Pineapple Patch", "Pine Tree Forest", "Pumpkin Patch", "Rose Field", "Spider Field", "Strawberry Field", "Stump Field", "Sunflower Field"},
        Callback = function(Value)
            print(Value)
        end    
    })

--KillTab
    local KillTab = Window:MakeTab({
        Name = "AutoKill",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    KillTab:AddToggle({
        Name = "Auto Kill Mondo Chicken",
        Default = false,
        Callback = function(Value)
            getgenv().autoKillMondoChicken = Value
            autoKillMondoChicken()
        end    
    })

--MiscTab

    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    MiscTab:AddSlider({
        Name = "Walk Speed",
        Min = 50,
        Max = 300,
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
        Max = 150,
        Default = 75,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = " ",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end    
    })

    MiscTab:AddToggle({
        Name = "God Mode",
        Default = false,
        Callback = function(Value)
            getgenv().godMode = Value
            godMode()
        end    
    })

    MiscTab:AddSlider({
        Name = "Add Health",
        Min = 100,
        Max = 100,
        Default = 100,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = " ",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.Health = Value
        end    
    })

OrionLib:Init()