local root do if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then root = game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.Torso and game.Players.LocalPlayer.Character.PrimaryPart else root = game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.UpperTorso and game.Players.LocalPlayer.Character.LowerTorso and game.Players.LocalPlayer.Character.PrimaryPart end end

local vel = root.Velocity
while true do
    game:GetService'RunService'.PreRender:Wait()
    root.AssemblyLinearVelocity = vel
    game:GetService'RunService'.PreSimulation:Wait()
    root.AssemblyLinearVelocity = vel
    game:GetService'RunService'.PostSimulation:Wait()
    vel = root.Velocity
    root.AssemblyLinearVelocity = Vector3.new(99999999999999999999999999999999999999,99999999999999999999999999999999999999,99999999999999999999999999999999999999)
end