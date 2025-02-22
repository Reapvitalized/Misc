local Main = {}
function Main:TypeWrite(txt,col,outlinecol)
task.spawn(function()
local re = false
local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local PName = Instance.new("TextLabel")
local Text = Instance.new('Sound', workspace);
Text.SoundId="rbxassetid://5093601873";Text.Looped=false;
Text.Volume = 5;Text.Name='Text'
pcall(function()
game.Players.LocalPlayer.Character.Head.Text:Destroy()
workspace.Text:Destroy()
end)
HealthBar.Name = "Text"
HealthBar.Parent = game.Players.LocalPlayer.Character.Head
HealthBar.ExtentsOffset = Vector3.new(0, 1, 0)
HealthBar.Size = UDim2.new(4, 0, 2, 0)
HealthBar.ZIndexBehavior = Enum.ZIndexBehavior.Global
Frame.Parent = HealthBar
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundTransparency = 1
PName.Position = UDim2.new(-1.0919999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.Antique
PName.Text = ""
PName.TextColor3 = col
PName.TextScaled = true
PName.TextSize = 3
PName.TextStrokeColor3 = outlinecol
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextYAlignment = Enum.TextYAlignment.Top
Frame.ZIndex = 15
spawn(function()
for i = 1,355 do 
PName.Rotation = math.cos(i/35)*2
task.wait(.01) end end)
function tw(s)
local a = ""
local s_l = #s
for i = 1, s_l do
Text:Play()
local c = string.sub(s, i, i)
a = a .. c
PName.Text = a
if c == "." then
wait(.6)
elseif c == ";" then
wait(.3)
elseif c == "," then
wait(.3)
elseif c == "!" then
wait(.3)
end
wait(.03)
end end
tw(txt)
task.wait(2)
HealthBar:Destroy()
end)
end
