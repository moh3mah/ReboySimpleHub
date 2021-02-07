-- Simple ESP GUI

-- Instances:

local SimpleESP = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Top = Instance.new("TextLabel")
local Icon = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local hideshow = Instance.new("TextButton")
local hideshowinfo = Instance.new("TextButton")
local togteamch = Instance.new("TextButton")
local ESPFrame = Instance.new("BillboardGui")
local Frame_2 = Instance.new("Frame")
local ESPInfo = Instance.new("BillboardGui")
local ESPName = Instance.new("TextLabel")
--local abouterr = Instance.new("TextLabel")

--Properties:

SimpleESP.Name = "SimpleESP"
SimpleESP.Parent = game.CoreGui
SimpleESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SimpleESP.ResetOnSpawn = false

Frame.Parent = SimpleESP
Frame.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Frame.BackgroundTransparency = 0.500
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.380382776, 0, 0.250783712, 0)
Frame.Size = UDim2.new(0.239234447, 0, 0.344827592, 0)

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.fromRGB(230, 230, 20)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0.0909090936, 0)
Top.Font = Enum.Font.SourceSans
Top.Text = "Simple ESP"
Top.TextColor3 = Color3.fromRGB(255, 255, 255)
Top.TextScaled = true
Top.TextSize = 14.000
Top.TextStrokeTransparency = 0.000
Top.TextWrapped = true
Top.TextXAlignment = Enum.TextXAlignment.Right

Icon.Name = "Icon"
Icon.Parent = Top
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 0.900
Icon.BorderSizePixel = 0
Icon.Size = UDim2.new(0.100000001, 0, 1, 0)
Icon.Image = "rbxassetid://6166150813"

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 0.909

hideshow.Name = "hideshow"
hideshow.Parent = Frame
hideshow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hideshow.BorderSizePixel = 0
hideshow.Position = UDim2.new(0.214999989, 0, 0.281818211, 0)
hideshow.Size = UDim2.new(0.564999998, 0, 0.118181817, 0)
hideshow.Font = Enum.Font.SourceSans
hideshow.Text = "Hide ESP"
hideshow.TextColor3 = Color3.fromRGB(0, 0, 0)
hideshow.TextScaled = true
hideshow.TextSize = 14.000
hideshow.TextWrapped = true

hideshowinfo.Name = "hideshowinfo"
hideshowinfo.Parent = Frame
hideshowinfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hideshowinfo.BorderSizePixel = 0
hideshowinfo.Position = UDim2.new(0.214999989, 0, 0.440909088, 0)
hideshowinfo.Size = UDim2.new(0.564999998, 0, 0.118181817, 0)
hideshowinfo.Font = Enum.Font.SourceSans
hideshowinfo.Text = "Hide ESPInfo"
hideshowinfo.TextColor3 = Color3.fromRGB(0, 0, 0)
hideshowinfo.TextScaled = true
hideshowinfo.TextSize = 14.000
hideshowinfo.TextWrapped = true

togteamch.Name = "togteamch"
togteamch.Parent = Frame
togteamch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
togteamch.BorderSizePixel = 0
togteamch.Position = UDim2.new(0.214999989, 0, 0.599999964, 0)
togteamch.Size = UDim2.new(0.564999998, 0, 0.118181817, 0)
togteamch.Font = Enum.Font.SourceSans
togteamch.Text = "Team Check: Off"
togteamch.TextColor3 = Color3.fromRGB(0, 0, 0)
togteamch.TextScaled = true
togteamch.TextSize = 14.000
togteamch.TextWrapped = true

ESPFrame.Name = "ESPFrame"
ESPFrame.Parent = Frame
ESPFrame.Enabled = false
ESPFrame.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ESPFrame.Active = true
ESPFrame.AlwaysOnTop = true
ESPFrame.LightInfluence = 1.000
ESPFrame.Size = UDim2.new(6, 0, 4, 0)

Frame_2.Parent = ESPFrame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Frame_2.BackgroundTransparency = 0.500
Frame_2.Position = UDim2.new(0.25, 0, 0.5, 0)
Frame_2.Size = UDim2.new(0.5, 0, 0.5, 0)

ESPInfo.Name = "ESPInfo"
ESPInfo.Parent = Frame
ESPInfo.Enabled = false
ESPInfo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ESPInfo.Active = true
ESPInfo.AlwaysOnTop = true
ESPInfo.LightInfluence = 1.000
ESPInfo.Size = UDim2.new(0, 300, 0, 50)

ESPName.Name = "ESPName"
ESPName.Parent = ESPInfo
ESPName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPName.BackgroundTransparency = 1.000
ESPName.Size = UDim2.new(1, 0, 0.5, 0)
ESPName.Font = Enum.Font.SourceSans
ESPName.Text = "Name: | Health: "
ESPName.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPName.TextScaled = true
ESPName.TextSize = 14.000
ESPName.TextStrokeTransparency = 0.000
ESPName.TextWrapped = true

--[[
abouterr.Name = "abouterr"
abouterr.Parent = Frame
abouterr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
abouterr.BackgroundTransparency = 1.000
abouterr.Position = UDim2.new(0, 0, 0.7, 0)
abouterr.Size = UDim2.new(1, 0, 0.3, 0)
abouterr.Font = Enum.Font.SourceSans
abouterr.Text = "If an error occurs, wait 1 seconds and it will be fixed."
abouterr.TextColor3 = Color3.fromRGB(0, 0, 0)
abouterr.TextScaled = true
abouterr.TextSize = 14.000
abouterr.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
abouterr.TextStrokeTransparency = 0.000
abouterr.TextWrapped = true
]]--

