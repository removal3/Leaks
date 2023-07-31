--[[
Useful services are defined:
Lighting
SoundService
Stats
RunService
ReplicatedStorage
Players
CoreGui
UserInputService
-------------------------------
Please refer to most functions at https://docs.synapse.to/development/script_env.html
Functions:
clipboard(<String> Text)
isnetworkowner(<Instance> Object)
request(<table> options) https://docs.synapse.to/reference/syn_lib.html?highlight=syn.request#request
queueteleport(<string> code)
WaitForChildOfClass(<Instance> object, <ClassName> string)
gethui(<void>) returns to a folder in RobloxGui (CoreGui.RobloxGui)
-------------------------------
loadstring(game:HttpGet'https://raw.githubusercontent.com/removal3/Leaks/main/Advanced%20Roblox%20LuaU.lua')()
]]

repeat task.wait() until game:GetService'Players'.LocalPlayer

local request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local getrenv = getrenv or function() return _G end
local sethiddenproperty = sethiddenproperty or set_hidden_property or set_hidden_prop or function (path, object, value) setscriptable(path, object, value) end
local gethiddenproperty = gethiddenproperty or get_hidden_property or get_hidden_prop or function (path, object) setscriptable(path, object) end
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local clipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
local isnetworkowner = isnetworkowner or function(part) return part.ReceiveAge == 0 end
local global_env = (getgenv and getgenv()) or getfenv(0) or _G
local setfflag = function(fflag, value) game:DefineFastFlag(fflag, value) end
local RunService = game:GetService'RunService'
local ReplicatedStorage = game:GetService'ReplicatedStorage'
local Stats = game:GetService'Stats'
local Players = game:GetService'Players'
local Lighting = game:GetService'Lighting'
local SoundService = game:GetService'SoundService'
local CoreGui = game:GetService'CoreGui' or Players.LocalPlayer.CoreGui
local UserInputService = game:GetService'UserInputService'
local V0 = Vector3.zero

local function WaitForChildOfClass(parent, className)
    local child = parent:FindFirstChildOfClass(className)
    if child then return child end

    return parent.ChildAdded:Wait(function(newChild)
        return newChild:IsA(className)
    end)
end

if not gethui then
	function gethui()
		local folder
		if not game:GetService'RunService':IsStudio() then
			folder = Instance.new('Folder', game:GetService'CoreGui':WaitForChild'RobloxGui')
		else
			folder = Instance.new('Folder', game.Players.LocalPlayer:WaitForChild'PlayerGui')
		end
		return folder
	end
end
