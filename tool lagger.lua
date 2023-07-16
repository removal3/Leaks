local amount = "500"

local chr = game.Players.LocalPlayer.Character
local backpack = game.Players.LocalPlayer.Backpack

local rsloop = game:GetService'RunService'.PreRender:Connect(function()
for i = 1,amount do 
for _,v in pairs(backpack:GetChildren()) do
if v:IsA'Tool' and v:FindFirstChild'Handle' then
v.Parent = chr
chr.Humanoid:UnequipTools()
end
end
end
end)
task.wait(5)
rsloop:Disconnect()