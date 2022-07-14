repeat wait(0.1) until game:IsLoaded()

--API CALLS

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "💚 BabyHub | Bee Swarm Simulator", HidePremium = true, IntroEnabled = false, IntroText = "Loading BabyHub", SaveConfig = true, ConfigFolder = "BabyHub-Config"})