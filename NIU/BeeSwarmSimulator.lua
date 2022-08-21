repeat wait(0.1) until game:IsLoaded()

--API CALLS

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "BabyHub | Bee Swarm Simulator", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})
    getgenv().api = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/API.lua"))()
    local bssapi = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/BeeSwarmSimulator-API.lua"))()

--SCRIPT TEMP VARIABLES

    local playerstatsevent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
    local statstable = playerstatsevent:InvokeServer()
    local monsterspawners = game:GetService("Workspace").MonsterSpawners
    local rarename
    function rtsg() tab = game.ReplicatedStorage.Events.RetrievePlayerStats:InvokeServer() return tab end
    function maskequip(mask) local MaskString = "Equip" local MaskTable = { ["Mute"] = false, ["Type"] = mask, ["Category"] = "Accessory"} game:GetService("ReplicatedStorage").Events.ItemPackageEvent:InvokeServer(MaskString, MaskTable) end
    local lasttouched = nil
    local done = true
    local hi = false
    local Items = require(game:GetService("ReplicatedStorage").EggTypes).GetTypes()
    local v1 = require(game.ReplicatedStorage.ClientStatCache):Get();

--CLAIM HIVE WHEN SCRIPT RUNS
    hives = game.Workspace.Honeycombs:GetChildren() 
    for i = #hives, 1, -1 
        do  v = game.Workspace.Honeycombs:GetChildren()[i] 
        if v.Owner.Value == nil 
        then game.ReplicatedStorage.Events.ClaimHive:FireServer(v.HiveID.Value) 
        end 
    end

