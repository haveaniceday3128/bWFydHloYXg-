local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/PixCarAtHome/MartyHax/main/UILib.lua"))()
local runService = game:GetService("RunService")
local plr = game.Players.LocalPlayer
local char = plr.Character

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://1283290053"

if not sound.IsLoaded then
	sound.Loaded:Wait()
end

sound:Play()

local animIds = {
   "rbxassetid://9830378842";
   "rbxassetid://9606887464";
   "rbxassetid://9832216197";
   "rbxassetid://9613316754";
   "rbxassetid://10195768664";
   "rbxassetid://10182744456";
   "rbxassetid://9830678613";
   "rbxassetid://9832426360";
   "rbxassetid://9832216197";
   "rbxassetid://9832426360";
   "rbxassetid://9832216197";
   "rbxassetid://9140040601";
   "rbxassetid://9140032892";
   "rbxassetid://9140037647";
   "rbxassetid://9140032892";
   "rbxassetid://11065468510";
   "rbxassetid://9033635329";
   "rbxassetid://9033632351";
   "rbxassetid://9033635329";
   "rbxassetid://9033632351";
   "rbxassetid://10718290567";
   "rbxassetid://9614600746";
   "rbxassetid://9614600746";
   "rbxassetid://9606887464";
   "rbxassetid://10718089490";
   "rbxassetid://9049285540";
   "rbxassetid://9476751471";
   "rbxassetid://10730703615";
   "rbxassetid://9866728447";
}

-- Settings Vars
local SetWalk = 25
local parryDist = 15
local reachDist = 5

function WalkspeedSet (enabled)
   pcall(function()
       if enabled then
           --print("enabled")
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(SetWalk)
       end
   end)
end

local UI = Material.Load({
    Title = "MartyHax Lite",
    Style = 3,
    SizeX = 300,
    SizeY = 400,
    Theme = "Dark"
})

local Home = UI.New({
   Title = "Home"
})

local CombatPage = UI.New({
   Title = "Combat"
})

local UtilityPage = UI.New({
   Title = "Utility"
})

local TeleportsPage = UI.New({
    Title = "Teleports"
})

-- Home page
Home.Button({
   Text = "Welcome!",
   Callback = function()
      --print("Clicked!")
   end
})

Home.Button({
   Text = "MartyHax by Pix#2571",
   Callback = function()
       -- lol
   end
})

Home.Button({
   Text = "Authentication by haveaniceday#3128",
   Callback = function()
       -- lol
   end
})

--[[--------------------------------------------------------------------------------------------]]

local Toggle1 = CombatPage.Toggle({
   Text = "Auto Parry",
   Callback = function(value)
       -- ye
   end,
   Enabled = false
})


local Toggle4 = UtilityPage.Toggle({
   Text = "Walkspeed",
   Callback = function(value)
       print(value)
   end,
   Enabled = false
})

--[[--------------------------------------------------------------------------------------------]]


-- Options Page
local AP_t_D = CombatPage.Slider({
   Text = "AutoParry Trigger Distance",
   Callback = function(value)
       parryDist = value
   end,
   Min = 0,
   Max = 50,
   Def = parryDist
})

   CombatPage.Button({
   Text = "Reach",
   Callback = function()
       for i,v in next, getgc(true) do
           if type(v) == "table" and v.Recharge then
               v.HWidth = 500
               v.HLength = 500
           end
       end
   end,
})

   CombatPage.Button({
   Text = "Weapon Speed",
   Callback = function()
       for i,v in next, getgc(true) do
           if type(v) == "table" and v.SpeedMultiplier then
               v.Recharge = 0.01
               v.WindUp = 0.01
               v.SpeedMultiplier = 1.20
           end
       end
   end
})

local WL_t_D = UtilityPage.Slider({
   Text = "Walkspeed",
   Callback = function(value)
       SetWalk = value
       --print(SetWalk)
   end,
   Min = 0,
   Max = 100,
   Def = SetWalk
})

UtilityPage.Button({
   Text = "HumanoidRootPart Deleter",
   Callback = function()
       local C = game.Players.LocalPlayer.Character
C.Parent = nil
C.HumanoidRootPart:Destroy()
C.Parent = game.workspace
wait()
local Chr = game:GetService("Players").LocalPlayer.Character
local A = getrawmetatable(game)
local B = A.__index
setreadonly(A, false)
A.__index = newcclosure(function(self, key)
   if self == Chr and key == "HumanoidRootPart" then
       return Chr.UpperTorso
   end
   return B(self, key)
end)
   end
})

UtilityPage.Button({
   Text = "Invisiblity",
   Callback = function()
                local savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait()
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-25.95, 84, 3537.55))
            wait(.15)
            local Seat = Instance.new('Seat', game.Workspace)
            Seat.Anchored = false
            Seat.CanCollide = false
            Seat.Name = 'invischair'
            Seat.Transparency = 1
            Seat.Position = Vector3.new(-25.95, 84, 3537.55)
            local Weld = Instance.new("Weld", Seat)
            Weld.Part0 = Seat
            Weld.Part1 = game.Players.LocalPlayer.Character:FindFirstChild("Torso") or game.Players.LocalPlayer.Character.UpperTorso
            wait()
            Seat.CFrame = savedpos
            game.StarterGui:SetCore("SendNotification", {
                Title = "Invis On";
                Duration = 1;
                Text = "";
            })
   end,
})

UtilityPage.Button({
   Text = "Visbility",
   Callback = function()
                workspace:FindFirstChild('invischair'):Remove()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Invis Off";
                Duration = 1;
                Text = "";
            })
   end
})

-- Main Script
spawn(function()
   while true do
       WalkspeedSet(Toggle4:GetState())
       wait(0.1)
   end
end)

function parry()
local VirtualInputManager = game:GetService('VirtualInputManager')
VirtualInputManager:SendMouseButtonEvent(1, 1, 1, true, game, 1)
end

-- Main loop
spawn(function()
while true do
pcall(function()
char = plr.Character
runService.RenderStepped:Wait()
for i, plrChar in next, workspace.Alive:GetChildren() do
if plrChar ~= char then
local anims = plrChar.Humanoid:GetPlayingAnimationTracks()
for _, anim in next, anims do
                       if table.find(animIds, anim.Animation.AnimationId) then
                           if Toggle1:GetState() then
                               if (plrChar.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude <= parryDist and plrChar.Humanoid.Health > 0 and not plrChar.Humanoid.PlatformStand then
   parry()
   end
                           end
                          

wait(0.1) --Prevents mass event firing
end
end
end
end
end)
end
end)
