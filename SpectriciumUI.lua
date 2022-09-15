local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
wait(0.1)





local customthemexd = {
        SchemeColor = Color3.fromRGB(0, 166, 58),
        Background = Color3.fromRGB(31, 41, 43),
        Header = Color3.fromRGB(22, 29, 31),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(22, 29, 31)
        }

local Window = Library.CreateLib("Spectricium UI v1.7.4", "Synapse")

--variables
local Animate = game.Players.LocalPlayer.Character.Animate
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local PlayerSection2 = Player:NewSection("animations")
 local PlayerSection3 = Player:NewSection("recomended")
 local ScriptsSection = Player:NewSection("Scripts")
 
 
 
 

 
 
 
 
 
    MainSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
local A_1 = "buyAllSkills"
local A_2 = "Ground"
local Event = game:GetService("Players").TylerBanks7292.ninjaEvent
Event:FireServer(A_1, A_2)

            wait(0.1)
        end
    end)
 
    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)
    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    MainSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    MainSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    PlayerSection:NewSlider("WalkSpeed", "Changes The WalkSpeed", 500, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerSection:NewSlider("JumpPower", "Changes The JumpPower", 1000, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    PlayerSection2:NewLabel("Thanks To Animation Changer")
    PlayerSection2:NewButton("Cartoony", "animation cartoony", function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end)
    
    PlayerSection2:NewButton("levitation", "animation levitation", function()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

PlayerSection2:NewButton("ninja", "animation ninja", function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

PlayerSection2:NewButton("toy", "animation toy", function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

PlayerSection2:NewButton("ghost", "animation ghost", function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

PlayerSection3:NewButton("Cartoony", "animation cartoony", function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end)
    
    PlayerSection3:NewButton("toy", "animation toy", function()
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

    ScriptsSection:NewButton("disigue", "disigue", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\73\110\118\111\111\107\101\114\49\49\47\79\117\116\102\105\116\47\109\97\105\110\47\79\117\116\102\105\116\67\111\112\105\101\114\46\108\117\97\34\44\32\116\114\117\101\41\41\40\41\10")()
notif("Script Loaded Spectricium UI")
    end)
    ScriptsSection:NewButton("Emote R15", "Emote R15", function()
    loadstring(game:HttpGet("https://gitlab.com/Tsuniox/lua-stuff/-/raw/master/R15GUI.lua"))()
    notif("Script Loaded Spectricium UI")
    end)
    
    
    ScriptsSection:NewButton("Troll", "To Troll Other Players", function()
    local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end

local function notif(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "yeet gui Spectricium UI",
		Text = str,
		Icon = "rbxassetid://2005276185",
		Duration = dur or 3
	})
end

--// sds

local h = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
Main.Size = UDim2.new(0, 454, 0, 218)
Main.Image = "rbxassetid://2005276185"

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 454, 0, 44)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(0, 454, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "FE Yeet Gui (trollface edition) Spectricium UI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
TextBox.Size = UDim2.new(0, 388, 0, 62)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Who do i destroy(can be shortened, Trolled)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
TextButton.Size = UDim2.new(0, 359, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Troll"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
	local Target = gplr(TextBox.Text)
	if Target[1] then
		Target = Target[1]
		
		local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(9999,9999,9999)
		Thrust.Name = "YeetForce"
		repeat
			lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
			Thrust.Location = Target.Character.HumanoidRootPart.Position
			game:FindService("RunService").Heartbeat:wait()
		until not Target.Character:FindFirstChild("Head")
	else
		notif("Invalid player Spectricium UI")
		h:Destroy()
	end
end)



--//fsddfsdf
notif("Loaded successfully! Created by scuba#0001 Loaded By Spectricium UI", 5)
    end)
    
    local HumanCharacter = game.Players.LocalPlayer.Character.Humanoid
    local HumanCharacter2 = game.Players.LocalPlayer.Character.Head
    local HumanCharacter3 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local PlayerCharacter = game.Players.LocalPlayer.Character.Humanoid
    local ReplicatedStorageGame = game.ReplicatedStorage
    
    
    local function notif(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "Exploit Spectricium UI",
		Text = str,
		Icon = "rbxassetid://10788696146",
		Duration = dur or 7
	})
end
    
        local function notif2(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "Exploit Spectricium UI",
		Text = str,
		Icon = "http://www.roblox.com/asset/?id=10788696146",
		Duration = dur or 7
	})
end
    
    
    PlayerSection:NewButton("Reset", "Reset", function()
    game:GetService("Players").LocalPlayer.Character["Head"]:Destroy()
    game:GetService("Players").LocalPlayer.Character["Torso"]:Destroy()
    game:GetService("Players").LocalPlayer.Character["Left Arm"]:Destroy()
    game:GetService("Players").LocalPlayer.Character["Right Arm"]:Destroy()
    game:GetService("Players").LocalPlayer.Character["Left Leg"]:Destroy()
    game:GetService("Players").LocalPlayer.Character["Right Leg"]:Destroy()
    game:GetService("Players").LocalPlayer.Character["Humanoid"]:Destroy()
    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"]:Destroy()
    notif("Script Loaded Spectricium UI")
    end)
    
        PlayerSection:NewButton("2000 Health", "Puts 2000 Of Health", function()
    HumanCharacter.MaxHealth = 2000
    wait(0.00000000001)
    HumanCharacter.Health = 2000
    notif("Script Loaded Spectricium UI")
    end)
    
    
            PlayerSection:NewButton("Default Health", "Puts The Default Of Health", function()
    HumanCharacter.MaxHealth = 100
    wait(0.00000000001)
    HumanCharacter.Health = 100
    notif("Script Loaded Spectricium UI")
    end)
    
                ScriptsSection:NewButton("Infinite Yield", "Obiosly", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
notif("Script Loaded Spectricium UI")
    end)
    
    
    
    ScriptsSection:NewButton("Remote Spy", "Obiosly", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HoodProject/Espa-oles/main/Turtle%20Spy.lua"))()
    notif("Script Loaded Spectricium UI")
    end)
    
    ScriptsSection:NewButton("Dex Explorer", "Obiosly", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
    notif("Script Loaded Spectricium UI")
    end)
    
    ScriptsSection:NewButton("Dex Explorer 2", "Obiosly", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HoodProject/Espa-oles/main/Dex%20Explorer.lua"))()
    notif("Script Loaded Spectricium UI")
    end)
    
    ScriptsSection:NewButton("Dex Explorer 3", "Obiosly", function()
    loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
    notif("Script Loaded Spectricium UI")
    end)
    
    ScriptsSection:NewButton("Dex Explorer 4", "Obiosly", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
    notif("Script Loaded Spectricium UI")
    end)
    
    
    
    ScriptsSection:NewButton("Murder Mystery 2 Script", "Obiosly", function()
    loadstring(game:HttpGet"https://pastebin.com/raw/08rR3ie9")()
    
    notif("Script Loaded Spectricium UI")
    end)
    
    
    
    
    
    ScriptsSection:NewButton("My GUI Script", "By TylerBanks7292", function()
    
    local h = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
Main.Size = UDim2.new(2, 524, 17, 262)
Main.Image = "rbxassetid://2005276185"

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 504, 0, 70)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(0, 454, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "By TylerBanks7292 Spectricium UI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
TextBox.Size = UDim2.new(0, 388, 0, 62)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
TextButton.Size = UDim2.new(0, 359, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "..."
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
    print("clicked")
    end)
    
    
ScriptsSection:NewButton("BrookHaven Script", "Obiosly", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
notif("Script Loaded Spectricium UI")
end)








notif("Loaded Spectricium UI")





PlayerSection:NewButton("No Death Sceen", "Deletes The Death Screen", function()
game:GetService("Players").LocalPlayer.PlayerGui.DeathScreen:Destroy()
notif("Script Loaded Spectricium UI")
end)


PlayerSection:NewButton("Complete All Missions", "Complete All Missions For You", function()
game:GetService("Players").LocalPlayer.Missions.Mission3.Mission3Complete.Value = true
game:GetService("Players").LocalPlayer.Missions.Mission2.Mission2Complete.Value = true
game:GetService("Players").LocalPlayer.Missions.Mission1.Mission1Complete.Value = true
notif("Script Loaded Spectricium UI")
end)

PlayerSection:NewButton("No Ragdoll", "Quits The Ragdoll", function()
game:GetService("Players").LocalPlayer.Character["Ragdoll On Death"]:Destroy()
notif("Script Loaded Spectricium UI")
end)



PlayerSection:NewButton("No Regeneration", "Quits The Regeneration", function()
game:GetService("Players").LocalPlayer.Character.Health:Destroy()
notif("Script Loaded Spectricium UI")
end)



PlayerSection:NewTextBox("Health", "Puts The Health To Any Of you want", function(txt)
	game:GetService("Players").LocalPlayer.Character.Humanoid.MaxHealth = txt
	wait()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Health = txt
end)

PlayerSection:NewTextBox("WalkSpeed", "Puts The WalkSpeed To Any Of you want", function(txt)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

PlayerSection:NewTextBox("JumpPower", "Puts The JumpPower To Any Of you want", function(txt)
	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = txt
end)

PlayerSection:NewTextBox("Crash Player", "Crash The Player", function(txt)
local playertxt = game.Players[txt]
playertxt:Kick("What Are U Doing!?!?!?!?!!!!")
end)

PlayerSection:NewButton("Noclip", "Noclip", function()
local noclipplayer = game:GetService("Players").LocalPlayer
	local noclipmouse = noclipplayer:GetMouse()
	
	local donoclip = false
	local noclip = false
	
	function b_noclip(key)
		if (key == "b") then
			if noclip == false then
				donoclip = true
				
				noclip = true
			elseif noclip == true then
				donoclip = false
				
				noclip = false
			end
		end
	end
	
	noclipmouse.KeyDown:connect(b_noclip)
	
	game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
		if obj ~= workspace.Terrain then
			if donoclip == true then
				obj.CanCollide = false
			else
				obj.CanCollide = true
			end
		end
	end)
notif("Script Loaded Spectricium UI")
notif("To Turn On Off Press B")
end)
