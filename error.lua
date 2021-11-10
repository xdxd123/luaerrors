local toolName = script.Parent.Parent.ToolValue.Value
local count = script.Parent.Parent.Count.Value
local amount = script.Parent.Parent.Amount.Value
counter = amount
local Players = game:GetService("Players")
local Player = game.Players.LocalPlayer
local timeplayed = Player.leaderstats.Time


local cd = game.Workspace.Rossi.ClickDetector

cd.MouseClick:Connect(function(plr) 
	if plr.leaderstats.TimePlayed.Value > 5 then
		if plr.Backpack:FindFirstChild(toolName) == nil then
			if script.Parent.Parent.Count.Value > 0 then
				local tool = game.Lighting[toolName]:Clone()
				tool.Parent = plr.Backpack
				script.Parent.Parent.Count.Value = script.Parent.Parent.Count.Value - 1
				script.Parent.Parent.Surface.SurfaceGui.TextLabel.Text = tostring(script.Parent.Parent.Count.Value).."/"..tostring(amount)
				--script.Parent.Parent.BillboardGui.TextLabel.Text = tostring(count).."/20"
               end
		end)
end