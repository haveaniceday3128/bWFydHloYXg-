--Reminder to change the name and shit since I keep forgetting...
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/PixCarAtHome/MartyHax/main/UILib.lua"))()
local runService = game:GetService("RunService")
local plr = game.Players.LocalPlayer
local char = plr.Character

local debounce = false
local cooldown = 0.8

local uis = Game:GetService("UserInputService")


uis.InputBegan:connect(function(inst)
  if inst.UserInputType == Enum.UserInputType.MouseButton1 then
      if debounce == false then
          debounce = true
          wait(cooldown)
          debounce = false
      end
  end
end)

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

ScreenGui.Name = "Blatant Watermark"
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Position = UDim2.new(0.114306785, 0, 0.953865409, 0)
TextLabel.Size = UDim2.new(0, 151, 0, 44)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "MartyHax Blatant Executed, use the Control Module"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.500
TextLabel.TextWrapped = true

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://1283290053"

if not sound.IsLoaded then
	sound.Loaded:Wait()
end

sound:Play()

local animIds = {
    "rbxassetid://9388007530";
    "rbxassetid://9388048957";
    "rbxassetid://9388007530";
    "rbxassetid://9388048957";
    "rbxassetid://9832216197";
    "rbxassetid://9832426360";
    "rbxassetid://9832216197";
    "rbxassetid://9832426360";
    "rbxassetid://9830678613";
    "rbxassetid://9606887464";
    "rbxassetid://9832216197";
    "rbxassetid://9613316754";
    "rbxassetid://10182744456";
    "rbxassetid://10195768664";
    "rbxassetid://9830378842";
    "rbxassetid://10718290567";
    "rbxassetid://9614600746";
    "rbxassetid://9614600746";
    "rbxassetid://9606887464";
    "rbxassetid://10718089490";
    "rbxassetid://9614600746";
    "rbxassetid://9613316754";
    "rbxassetid://9623992231";
    "rbxassetid://9606887464";
    "rbxassetid://9681756802";
    "rbxassetid://9830378842";
    "rbxassetid://9140032892";
    "rbxassetid://9140037647";
    "rbxassetid://9140032892";
    "rbxassetid://9140040601";
    "rbxassetid://9610581774";
}

local dodgeIds = {
    "rbxassetid://10620241792";
    "rbxassetid://7309835432";
    "rbxassetid://9605119856";
    "rbxassetid://9033632351";
    "rbxassetid://9033635329";
    "rbxassetid://9033632351";
    "rbxassetid://9033633924";
    "rbxassetid://9087289517";
    "rbxassetid://9185633387";
    "rbxassetid://9614600746";
    "rbxassetid://10218213093";
}

local whirligigIds = {
    "rbxassetid://10630402364";
    "rbxassetid://10630980051";
    "rbxassetid://10630821574";
    "rbxassetid://10630714287";
    "rbxassetid://10630086664";
}

-- Settings Vars
local SetWalk = 25
local parryDist = 15
local APDelay = 0.3
local dodgeDist = 15
local SpeedMult = 1

function WalkspeedSet (enabled)
   pcall(function()
       if enabled then
           --print("enabled")
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(SetWalk)
       end
   end)
end

local UI = Material.Load({
    Title = "MartyHax Blatant",
    Style = 3,
    SizeX = 300,
    SizeY = 400,
    Theme = "Light"
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
   Text = "Authentication by squarescape#3128",
   Callback = function()
       -- lol
   end
})

--[[--------------------------------------------------------------------------------------------]]

