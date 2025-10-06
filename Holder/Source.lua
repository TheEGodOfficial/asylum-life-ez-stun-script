if game.GameId ~= 6749060816 then
	return
end

local function flickcam()
	local cam = workspace.CurrentCamera
	local pos = cam.CFrame.Position
	local rot = cam.CFrame - pos
	cam.CFrame = CFrame.new(pos) * CFrame.Angles(0, math.rad(25), 0) * rot
end
 
local function flickcamback()
	local cam = workspace.CurrentCamera
	local pos = cam.CFrame.Position
	local rot = cam.CFrame - pos
	cam.CFrame = CFrame.new(pos) * CFrame.Angles(0, math.rad(-25), 0) * rot
end
 
local function flickcamrun()
	task.wait(0.28)
	flickcam()
	task.wait(0.185)
	flickcamback()
end

local clickflickenabled = false

game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
	if gpe then
		return
	end
	if input.KeyCode == Enum.KeyCode.L then
		clickflickenabled = not clickflickenabled
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		flickcamrun()
	end
end)
