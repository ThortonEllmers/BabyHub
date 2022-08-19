if not game:IsLoaded() then game.Loaded:Wait(); end

    local idledEvent = game:GetService("Players").LocalPlayer.Idled
    local function disable()
        for _, cn in ipairs(getconnections(idledEvent)) do
            cn:Disable()
        end
    end

    oldConnect = hookfunction(idledEvent.Connect, function(self, ...)
        local cn = oldConnect(self, ...); disable()
        return cn
    end)

    namecall = hookmetamethod(game, "__namecall", function(self, ...)
        if self == idledEvent and getnamecallmethod() == "Connect" then
            local cn = oldConnect(self, ...); disable()
            return cn
        end
        return namecall(self, ...)
    end)

    disable()