--SCRIPT TABLES

    for _, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
        if v:IsA("TextLabel") and string.find(v.Text,"BabyHub") then
            v.Parent.Parent:Destroy()
        end
    end

    getgenv().temptable = {
        version = "0.0.1",
        blackfield = "Sunflower Field",
        redfields = {},
        bluefields = {},
        whitefields = {},
        shouldiconvertballoonnow = false,
        balloondetected = false,
        puffshroomdetected = false,
        magnitude = 60,
        blacklist = {
            ""
        },
        running = false,
        configname = "",
        tokenpath = game:GetService("Workspace").Collectibles,
        started = {
            vicious = false,
            mondo = false,
            windy = false,
            ant = false,
            monsters = false
        },
        detected = {
            vicious = false,
            windy = false
        },
        tokensfarm = false,
        converting = false,
        consideringautoconverting = false,
        honeystart = 0,
        grib = nil,
        gribpos = CFrame.new(0,0,0),
        honeycurrent = statstable.Totals.Honey,
        dead = false,
        float = false,
        pepsigodmode = false,
        pepsiautodig = false,
        alpha = false,
        beta = false,
        myhiveis = false,
        invis = false,
        windy = nil,
        sprouts = {
            detected = false,
            coords
        },
        cache = {
            autofarm = false,
            killmondo = false,
            vicious = false,
            windy = false
        },
        allplanters = {},
        planters = {
            planter = {},
            cframe = {},
            activeplanters = {
                type = {},
                id = {}
            }
        },
        monstertypes = {"Ladybug", "Rhino", "Spider", "Scorpion", "Mantis", "Werewolf"},
        ["stopapypa"] = function(path, part)
            local Closest
            for i,v in next, path:GetChildren() do
                if v.Name ~= "PlanterBulb" then
                    if Closest == nil then
                        Closest = v.Soil
                    else
                        if (part.Position - v.Soil.Position).magnitude < (Closest.Position - part.Position).magnitude then
                            Closest = v.Soil
                        end
                    end
                end
            end
            return Closest
        end,
        coconuts = {},
        crosshairs = {},
        crosshair = false,
        coconut = false,
        act = 0,
        act2 = 0,
        ['touchedfunction'] = function(v)
            if lasttouched ~= v then
                if v.Parent.Name == "FlowerZones" then
                    if v:FindFirstChild("ColorGroup") then
                        if tostring(v.ColorGroup.Value) == "Red" then
                            maskequip("Demon Mask")
                        elseif tostring(v.ColorGroup.Value) == "Blue" then
                            maskequip("Diamond Mask")
                        end
                    else
                        maskequip("Gummy Mask")
                    end
                    lasttouched = v
                end
            end
        end,
        runningfor = 0,
        oldtool = rtsg()["EquippedCollector"],
        ['gacf'] = function(part, st)
            coordd = CFrame.new(part.Position.X, part.Position.Y+st, part.Position.Z)
            return coordd
        end
    }
    local planterst = {
        plantername = {},
        planterid = {}
    }
    
    for i,v in next, temptable.blacklist do if v == api.nickname then game.Players.LocalPlayer:Kick("You're blacklisted! Get clapped!") end end
    if temptable.honeystart == 0 then temptable.honeystart = statstable.Totals.Honey end
    
    for i,v in next, game:GetService("Workspace").MonsterSpawners:GetDescendants() do if v.Name == "TimerAttachment" then v.Name = "Attachment" end end
    for i,v in next, game:GetService("Workspace").MonsterSpawners:GetChildren() do if v.Name == "RoseBush" then v.Name = "ScorpionBush" elseif v.Name == "RoseBush2" then v.Name = "ScorpionBush2" end end
    for i,v in next, game:GetService("Workspace").FlowerZones:GetChildren() do if v:FindFirstChild("ColorGroup") then if v:FindFirstChild("ColorGroup").Value == "Red" then table.insert(temptable.redfields, v.Name) elseif v:FindFirstChild("ColorGroup").Value == "Blue" then table.insert(temptable.bluefields, v.Name) end else table.insert(temptable.whitefields, v.Name) end end
    local flowertable = {}
    for _,z in next, game:GetService("Workspace").Flowers:GetChildren() do table.insert(flowertable, z.Position) end
    local masktable = {}
    for _,v in next, game:GetService("ReplicatedStorage").Accessories:GetChildren() do if string.match(v.Name, "Mask") then table.insert(masktable, v.Name) end end
    local collectorstable = {}
    for _,v in next, getupvalues(require(game:GetService("ReplicatedStorage").Collectors).Exists) do for e,r in next, v do table.insert(collectorstable, e) end end
    local fieldstable = {}
    for _,v in next, game:GetService("Workspace").FlowerZones:GetChildren() do table.insert(fieldstable, v.Name) end
    local toystable = {}
    for _,v in next, game:GetService("Workspace").Toys:GetChildren() do table.insert(toystable, v.Name) end
    local spawnerstable = {}
    for _,v in next, game:GetService("Workspace").MonsterSpawners:GetChildren() do table.insert(spawnerstable, v.Name) end
    local accesoriestable = {}
    for _,v in next, game:GetService("ReplicatedStorage").Accessories:GetChildren() do if v.Name ~= "UpdateMeter" then table.insert(accesoriestable, v.Name) end end
    for i,v in pairs(getupvalues(require(game:GetService("ReplicatedStorage").PlanterTypes).GetTypes)) do for e,z in pairs(v) do table.insert(temptable.allplanters, e) end end
    local donatableItemsTable = {}
    local treatsTable = {}
    for i,v in pairs(Items) do
        if v.DonatableToWindShrine == true then
            table.insert(donatableItemsTable,i)
        end
    end
    for i,v in pairs(Items) do
        if v.TreatValue then
            table.insert(treatsTable,i)
        end
    end
    local buffTable = {
        ["Blue Extract"]={b=false,DecalID="2495936060"};
        ["Red Extract"]={b=false,DecalID="2495935291"};
        ["Oil"]={b=false,DecalID="2545746569"}; --?
        ["Enzymes"]={b=false,DecalID="2584584968"};
        ["Glue"]={b=false,DecalID="2504978518"};
        ["Glitter"]={b=false,DecalID="2542899798"};
        ["Tropical Drink"]={b=false,DecalID="3835877932"};
    }
    local AccessoryTypes = require(game:GetService("ReplicatedStorage").Accessories).GetTypes()
    local MasksTable = {}
    for i,v in pairs(AccessoryTypes) do
        if string.find(i,"Mask") then
            if i ~= "Honey Mask" then
            table.insert(MasksTable,i)
            end
        end
    end
    
    table.sort(fieldstable)
    table.sort(accesoriestable)
    table.sort(toystable)
    table.sort(spawnerstable)
    table.sort(masktable)
    table.sort(temptable.allplanters)
    table.sort(collectorstable)
    table.sort(donatableItemsTable)
    table.sort(buffTable)
    table.sort(MasksTable)

