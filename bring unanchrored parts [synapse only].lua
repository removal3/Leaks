for _,v in pairs(workspace:GetDescendants()) do
    if v:IsA'BasePart' and v.Anchored == false and isnetworkowner(v) then
        v.CFrame = game.Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'.RootPart.CFrame
    end
end