-- Scripts:

local function APHRRIZ_fake_script() -- Frame.MainScript 
	local script = Instance.new('LocalScript', Frame)
	script.Name = "MainScript"

	local firsttopcolorR = 230
	local firsttopcolorG = 230
	local firsttopcolorB = 20
	local TwS = game:GetService("TweenService")
	local onmouseenter = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(firsttopcolorR + 20, firsttopcolorG + 20, firsttopcolorB + 20)})
	local onmouseleave = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(firsttopcolorR, firsttopcolorG, firsttopcolorB)})
	local onclicked = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(firsttopcolorR - 20, firsttopcolorG - 20, firsttopcolorB - 20)})
	script.Parent.Top.Active = true
	script.Parent.Top.Selectable = true
	script.Parent.Top.MouseEnter:Connect(function()
		onmouseenter:Cancel()
		onmouseleave:Cancel()
		onclicked:Cancel()
		wait()
		onmouseenter:Play()
	end)
	script.Parent.Top.MouseLeave:Connect(function()
		onmouseenter:Cancel()
		onmouseleave:Cancel()
		onclicked:Cancel()
		wait()
		onmouseleave:Play()
	end)
	script.Parent.Top.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			onmouseenter:Cancel()
			onmouseleave:Cancel()
			onclicked:Cancel()
			wait()
			onclicked:Play()
		end
	end)
	script.Parent.Top.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			onmouseenter:Cancel()
			onmouseleave:Cancel()
			onclicked:Cancel()
			wait()
			onmouseenter:Play()
		end
	end)
	function drag(gui)
		local UserInputService = game:GetService("UserInputService")

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end
	drag(script.Parent)
	-- Main
	local hided = false
	local infohided = false
	local teamcheck = false

	script.Parent.hideshow.MouseButton1Click:Connect(function()
		if hided == false then
			hided = true
			script.Parent.hideshow.Text = "Show ESP"
		else
			hided = false
			script.Parent.hideshow.Text = "Hide ESP"
		end
	end)
	script.Parent.hideshowinfo.MouseButton1Click:Connect(function()
		if infohided == false then
			infohided = true
			script.Parent.hideshowinfo.Text = "Show ESPInfo"
		else
			infohided = false
			script.Parent.hideshowinfo.Text = "Hide ESPInfo"
		end
	end)
	script.Parent.togteamch.MouseButton1Click:Connect(function()
		if teamcheck == false then
			teamcheck = true
			script.Parent.togteamch.Text = "Team Check: On"
		else
			teamcheck = false
			script.Parent.togteamch.Text = "Team Check: Off"
		end
	end)
	function createesp(plr,chr)
		if plr.Character ~= nil then
			spawn(function()
				local suc,err = pcall(function()
					plr.Character:WaitForChild("Head")
				end)
				if suc == false then
					print(err)
					return
				end
				if plr.Character:FindFirstChild("Head"):FindFirstChild("ESPFrame") or plr.Character:FindFirstChild("Head"):FindFirstChild("ESPInfo") then
					plr.Character:FindFirstChild("Head"):FindFirstChild("ESPFrame"):Destroy()
					plr.Character:FindFirstChild("Head"):FindFirstChild("ESPInfo"):Destroy()
				end
				local espfr = script.Parent.ESPFrame:Clone()
				local espin = script.Parent.ESPInfo:Clone()
				espfr.Parent = plr.Character:WaitForChild("Head")
				espin.Parent = plr.Character:WaitForChild("Head")
				espfr.Adornee = plr.Character:WaitForChild("Head")
				espin.Adornee = plr.Character:WaitForChild("Head")
				if teamcheck == true then
					if plr.Team == game.Players.LocalPlayer.Team then
						espfr.Enabled = false
						espin.Enabled = false
					else
						espfr.Enabled = true
						espin.Enabled = true
					end
				else
					espfr.Enabled = true
					espin.Enabled = true
				end
				if infohided == true then
					espin.Enabled = false
				end
				if hided == true then
					espfr.Enabled = false
					espin.Enabled = false
				end
				pcall(function()
					--plr:GetPropertyChangedSignal("Team"):Connect(function()
					plr.Character:WaitForChild("Head"):FindFirstChild("ESPFrame").Frame.BackgroundColor3 = plr.TeamColor.Color
					--end)
					--plr.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(function()
					plr.Character:FindFirstChild("Head"):FindFirstChild("ESPInfo").ESPName.Text = "Name: " .. plr.Name .. " | Health: " .. tostring(plr.Character:FindFirstChildOfClass("Humanoid").Health)
					--end)
				end)
			end)
				
		else
			print(plr .. "'s Character is nil")
		end
	end
--[[
game.Players.PlayerAdded:Connect(function(plr)
	if plr ~= game.Players.LocalPlayer then
		plr.CharacterAdded:Connect(function(chr)
			createesp(plr,chr)
		end)
	end
end)
for i,player in ipairs(game.Players:GetPlayers()) do
	if player ~= game.Players.LocalPlayer then
		if player.Character ~= nil then
			createesp(player,player.Character)
		end
		player.CharacterAdded:Connect(function(chr)
			createesp(player,chr)
		end)
	end
end
]]
	while true do
		wait(.05)
		for i,plr in ipairs(game.Players:GetPlayers()) do
			if plr ~= game.Players.LocalPlayer then
				if plr.Character ~= nil then
					local suc,err = pcall(function()
						createesp(plr,plr.Character)	
					end)
					if suc == false then
						print(err)
					end
				end
			end
		end
	end
end
coroutine.wrap(APHRRIZ_fake_script)()