--FLOATPAD

    local floatpad = Instance.new("Part", game:GetService("Workspace"))
    floatpad.CanCollide = false
    floatpad.Anchored = true
    floatpad.Transparency = 1
    floatpad.Name = "FloatPad"

--COCONUTCRAB

    local coconutcrab = Instance.new("Part", game:GetService("Workspace"))
    coconutcrab.Name = "Coconut Part"
    coconutcrab.Anchored = true
    coconutcrab.Transparency = 1
    coconutcrab.Size = Vector3.new(10, 1, 10)
    coconutcrab.Position = Vector3.new(-307.52117919922, 105.91863250732, 467.86791992188)

--ANTFARM

    local antfarm = Instance.new("Part", workspace)
    antfarm.Name = "Ant Autofarm Part"
    antfarm.Position = Vector3.new(96, 47, 553)
    antfarm.Anchored = true
    antfarm.Size = Vector3.new(128, 1, 50)
    antfarm.Transparency = 1
    antfarm.CanCollide = false

--BABYHUB CONFIG

    getgenv().BabyHub = {
        rares = {},
        priority = {},
        bestfields = {
            red = "Pepper Patch",
            white = "Coconut Field",
            blue = "Stump Field"
        },
        blacklistedfields = {},
        killerBabyHub = {},
        bltokens = {},
        toggles = {
            autofarm = false,
            farmclosestleaf = false,
            farmbubbles = false,
            autodig = false,
            farmrares = false,
            rgbui = false,
            farmflower = false,
            farmfuzzy = false,
            farmcoco = false,
            farmflame = false,
            farmclouds = false,
            killmondo = false,
            killvicious = false,
            loopspeed = false,
            loopjump = false,
            autoquest = false,
            autoboosters = false,
            autodispense = false,
            clock = false,
            freeantpass = false,
            honeystorm = false,
            autodoquest = false,
            disableseperators = false,
            npctoggle = false,
            loopfarmspeed = false,
            mobquests = false,
            traincrab = false,
            avoidmobs = false,
            farmsprouts = false,
            enabletokenblacklisting = false,
            farmunderballoons = false,
            farmsnowflakes = false,
            collectgingerbreads = false,
            collectcrosshairs = false,
            farmpuffshrooms = false,
            tptonpc = false,
            donotfarmtokens = false,
            convertballoons = false,
            autostockings = false,
            autosamovar = false,
            autoonettart = false,
            autocandles = false,
            autofeast = false,
            autoplanters = false,
            autokillmobs = false,
            autoant = false,
            killwindy = false,
            godmode = false,
            disableconversion = false,
            autodonate = false,
            autouseconvertors = false,
            honeymaskconv = false,
            resetbeeenergy = false,
            enablestatuspanel = false,
        },
        vars = {
            field = "Ant Field",
            convertat = 100,
            farmspeed = 60,
            prefer = "Tokens",
            walkspeed = 70,
            jumppower = 70,
            npcprefer = "All Quests",
            farmtype = "Walk",
            monstertimer = 3,
            autodigmode = "Normal",
            donoItem = "Coconut",
            donoAmount = 25,
            selectedTreat = "Treat",
            selectedTreatAmount = 0,
            autouseMode = "Just Tickets",
            autoconvertWaitTime = 10,
            defmask = "Bubble",
            resettimer = 3,
        },
        dispensesettings = {
            blub = false,
            straw = false,
            treat = false,
            coconut = false,
            glue = false,
            rj = false,
            white = false,
            red = false,
            blue = false
        }
    }

    local defaultBabyHub = BabyHub

    getgenv().BabyHubPremium = {
        
    }

