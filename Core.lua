-- Bee Swarm Script
if game.PlaceId == 1537690962 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/BeeSwarmSimulator.lua"))()
else if game.PlaceId == 7560156054 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThortonEllmers/BabyHub/main/BeeSwarmSimulator.lua?token=GHSAT0AAAAAABUZRXYQFKV5HDRRT6NRUMNIYVJ6ICA"))()
else
	game.Players.LocalPlayer:Kick("\n\n⚠️   Error loading BabyHub   ⚠️\n\nReason:\nThe choosen game is not yet supported by BabyHub.\n\nNeed support?\nDiscord: coming soon\n")
end