local Toggle1 = CombatPage.Toggle({
   Text = "AutoParry",
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

local coomzone = CombatPage.Slider({
   Text = "AutoParry Delay",
   Callback = function(value)
       APDelay = value
   end,
   Min = 0.1,
   Max = 2,
   Def = APDelay
})

local asehaeh = CombatPage.Toggle({
   Text = "AutoDodge",
   Callback = function(value)
       -- ye
   end,
   Enabled = false
})

local DD = CombatPage.Slider({
   Text = "AutoDodge Trigger Distance",
   Callback = function(value)
       dodgeDist = value
   end,
   Min = 0,
   Max = 50,
   Def = dodgeDist
})

local WS = CombatPage.Toggle({
   Text = "Weapon Speed",
   Callback = function()
   
   end
})

   CombatPage.Slider({
   Text = "Weapon Speed Multiplier",
   Callback = function(value)
       SpeedMult = value
   end,
   Min = 1,
   Max = 100,
   Def = SpeedMult
})

local IS = CombatPage.Toggle({
   Text = "Infinite Stamina",
   Callback = function()

end
})

   CombatPage.Button({
   Text = "Auto-Fire Moves (Relog to disable)",
   Callback = function()
       local uis = Game:GetService("UserInputService")
local VirtualInputManager = game:GetService('VirtualInputManager')



uis.InputBegan:connect(function(input, gameProcessedEvent)
  if input.UserInputType == Enum.UserInputType.Keyboard then
      if input.KeyCode == Enum.KeyCode.Two then
          task.wait(0.2)
          VirtualInputManager:SendMouseButtonEvent(1, 1, 0, true, game, 1)
          task.wait(0.1)
          VirtualInputManager:SendKeyEvent(true, "One", false, game)
end
end
end)

uis.InputBegan:connect(function(input, gameProcessedEvent)
  if input.UserInputType == Enum.UserInputType.Keyboard then
      if input.KeyCode == Enum.KeyCode.Three then
          task.wait(0.2)
          VirtualInputManager:SendMouseButtonEvent(1, 1, 0, true, game, 1)
          task.wait(0.1)
          VirtualInputManager:SendKeyEvent(true, "One", false, game)
end
end
end)

uis.InputBegan:connect(function(input, gameProcessedEvent)
  if input.UserInputType == Enum.UserInputType.Keyboard then
      if input.KeyCode == Enum.KeyCode.Four then
          task.wait(0.2)
          VirtualInputManager:SendMouseButtonEvent(1, 1, 0, true, game, 1)
          task.wait(0.1)
          VirtualInputManager:SendKeyEvent(true, "One", false, game)
end
end
end)

uis.InputBegan:connect(function(input, gameProcessedEvent)
  if input.UserInputType == Enum.UserInputType.Keyboard then
      if input.KeyCode == Enum.KeyCode.Five then
          task.wait(0.2)
          VirtualInputManager:SendMouseButtonEvent(1, 1, 0, true, game, 1)
          task.wait(0.1)
          VirtualInputManager:SendKeyEvent(true, "One", false, game)
end
end
end)
   end,
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

UtilityPage.Button({
   Text = "Lite Mode",
   Callback = function()
   game.StarterGui:SetCore("SendNotification", {
           Title = "Lite Mode Activated";
           Duration = 1;
           Text = "";
   })
   local litemodeswitch = Instance.new("Sound", game.Workspace)
   litemodeswitch.SoundId = "rbxassetid://4612384434"

   if not litemodeswitch.IsLoaded then
	litemodeswitch.Loaded:Wait()
   end

   litemodeswitch:Play()
   game:GetService("CoreGui")["MartyHax Blatant"]:Destroy()
   game:GetService("CoreGui")["Blatant Watermark"]:Destroy()
   wait(0.01)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/PixCarAtHome/MartyHax/main/MHLite.lua"))()
   end
})

-- Main Script
spawn(function()
   while true do
       WalkspeedSet(Toggle4:GetState())
       task.wait(0.1)
   end
end)

function parry()
local VirtualInputManager = game:GetService('VirtualInputManager')
print("Parry Activation")
wait(APDelay)
VirtualInputManager:SendMouseButtonEvent(1, 1, 1, true, game, 1)
end

function dodge()
game:GetService("ReplicatedStorage").Dash:InvokeServer()
end

function infinitestamina()
game:GetService("Players").LocalPlayer.Backpack.Stamina:Destroy() -- change to your path
local new = Instance.new("IntValue", game:GetService("Players").LocalPlayer.Backpack) -- also change to your path
new.Name = "Stamina"
new.Value = "100"
end

function weaponspeed()
           for i,v in next, getgc(true) do
           if type(v) == "table" and v.Recharge then
               v.Recharge = 0.01
               v.WindUp = 0.01
               v.SpeedMultiplier = SpeedMult
               v.WeaponArtRecharge = 0.01
           end
      end
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
                               if debounce == false then
                               if (plrChar.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude <= parryDist and plrChar.Humanoid.Health > 0 and not plrChar.Humanoid.PlatformStand then
   parry()
   end
                           end end
                          

wait(0.3)
end
end
end
end
end)
end
end)

spawn(function()
while true do
pcall(function()
char = plr.Character
runService.RenderStepped:Wait()
for i, plrChar in next, workspace.Alive:GetChildren() do
if plrChar ~= char then
local anims = plrChar.Humanoid:GetPlayingAnimationTracks()
for _, anim in next, anims do
                       if table.find(dodgeIds, anim.Animation.AnimationId) then
                           if asehaeh:GetState() then
                               if debounce == false then
                               if (plrChar.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude <= dodgeDist and plrChar.Humanoid.Health > 0 and not plrChar.Humanoid.PlatformStand then
   dodge()
   end
                           end end
                          

wait(0.3)
end
end
end
end
end)
end
end)

spawn(function()
while true do
pcall(function()
char = plr.Character
runService.RenderStepped:Wait()
for i, plrChar in next, workspace.Alive:GetChildren() do
if plrChar ~= char then
local anims = plrChar.Humanoid:GetPlayingAnimationTracks()
for _, anim in next, anims do
                       if table.find(whirligigIds, anim.Animation.AnimationId) then
                           if asehaeh:GetState() then
                               if debounce == false then
                               if (plrChar.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude <= dodgeDist and plrChar.Humanoid.Health > 0 and not plrChar.Humanoid.PlatformStand then
   dodge()
   end
                           end end
                          

wait(0.3)
end
end
end
end
end)
end
end)

spawn(function()
while true do
pcall(function()
char = plr.Character
runService.RenderStepped:Wait()
for i, plrChar in next, workspace.Alive:GetChildren() do
if plrChar ~= char then
    if WS:GetState() then
   weaponspeed()
end
end
end
end)
wait(1.5)
end
end)

spawn(function()
while true do
pcall(function()
char = plr.Character
runService.RenderStepped:Wait()
for i, plrChar in next, workspace.Alive:GetChildren() do
if plrChar ~= char then
    if IS:GetState() then
   infinitestamina()
end
end
end
end)
wait(1.5)
end
end)

-- Teleports tab
TeleportsPage.Button({
	Text = "Sanction",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.5704155, 471.243195, 1146.49146, 0.991448581, 0, 0.130497962, 0, 1, 0, -0.130497962, 0, 0.991448581)
	end
 })

 

 TeleportsPage.Button({
	Text = "Elder One's Conduit",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.379517, 313.685333, 1432.37793, 0.913549721, 0, 0.406727046, 0, 1, 0, -0.406727046, 0, 0.913549721)
	end
 })
 
 TeleportsPage.Button({
	Text = "Harvest",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71.8545685, -266.542847, 858.611938, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	end
 })
 
  TeleportsPage.Button({
	Text = "The Drain (W.I.P Area)",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1838.29443, -634.047058, 508.572784, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	end
 })
