--game.Players.LocalPlayer:Kick("\n\n⚠️   Error loading BabyHub   ⚠️\n\nReason:\nThe choosen game is not yet supported by BabyHub.\n\nNeed support?\nDiscord: coming soon\n")

if game.PlaceId == 1537690962 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/BeeSwarmSimulator.lua"))()
elseif game.PlaceId == 9603033881 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hawtdawgz/ScriptRepository/main/Protected.lua"))()
elseif game.PlaceId == 9666226803 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/MotelSimulatorProtected.lua"))()
else 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/AllOtherGames.Lua"))()
end