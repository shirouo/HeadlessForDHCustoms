if getgenv().script_key == "9Zop0Q9dJRWk1iaD2lEy_SHIROU_fqobu9ZE8VdPPYRWjLiz" then

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
local Window = lib:CreateWindow("Headless; THIS ONLY WORKS ON HOOD CUSTOMS")

-- Create Pages
local MainPage = Window:NewTab("Main")

-- Create Sections
local Headless = MainPage:AddSection("Headless")

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

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:connect(function(dbb)
if string.lower(dbb)==getgenv().GuiToggleKey then if game:GetService("CoreGui").ShirousHub.Frame.Visible==true then game:GetService("CoreGui").ShirousHub.Frame.Visible=false elseif game:GetService("CoreGui").ShirousHub.Frame.Visible==false then
game:GetService("CoreGui").ShirousHub.Frame.Visible=true end end end) end
