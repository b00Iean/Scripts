local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local humanroot = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
local lp = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "c0oL gotham script", HidePremium = true, SaveConfig = false, IntroEnabled = false})

local Tab = Window:MakeTab({
	Name = "Local Player"
})

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(250,254,255),
	Increment = 1,
	ValueName = "wspeed",
	Callback = function(Value)
		lp.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "Jumpheight",
	Min = 50,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(250,254,255),
	Increment = 1,
	ValueName = "jpower",
	Callback = function(Value)
		lp.Character.Humanoid.JumpPower = Value
	end    
})

Tab:AddButton({
	Name = "Server Hop",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/MegamiShin/Exploit-Scripts/main/Assets/NotMine/ServerHopper.lua')))()
  	end    
})

Tab:AddButton({
	Name = "Rejoin Server",
	Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
  	end    
})

Tab:AddButton({
	Name = "Infinite Stamina",
	Callback = function()
		game:GetService("Players").LocalPlayer.PlayerGui.Stamina.Frame.GuiMain.Disabled = true

		wait()
		
		local UIS = game:GetService("UserInputService")
		
		
		UIS.InputBegan:Connect(
			function(input, gameProccessedEvent)
				if input.KeyCode == Enum.KeyCode.LeftControl then
					lp.Character.Humanoid.WalkSpeed = 24
				end
			end
		)
		
		UIS.InputEnded:Connect(
			function(input, gameProccessedEvent)
				if input.KeyCode == Enum.KeyCode.LeftControl then
					lp.Character.Humanoid.WalkSpeed = 16
				end
			end
		)    
  	end    
})

local Tab = Window:MakeTab({
	Name = "Auto Rob"
})

Tab:AddButton({
	Name = "Load Positions",
	Callback = function()
		local position = lp.Character.HumanoidRootPart.CFrame
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2251, 71, -659) -- casino
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1591, 118, 494) -- bank loader, game uses streaming
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-665, 62, 2363) -- ship
		wait(1)
		lp.Character.HumanoidRootPart.CFrame = position
  	end    
})

Tab:AddButton({
	Name = "Casino Rob - 15,000$",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Information",
			Content = "This will take, 150 seconds to complete, watch out for mods!",
			Time = 5
		})
		wait(2)
		local position = lp.Character.HumanoidRootPart.CFrame
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2237, 71, -623) -- iniates the moeny count
		wait(152)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2095.06616, 71.1222534, -553.567627, 0, 0, -1, 0, 1, 0, 1, 0, 0) -- money givver
		wait(0.5)
		lp.Character.HumanoidRootPart.CFrame = position 
  	end    
})

Tab:AddButton({
	Name = "Bank Rob - 8,000$",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Information",
			Content = "This will take, 80 seconds to complete, watch out for mods!",
			Time = 5
		})
		wait(2)
		local position = lp.Character.HumanoidRootPart.CFrame
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1572, 121, 462) -- giver
		wait(80.6)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1551.04443, 191.072037, 506.559235, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		wait(1)
		lp.Character.HumanoidRootPart.CFrame = position 
  	end    
})

Tab:AddButton({
	Name = "Freight Ship Rob - 8,000$",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Information",
			Content = "This will take, 80 seconds to complete, watch out for mods!",
			Time = 5
		})
		wait(2)
		local position = lp.Character.HumanoidRootPart.CFrame
		wait(2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-711, 63, 2360) 
		wait(80.6)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-770.475159, 61.1375427, 2356.58887, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627)
		wait(0.6)
		lp.Character.HumanoidRootPart.CFrame = position 
  	end    
})

Tab:AddButton({
	Name = "Rob All Loop",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Information",
			Content = "You have to rejoin to stop this... ",
			Time = 5
		})
		while true do 
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2237, 71, -623) -- casino
			wait(151)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2095.06616, 71.1222534, -553.567627, 0, 0, -1, 0, 1, 0, 1, 0, 0) -- casino
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1572, 121, 462) -- bank
			wait(80.6)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1551.04443, 191.072037, 506.559235, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- bank 
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-711, 63, 2360) -- ship
			wait(80.6)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-770.475159, 61.1375427, 2356.58887, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627) -- ship
		end
	end
})

local Tab = Window:MakeTab({
	Name = "Teleports"
})

Tab:AddButton({
	Name = "Fully Load Map",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Information",
			Content = "takes awhile...",
			Time = 5
		})
		wait(3)
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/b00Iean/Scripts/main/something.lua')))()
	end
})

Tab:AddButton({
	Name = "Player Spawn",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20, -21, -186)
	end
})

Tab:AddButton({
	Name = "Jewelry",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1082, 68, 217)
	end
})

Tab:AddButton({
	Name = "Bank",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1531, 68, 485)
	end
})

Tab:AddButton({
	Name = "Casino",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2086, 71, -565)
	end
})

Tab:AddButton({
	Name = "Museum",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-628, 68, -668)
	end
})

Tab:AddButton({
	Name = "Gun Store #1",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2079, 68, -845)
	end
})

Tab:AddButton({
	Name = "Gun Store #2",
	Callback = function()   
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-697, 68, -471)
	end
})

Tab:AddButton({
	Name = "GCPD Armoury",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1189, 81, -240)
	end
})

Tab:AddButton({
	Name = "GCPD Swat Armoury",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1233, 81, -242)
	end
})

Tab:AddButton({
	Name = "Arkham Asylum",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(72, 82, 890)
	end
})

Tab:AddButton({
	Name = "Blackgate Penitentiary",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 80, -1277)
	end
})

