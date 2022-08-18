WelcomeTab:AddLabel("                               Welcome To BabyHub")
WelcomeTab:AddLabel("           Join The Discord Below To Suggest Features")
WelcomeTab:AddButton({
	Name = "                            Click To Join Our Discord",
	Callback = function()
            game.StarterGui:SetCore("SendNotification", {Title="Discord Link"; Text="Comming\nSoon!"; Duration=10;})
  	end    
})
WelcomeTab:AddLabel("")
WelcomeTab:AddLabel("      Note: Some Features Only Work For Certain Games!")
WelcomeTab:AddButton({
	Name = "                                     Close Game!",
	Callback = function()
            game:Shutdown()
  	end    
})