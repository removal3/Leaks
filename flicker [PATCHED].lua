local chr = game.Players.LocalPlayer.Character

for _, welds in pairs(chr:GetDescendants()) do
if welds:IsA("Attachment") or welds:IsA("Weld") then
welds:Destroy()
end
end

for _, hats in pairs(chr:GetChildren()) do
if hats:IsA("Accessory") then
hats.Handle.CFrame = CFrame.new(math.huge,math.huge,math.huge)
hats.Handle.CFrame = CFrame.new(0,0,0)
hats.Handle.CFrame = CFrame.new(9e9,9e9,9e9)
sethiddenproperty(hats, "BackendAccoutrementState", 2)
end
end