--FUNTIONS

    function statsget() local StatCache = require(game.ReplicatedStorage.ClientStatCache) local stats = StatCache:Get() return stats end
    function farm(trying)
        if BabyHub.toggles.loopfarmspeed then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = BabyHub.vars.farmspeed end
        api.humanoid():MoveTo(trying.Position) 
        repeat task.wait() until (trying.Position-api.humanoidrootpart().Position).magnitude <=4 or not IsToken(trying) or not temptable.running
    end

    function disableall()
        if BabyHub.toggles.autofarm and not temptable.converting then
            temptable.cache.autofarm = true
            BabyHub.toggles.autofarm = false
        end
        if BabyHub.toggles.killmondo and not temptable.started.mondo then
            BabyHub.toggles.killmondo = false
            temptable.cache.killmondo = true
        end
        if BabyHub.toggles.killvicious and not temptable.started.vicious then
            BabyHub.toggles.killvicious = false
            temptable.cache.vicious = true
        end
        if BabyHub.toggles.killwindy and not temptable.started.windy then
            BabyHub.toggles.killwindy = false
            temptable.cache.windy = true
        end
    end

    function enableall()
        if temptable.cache.autofarm then
            BabyHub.toggles.autofarm = true
            temptable.cache.autofarm = false
        end
        if temptable.cache.killmondo then
            BabyHub.toggles.killmondo = true
            temptable.cache.killmondo = false
        end
        if temptable.cache.vicious then
            BabyHub.toggles.killvicious = true
            temptable.cache.vicious = false
        end
        if temptable.cache.windy then
            BabyHub.toggles.killwindy = true
            temptable.cache.windy = false
        end
    end

    function gettoken(v3)
        if not v3 then
            v3 = fieldposition
        end
        task.wait()
        for e,r in next, game:GetService("Workspace").Collectibles:GetChildren() do
            itb = false
            if r:FindFirstChildOfClass("Decal") and BabyHub.toggles.enabletokenblacklisting then
                if api.findvalue(BabyHub.bltokens, string.split(r:FindFirstChildOfClass("Decal").Texture, 'rbxassetid://')[2]) then
                    itb = true
                end
            end
            if tonumber((r.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= temptable.magnitude/1.4 and not itb and (v3-r.Position).magnitude <= temptable.magnitude then
                farm(r)
            end
        end
    end

    function makesprinklers()
        sprinkler = rtsg().EquippedSprinkler
        e = 1
        if sprinkler == "Basic Sprinkler" or sprinkler == "The Supreme Saturator" then
            e = 1
        elseif sprinkler == "Silver Soakers" then
            e = 2
        elseif sprinkler == "Golden Gushers" then
            e = 3
        elseif sprinkler == "Diamond Drenchers" then
            e = 4
        end
        for i = 1, e do
            k = api.humanoid().JumpPower
            if e ~= 1 then api.humanoid().JumpPower = 70 api.humanoid().Jump = true task.wait(.2) end
            game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Sprinkler Builder"})
            if e ~= 1 then api.humanoid().JumpPower = k task.wait(1) end
        end
    end

    function killmobs()
        for i,v in pairs(game:GetService("Workspace").MonsterSpawners:GetChildren()) do
            if v:FindFirstChild("Territory") then
                if v.Name ~= "Commando Chick" and v.Name ~= "CoconutCrab" and v.Name ~= "StumpSnail" and v.Name ~= "TunnelBear" and v.Name ~= "King Beetle Cave" and not v.Name:match("CaveMonster") and not v:FindFirstChild("TimerLabel", true).Visible then
                    if v.Name:match("Werewolf") then
                        monsterpart = game:GetService("Workspace").Territories.WerewolfPlateau.w
                    elseif v.Name:match("Mushroom") then
                        monsterpart = game:GetService("Workspace").Territories.MushroomZone.Part
                    else
                        monsterpart = v.Territory.Value
                    end
                    api.humanoidrootpart().CFrame = monsterpart.CFrame
                    repeat api.humanoidrootpart().CFrame = monsterpart.CFrame avoidmob() task.wait(1) until v:FindFirstChild("TimerLabel", true).Visible
                    for i = 1, 4 do gettoken(monsterpart.Position) end
                end
            end
        end
    end

    function IsToken(token)
        if not token then
            return false
        end
        if not token.Parent then return false end
        if token then
            if token.Orientation.Z ~= 0 then
                return false
            end
            if token:FindFirstChild("FrontDecal") then
            else
                return false
            end
            if not token.Name == "C" then
                return false
            end
            if not token:IsA("Part") then
                return false
            end
            return true
        else
            return false
        end
    end

    function check(ok)
        if not ok then
            return false
        end
        if not ok.Parent then return false end
        return true
    end

    function getplanters()
        table.clear(planterst.plantername)
        table.clear(planterst.planterid)
        for i,v in pairs(debug.getupvalues(require(game:GetService("ReplicatedStorage").LocalPlanters).LoadPlanter)[4]) do 
            if v.GrowthPercent == 1 and v.IsMine then
                table.insert(planterst.plantername, v.Type)
                table.insert(planterst.planterid, v.ActorID)
            end
        end
    end

    function farmant()
        antpart.CanCollide = true
        temptable.started.ant = true
        anttable = {left = true, right = false}
        temptable.oldtool = rtsg()['EquippedCollector']
        game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = "Spark Staff",["Category"] = "Collector"})
        game.ReplicatedStorage.Events.ToyEvent:FireServer("Ant Challenge")
        BabyHub.toggles.autodig = true
        acl = CFrame.new(127, 48, 547)
        acr = CFrame.new(65, 48, 534)
        task.wait(1)
        game.ReplicatedStorage.Events.PlayerActivesCommand:FireServer({["Name"] = "Sprinkler Builder"})
        api.humanoidrootpart().CFrame = api.humanoidrootpart().CFrame + Vector3.new(0, 15, 0)
        task.wait(3)
        repeat
            task.wait()
            for i,v in next, game.Workspace.Toys["Ant Challenge"].Obstacles:GetChildren() do
                if v:FindFirstChild("Root") then
                    if (v.Root.Position-api.humanoidrootpart().Position).magnitude <= 40 and anttable.left then
                        api.humanoidrootpart().CFrame = acr
                        anttable.left = false anttable.right = true
                        wait(.1)
                    elseif (v.Root.Position-api.humanoidrootpart().Position).magnitude <= 40 and anttable.right then
                        api.humanoidrootpart().CFrame = acl
                        anttable.left = true anttable.right = false
                        wait(.1)
                    end
                end
            end
        until game:GetService("Workspace").Toys["Ant Challenge"].Busy.Value == false
        task.wait(1)
        game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Equip",{["Mute"] = true,["Type"] = temptable.oldtool,["Category"] = "Collector"})
        temptable.started.ant = false
        antpart.CanCollide = false
    end

    function collectplanters()
        getplanters()
        for i,v in pairs(planterst.plantername) do
            if api.partwithnamepart(v, game:GetService("Workspace").Planters) and api.partwithnamepart(v, game:GetService("Workspace").Planters):FindFirstChild("Soil") then
                soil = api.partwithnamepart(v, game:GetService("Workspace").Planters).Soil
                api.humanoidrootpart().CFrame = soil.CFrame
                game:GetService("ReplicatedStorage").Events.PlanterModelCollect:FireServer(planterst.planterid[i])
                task.wait(.5)
                game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer({["Name"] = v.." Planter"})
                for i = 1, 5 do gettoken(soil.Position) end
                task.wait(2)
            end
        end
    end

    function getprioritytokens()
        task.wait()
        if temptable.running == false then
            for e,r in next, game:GetService("Workspace").Collectibles:GetChildren() do
                if r:FindFirstChildOfClass("Decal") then
                    local aaaaaaaa = string.split(r:FindFirstChildOfClass("Decal").Texture, 'rbxassetid://')[2]
                    if aaaaaaaa ~= nil and api.findvalue(BabyHub.priority, aaaaaaaa) then
                        if r.Name == game.Players.LocalPlayer.Name and not r:FindFirstChild("got it") or tonumber((r.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= temptable.magnitude/1.4 and not r:FindFirstChild("got it") then
                            farm(r) local val = Instance.new("IntValue",r) val.Name = "got it" break
                        end
                    end
                end
            end
        end
    end

    function gethiveballoon()
        task.wait()
        result = false
        for i,hive in next, game:GetService("Workspace").Honeycombs:GetChildren() do
            task.wait()
            if hive:FindFirstChild("Owner") and hive:FindFirstChild("SpawnPos") then
                if tostring(hive.Owner.Value) == game.Players.LocalPlayer.Name then
                    for e,balloon in next, game:GetService("Workspace").Balloons.HiveBalloons:GetChildren() do
                        task.wait()
                        if balloon:FindFirstChild("BalloonRoot") then
                            if (balloon.BalloonRoot.Position-hive.SpawnPos.Value.Position).magnitude < 15 then
                                result = true
                                break
                            end
                        end
                    end
                end
            end
        end
        return result
    end

    function converthoney()
        task.wait(0)
        if temptable.converting then
            if game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text ~= "Stop Making Honey" and game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.BackgroundColor3 ~= Color3.new(201, 39, 28) or (game:GetService("Players").LocalPlayer.SpawnPos.Value.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 13 then
                api.tween(1, game:GetService("Players").LocalPlayer.SpawnPos.Value * CFrame.fromEulerAnglesXYZ(0, 110, 0) + Vector3.new(0, 0, 9))
                task.wait(.9)
                if game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.TextBox.Text ~= "Stop Making Honey" and game.Players.LocalPlayer.PlayerGui.ScreenGui.ActivateButton.BackgroundColor3 ~= Color3.new(201, 39, 28) or (game:GetService("Players").LocalPlayer.SpawnPos.Value.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 13 then game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking") end
                task.wait(.1)
            end
        end
    end

    function closestleaf()
        for i,v in next, game.Workspace.Flowers:GetChildren() do
            if temptable.running == false and tonumber((v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) < temptable.magnitude/1.4 then
                farm(v)
                break
            end
        end
    end

    function getbubble()
        for i,v in next, game.workspace.Particles:GetChildren() do
            if string.find(v.Name, "Bubble") and temptable.running == false and tonumber((v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) < temptable.magnitude/1.4 then
                farm(v)
                break
            end
        end
    end

    function getballoons()
        for i,v in next, game:GetService("Workspace").Balloons.FieldBalloons:GetChildren() do
            if v:FindFirstChild("BalloonRoot") and v:FindFirstChild("PlayerName") then
                if v:FindFirstChild("PlayerName").Value == game.Players.LocalPlayer.Name then
                    if tonumber((v.BalloonRoot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) < temptable.magnitude/1.4 then
                        api.walkTo(v.BalloonRoot.Position)
                    end
                end
            end
        end
    end

    function getflower()
        flowerrrr = flowertable[math.random(#flowertable)]
        if tonumber((flowerrrr-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) <= temptable.magnitude/1.4 and tonumber((flowerrrr-fieldposition).magnitude) <= temptable.magnitude/1.4 then 
            if temptable.running == false then 
                if BabyHub.toggles.loopfarmspeed then 
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = BabyHub.vars.farmspeed 
                end 
                api.walkTo(flowerrrr) 
            end 
        end
    end

    function getcloud()
        for i,v in next, game:GetService("Workspace").Clouds:GetChildren() do
            e = v:FindFirstChild("Plane")
            if e and tonumber((e.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) < temptable.magnitude/1.4 then
                api.walkTo(e.Position)
            end
        end
    end

    function getcoco(v)
        if temptable.coconut then repeat task.wait() until not temptable.coconut end
        temptable.coconut = true
        api.tween(.1, v.CFrame)
        repeat task.wait() api.walkTo(v.Position) until not v.Parent
        task.wait(.1)
        temptable.coconut = false
        table.remove(temptable.coconuts, table.find(temptable.coconuts, v))
    end

    function getfuzzy()
        pcall(function()
            for i,v in next, game.workspace.Particles:GetChildren() do
                if v.Name == "DustBunnyInstance" and temptable.running == false and tonumber((v.Plane.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) < temptable.magnitude/1.4 then
                    if v:FindFirstChild("Plane") then
                        farm(v:FindFirstChild("Plane"))
                        break
                    end
                end
            end
        end)
    end

    function getflame()
        for i,v in next, game:GetService("Workspace").PlayerFlames:GetChildren() do
            if tonumber((v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude) < temptable.magnitude/1.4 then
                farm(v)
                break
            end
        end
    end

    function avoidmob()
        for i,v in next, game:GetService("Workspace").Monsters:GetChildren() do
            if v:FindFirstChild("Head") then
                if (v.Head.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude < 30 and api.humanoid():GetState() ~= Enum.HumanoidStateType.Freefall then
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
            end
        end
    end

    function getcrosshairs(v)
        if v.BrickColor ~= BrickColor.new("Lime green") and v.BrickColor ~= BrickColor.new("Flint") then
        if temptable.crosshair then repeat task.wait() until not temptable.crosshair end
        temptable.crosshair = true
        api.walkTo(v.Position)
        repeat task.wait() api.walkTo(v.Position) until not v.Parent or v.BrickColor == BrickColor.new("Forest green")
        task.wait(.1)
        temptable.crosshair = false
        table.remove(temptable.crosshairs, table.find(temptable.crosshairs, v))
        else
            table.remove(temptable.crosshairs, table.find(temptable.crosshairs, v))
        end
    end

    function makequests()
        for i,v in next, game:GetService("Workspace").NPCs:GetChildren() do
            if v.Name ~= "Ant Challenge Info" and v.Name ~= "Bubble Bee Man 2" and v.Name ~= "Wind Shrine" and v.Name ~= "Gummy Bear" then if v:FindFirstChild("Platform") then if v.Platform:FindFirstChild("AlertPos") then if v.Platform.AlertPos:FindFirstChild("AlertGui") then if v.Platform.AlertPos.AlertGui:FindFirstChild("ImageLabel") then
                image = v.Platform.AlertPos.AlertGui.ImageLabel
                button = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ActivateButton.MouseButton1Click
                if image.ImageTransparency == 0 then
                    if BabyHub.toggles.tptonpc then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Platform.Position.X, v.Platform.Position.Y+3, v.Platform.Position.Z)
                        task.wait(1)
                    else
                        api.tween(2,CFrame.new(v.Platform.Position.X, v.Platform.Position.Y+3, v.Platform.Position.Z))
                        task.wait(3)
                    end
                    for b,z in next, getconnections(button) do    z.Function()    end
                    task.wait(8)
                    if image.ImageTransparency == 0 then
                        for b,z in next, getconnections(button) do    z.Function()    end
                    end
                    task.wait(2)
                end
            end     
        end end end end end
    end

    getgenv().BabyHub = {true,"💖"}

    local function donateToShrine(item,qnt)
        print(qnt)
        local s,e = pcall(function()
        game:GetService("ReplicatedStorage").Events.WindShrineDonation:InvokeServer(item, qnt)
        wait(0.5)
        game.ReplicatedStorage.Events.WindShrineTrigger:FireServer()
        
        local UsePlatform = game:GetService("Workspace").NPCs["Wind Shrine"].Stage
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = UsePlatform.CFrame + Vector3.new(0,5,0)
        
        for i = 1,120 do
        wait(0.05)
        for i,v in pairs(game.Workspace.Collectibles:GetChildren()) do
            if (v.Position-UsePlatform.Position).magnitude < 60 and v.CFrame.YVector.Y == 1 then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
        end
        end
        end)
        if not s then print(e) end
    end

    local function isWindshrineOnCooldown()
        local isOnCooldown = false
        local cooldown = 3600 - (require(game.ReplicatedStorage.OsTime)() - (require(game.ReplicatedStorage.StatTools).GetLastCooldownTime(v1, "WindShrine")))
        if cooldown > 0 then isOnCooldown = true end
        return isOnCooldown
    end

    local function getTimeSinceToyActivation(name)
        return require(game.ReplicatedStorage.OsTime)() - require(game.ReplicatedStorage.ClientStatCache):Get("ToyTimes")[name]
    end

    local function getTimeUntilToyAvailable(n)
        return workspace.Toys[n].Cooldown.Value - getTimeSinceToyActivation(n)
    end

    local function canToyBeUsed(toy)
        local timeleft = tostring(getTimeUntilToyAvailable(toy))
        local canbeUsed = false
        if string.find(timeleft,"-") then canbeUsed = true end
        return canbeUsed
    end

    function GetItemListWithValue()
        local StatCache = require(game.ReplicatedStorage.ClientStatCache)
        local data = StatCache.Get()
        return data.Eggs
    end

    local function useConvertors()
        local conv = {"Instant Converter","Instant Converter B","Instant Converter C"}
        
        local lastWithoutCooldown = nil
        
        for i,v in pairs(conv) do
            if canToyBeUsed(v) == true then
                lastWithoutCooldown = v
            end
        end
        local converted=false
        if lastWithoutCooldown ~= nil and string.find(BabyHub.vars.autouseMode,"Ticket") or string.find(BabyHub.vars.autouseMode,"All") then
            if converted == false then
            game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(lastWithoutCooldown)
            converted=true
            end
        end
        if GetItemListWithValue()["Snowflake"] > 0 and string.find(BabyHub.vars.autouseMode,"Snowflak") or string.find(BabyHub.vars.autouseMode,"All") then
            game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer({["Name"] = "Snowflake"})
        end
            if GetItemListWithValue()["Coconut"] > 0 and string.find(BabyHub.vars.autouseMode,"Coconut") or string.find(BabyHub.vars.autouseMode,"All") then
            game:GetService("ReplicatedStorage").Events.PlayerActivesCommand:FireServer({["Name"] = "Coconut"})
            end
    end

    local function fetchBuffTable(stats)
        local stTab = {}
        if game:GetService("Players").LocalPlayer then
            if game:GetService("Players").LocalPlayer.PlayerGui then
                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:GetChildren()) do
                        if v.Name == "TileGrid" then
                            for p,l in pairs(v:GetChildren()) do
                                if l:FindFirstChild("BG") then
                                    if l:FindFirstChild("BG"):FindFirstChild("Icon") then
                                        local ic = l:FindFirstChild("BG"):FindFirstChild("Icon")
                                        for field,fdata in pairs(stats) do
                                            if fdata["DecalID"]~= nil then
                                                if string.find(ic.Image,fdata["DecalID"]) then
                                                    if ic.Parent:FindFirstChild("Text") then
                                                        if ic.Parent:FindFirstChild("Text").Text == "" then
                                                            stTab[field]=1
                                                        else
                                                            local thing = ""
                                                            thing = string.gsub(ic.Parent:FindFirstChild("Text").Text,"x","")
                                                            stTab[field]=tonumber( thing + 1 )
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        
        return stTab
    end

    local Config = { WindowName = "Kocmoc v"..temptable.version.." Remastered"}
    local Window = library:CreateWindow(Config, game:GetService("CoreGui"))

--BABYHUB MENU TABS

    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local FarmingTab = Window:MakeTab({
        Name = "Farming",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local CombatTab = Window:MakeTab({
        Name = "Combat",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local ItemsTab = Window:MakeTab({
        Name = "Items",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local SettingsTab = Window:MakeTab({
        Name = "Settings",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

--BABYHUB SLIDERS

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

OrionLib:Init()