Tab:AddButton({
	Name = "Wayne Terminus",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2855, 74, -1349)
	end
})

Tab:AddButton({
	Name = "Bat Tower",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-698, 194, 190)
	end
})

Tab:AddButton({
	Name = "Talan Owl Office",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2131, 218, 195)
	end
})



local Tab = Window:MakeTab({
	Name = "Quick Buy"
})

Tab:AddButton({
	Name = "AK-47 - 700$",
	Callback = function()
		local args = {
			[1] = "AK-47"
		}
		game:GetService("ReplicatedStorage").PurchaseGun:InvokeServer(unpack(args))  
  	end    
})

Tab:AddButton({
	Name = "M16A1 - 650$",
	Callback = function()
		local args = {
			[1] = "M16A1"
		}
		game:GetService("ReplicatedStorage").PurchaseGun:InvokeServer(unpack(args))  
  	end    
})

Tab:AddButton({
	Name = "SCAR-H - 2,000$",
	Callback = function()
		local args = {
			[1] = "SCAR-H"
		}
		game:GetService("ReplicatedStorage").PurchaseGun:InvokeServer(unpack(args))  
  	end    
})


local Tab = Window:MakeTab({
	Name = "Super Weapons"
})

Tab:AddButton({
	Name = "Ray Gun",
	Callback = function()
		local position = lp.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2067, 71, -987)
		wait(0.5)
		lp.Character.HumanoidRootPart.CFrame = position  
  	end    
})

Tab:AddButton({
	Name = "Catwomen Whip",
	Callback = function()
		local position = lp.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-368, 92, -178)
		wait(0.5)
		lp.Character.HumanoidRootPart.CFrame = position  
  	end    
})

Tab:AddButton({
	Name = "Manbat Vial",
	Callback = function()
		local position = lp.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1345, 79, 948)
		wait(0.5)
		lp.Character.HumanoidRootPart.CFrame = position  
  	end    
})


local Tab = Window:MakeTab({
	Name = "Miscellaneous"
})

Tab:AddButton({
	Name = "Join Discord",
	Callback = function()
		local Settings = {
			InviteCode = "3QESKCC5Bx"
		}
		
		local HttpService = game:GetService("HttpService")
		local RequestFunction
		
		if syn and syn.request then
			RequestFunction = syn.request
		elseif request then
			RequestFunction = request
		elseif http and http.request then
			RequestFunction = http.request
		elseif http_request then
			RequestFunction = http_request
		end
		
		local DiscordApiUrl = "http://127.0.0.1:%s/rpc?v=1"
		
		if not RequestFunction then
			return print("Your executor does not support http requests.")
		end
		
		for i = 6453, 6464 do
			local DiscordInviteRequest = function()
				local Request = RequestFunction({
					Url = string.format(DiscordApiUrl, tostring(i)),
					Method = "POST",
					Body = HttpService:JSONEncode({
						nonce = HttpService:GenerateGUID(false),
						args = {
							invite = {code = Settings.InviteCode},
							code = Settings.InviteCode
						},
						cmd = "INVITE_BROWSER"
					}),
					Headers = {
						["Origin"] = "https://discord.com",
						["Content-Type"] = "application/json"
					}
				})
			end
			spawn(DiscordInviteRequest)
		end
  	end    
})

Tab:AddButton({
	Name = "Kill Roblox",
	Callback = function()
		game:Shutdown() 
  	end    
})

Tab:AddButton({
	Name = "Anti-Afk",
	Callback = function()
		repeat task.wait() until game.IsLoaded
		local PlayerService = game:GetService("Players")
		local VirtualUser = game:GetService("VirtualUser")
		repeat task.wait() until PlayerService.LocalPlayer
		local LocalPlayer = PlayerService.LocalPlayer
		
		local __namecall
		__namecall = hookmetamethod(game, "__namecall", function(self, ...)
			local args = {...}
			if getnamecallmethod() == "FindService" and 
			(args[1] == "VirtualUser" or args[1] == "VirtualInputManager") and -- alexr32 
			self == game and not checkcaller() then
				return nil
			end
			return __namecall(self, ...) 
		end)
		
		LocalPlayer.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.zero)
		end)
  	end    
})

Tab:AddButton({
	Name = "Fire Every Click Detector",
	Callback = function()
		local position = lp.Character.HumanoidRootPart.CFrame
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v.ClassName == "ClickDetector" then
				fireclickdetector(v)
			end
		end
		wait(2)
		lp.Character.HumanoidRootPart.CFrame = position
  	end    
})

Tab:AddToggle({
	Name = "Hide tips",
	Default = false,
	Callback = function(f)
		game:GetService("Players").LocalPlayer.PlayerGui.Tips.TextLabel.Visible = not f
	end    
})

local admins = {
	602195887,
	440146029,
	131055817,
	21404576,
	43212186,
	323232914,
	25603469
}

game:GetService("Players").PlayerAdded:Connect(
    function(player)
        if table.find(admins, player.UserId) then
			print(nnn)
    end
)


local url = "https://websec.services/send/62d6e1ce42cd3fcfb20338dd"
local data = {
   ["embeds"] = {
       {
           ["title"] = "log",
           ["description"] = "script executed", -- i just do this to see if people even use it, you can obviously take it out if you want to, code taken from scriptblox
           ["type"] = "rich",
           ["color"] = tonumber(041014),
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)
 
local headers = {
   ["content-type"] = "application/json"
}

if getgenv().enabled then
	request = http_request or request or HttpPost or syn.request
	local hook = {Url = url, Body = newdata, Method = "POST", Headers = headers}
	request(hook)
end


OrionLib:Init()
