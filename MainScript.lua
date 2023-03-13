if getgenv().script_key == "9Zop0Q9dJRWk1iaD2lEy_SHIROU_fqobu9ZE8VdPPYRWjLiz" then
 
if getgenv().Shirouloaddededededed == true then
return 
end

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local CoreGui = game:GetService("CoreGui");
local Players = game:GetService("Players");
local Workspace = game:GetService("Workspace");
local Lighting = game:GetService("Lighting");
local VirtualInputManager = game:GetService("VirtualInputManager");

-- Local Player
local Player = Players.LocalPlayer;

-- UI Lib
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shirouo/HeadlessForDHCustoms/main/GuiLibrary.lua"))()

-- Main Window
local Window = lib:CreateWindow("Headless")

-- Create Pages
local MainPage = Window:NewTab("Main")

-- Create Sections
local Headless = MainPage:AddSection("Headless")
if game.Players.LocalPlayer.Name == "e8qt" then
local Animations = MainPage:AddSection("Animation and client side head")
end

-- Anti AFK
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

-- My watermark or wtv the fuck lole.
Headless:AddButton("MADE BY SHIROU", "shirou#1077, you cant add me.", function()
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Shirou";
Text = "hehe";
Icon = "rbxassetid://12624498811";
Duration = 5
})
end)

-- The good stuff
Headless:AddButton("Headless", "Reminder, this is only server side on hood customs.", function()
if not game['Loaded'] or not game:GetService('Players')['LocalPlayer'] then
game['Loaded']:Wait();
game:WaitForChild(game:GetService('Players'));
game:GetService('Players'):WaitForChild(game:GetService('Players').LocalPlayer.Name)
end
wait()
repeat game:GetService("RunService").Stepped:Wait() until not game:GetService("Players").LocalPlayer.Character:FindFirstChild("ForceField")
wait()
game.Players.LocalPlayer.Character.Head.Neck:Destroy()
game.Players.LocalPlayer.Character.Head.face:Destroy()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame = CFrame.new(0, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
l = Instance.new("Attachment",game.Players.LocalPlayer.Character.Head)
ll = Instance.new("Attachment",game.Players.LocalPlayer.Character.UpperTorso)
o = Instance.new("AlignOrientation",l)
o.Attachment0 = l
o.Attachment1 = ll
o.ReactionTorqueEnabled = true
o.PrimaryAxisOnly = false
o.MaxTorque = 9999999
o.MaxAngularVelocity = math.huge
o.Responsiveness = 200
wait(5)
game.Players.LocalPlayer.Character.Head.Transparency = getgenv().HeadTransparency
end)
 
Animations:AddButton("get anim", "ok yay", function()
game.Players.LocalPlayer.Character.Humanoid.Jump = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://10921288909"
game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId = "rbxassetid://10921290167"
					wait(1)
game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = "rbxassetid://10921160088"
game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = "rbxassetid://10921148939"
game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://10921152678"
game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://10921148209"
end)
 
Animations:AddButton("client sided headless", "yes", function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Head.MeshId = "rbxassetid://6686307858"
end)

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(dbb)
if string.lower(dbb)==getgenv().GuiToggleKey then if game:GetService("CoreGui").ShirousHub.Frame.Visible==true then game:GetService("CoreGui").ShirousHub.Frame.Visible=false elseif game:GetService("CoreGui").ShirousHub.Frame.Visible==false then
game:GetService("CoreGui").ShirousHub.Frame.Visible=true end end end) getgenv().Shirouloaddededededed = true end
