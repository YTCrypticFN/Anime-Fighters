local folder = script.Parent
local padIsOneDirectional = folder:WaitForChild("OneWay")
local pad1 = folder:WaitForChild("Pad1")
local pad2 = folder:WaitForChild("Pad2")
local bounce = true

-----------------------

function warpPlayer(player, location)
	
	local HRP = player:WaitForChild("HumanoidRootPart")
	HRP.Position = Vector3.new(location.X, location.Y + 3, location.Z)
	
end

pad1.Touched:Connect(function(hit)
	
	if hit.Parent and hit.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and bounce then
		
		bounce = false
		warpPlayer(hit.Parent, pad2.Position)
		task.wait(1)
		bounce = true
	end
	
end)

pad2.Touched:Connect(function(hit)

	if hit.Parent and hit.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and bounce and padIsOneDirectional.Value == false then

		bounce = false
		warpPlayer(hit.Parent, pad1.Position)
		task.wait(1)
		bounce = true
	end

end)