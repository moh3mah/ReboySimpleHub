-- Spectater Gui [LIST!!!]

-- Instances:

local SpectateList = Instance.new("ScreenGui")
local SpecFrame = Instance.new("Frame")
local Top = Instance.new("TextLabel")
local Icon = Instance.new("ImageLabel")
local ToggleSpec = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local scroll = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

SpectateList.Name = "SpectateList"
SpectateList.Parent = game.CoreGui
SpectateList.ResetOnSpawn = false
SpectateList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SpecFrame.Name = "SpecFrame"
SpecFrame.Parent = SpectateList
SpecFrame.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
SpecFrame.BorderSizePixel = 0
SpecFrame.Position = UDim2.new(0.125598088, 0, 0.285266459, 0)
SpecFrame.Size = UDim2.new(0.143540666, 0, 0.316614419, 0)

Top.Name = "Top"
Top.Parent = SpecFrame
Top.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0.100000001, 0)
Top.Font = Enum.Font.SourceSans
Top.Text = "SpectaterGUI"
Top.TextColor3 = Color3.fromRGB(255, 255, 255)
Top.TextScaled = true
Top.TextSize = 14.000
Top.TextWrapped = true
Top.TextXAlignment = Enum.TextXAlignment.Right

Icon.Name = "Icon"
Icon.Parent = Top
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 0.900
Icon.BorderSizePixel = 0
Icon.Size = UDim2.new(0.166666672, 0, 0.990098953, 0)
Icon.Image = "rbxassetid://6161483015"

ToggleSpec.Name = "ToggleSpec"
ToggleSpec.Parent = SpecFrame
ToggleSpec.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
ToggleSpec.Position = UDim2.new(0.0500000007, 0, 0.811881185, 0)
ToggleSpec.Size = UDim2.new(0.899999976, 0, 0.148514852, 0)
ToggleSpec.Font = Enum.Font.SourceSans
ToggleSpec.Text = "Spectate/Unspectate"
ToggleSpec.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleSpec.TextScaled = true
ToggleSpec.TextSize = 12.000
ToggleSpec.TextWrapped = true

UICorner.Parent = ToggleSpec

scroll.Name = "scroll"
scroll.Parent = SpecFrame
scroll.Active = true
scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scroll.BackgroundTransparency = 0.500
scroll.BorderSizePixel = 0
scroll.Position = UDim2.new(0.0833333358, 0, 0.133663371, 0)
scroll.Size = UDim2.new(0.833333313, 0, 0.643564343, 0)
scroll.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll.ScrollBarThickness = 5
scroll.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

UIGridLayout.Parent = scroll
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(1, 0, 0, 20)

UIAspectRatioConstraint.Parent = SpecFrame
UIAspectRatioConstraint.AspectRatio = 0.594

-- Scripts:

local function DDIYRQ_fake_script() -- SpecFrame.MainScript 
	local script = Instance.new('LocalScript', SpecFrame)

	local selected
	local spectatingname
	local cam = game.Workspace.CurrentCamera
	local spectating = false
	script.Parent.scroll.CanvasSize = UDim2.new(0,0,0,script.Parent.scroll.UIGridLayout.AbsoluteContentSize.Y)
	script.Parent.scroll.UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		script.Parent.scroll.CanvasSize = UDim2.new(0,0,0,script.Parent.scroll.UIGridLayout.AbsoluteContentSize.Y)
	end)
	function RecolorSpecd()
		for i,v in ipairs(script.Parent.scroll:GetChildren()) do
			if v:IsA("TextButton") then
				if spectatingname then
					if v.Text == spectatingname then
						v.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
					elseif v.Text == selected then
						v.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
					else
						v.BackgroundColor3 = Color3.fromRGB(65,65,65)
					end
				else
					if v.Text == selected then
						v.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
					else
						v.BackgroundColor3 = Color3.fromRGB(65,65,65)
					end
				end
			end
		end
	end
	function MakePlayerButton(PlayerName)
		local Button = Instance.new("TextButton")
		Button.Name = "PlayerButton"
		Button.Parent = script.Parent.scroll
		Button.BackgroundColor3 = Color3.fromRGB(65,65,65)
		Button.TextScaled = true
		Button.TextColor3 = Color3.fromRGB(255,255,255)
		Button.Text = PlayerName
		Button.Font = Enum.Font.SourceSans
		Button.Visible = true
		Button.MouseButton1Click:Connect(function()
			selected = Button.Text
			RecolorSpecd()
		end)
		if spectatingname then
			if Button.Text == spectatingname then
				Button.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
			end
		end
	end
	function CheckPlayers()
		for i,v in ipairs(script.Parent.scroll:GetChildren()) do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
		for i,v in ipairs(game.Players:GetPlayers()) do
			MakePlayerButton(v.Name)
		end
		RecolorSpecd()
	end
	CheckPlayers()
	game.Players.ChildAdded:Connect(function(child)
		CheckPlayers()
	end)
	game.Players.ChildRemoved:Connect(function(child)
		CheckPlayers()
		if child.Name == selected then
			selected = ""
		end
	end)
	script.Parent.ToggleSpec.MouseButton1Click:Connect(function()
		if selected then
			if spectating == false then
				local suc,err = pcall(function()
					cam.CameraSubject = game.Players:WaitForChild(selected).Character:WaitForChild("Humanoid")
				end)
				if suc == true then
					spectating = true
					spectatingname = selected
					RecolorSpecd()
				else
					spectating = false
					spectatingname = nil
					print("[Spectate Error]: " .. err)
					RecolorSpecd()
				end
			else
				local suc,err = pcall(function()
					cam.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
				end)
				spectatingname = nil
				spectating = false
				RecolorSpecd()
			end
		else
			local suc,err = pcall(function()
				cam.CameraSubject = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
			end)
			spectatingname = nil
			RecolorSpecd()
			script.Parent.ToggleSpec.Text = "Player is not Selected!"
			wait(1)
			script.Parent.ToggleSpec.Text = "Spectate/Unspectate"
		end
	end)
	
	local TwS = game:GetService("TweenService")
	local onmouseenter = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(75,75,75)})
	local onmouseleave = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(55,55,55)})
	local onclicked = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(65,65,65)})
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
	script.Parent.Top.SelectionLost:Connect(function()
		onmouseenter:Cancel()
		onmouseleave:Cancel()
		onclicked:Cancel()
		wait()
		onmouseleave:Play()
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
end
coroutine.wrap(DDIYRQ_fake_script)()
