-- Reboy's Simple Script Hub

-- Instances:

local SimpleHub = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Top = Instance.new("TextLabel")
local Icon = Instance.new("ImageLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local scroll = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

SimpleHub.Name = "SimpleHub"
SimpleHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SimpleHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SimpleHub.ResetOnSpawn = false

Frame.Parent = SimpleHub
Frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.114832535, 0, 0.250783712, 0)
Frame.Size = UDim2.new(0.227272734, 0, 0.344827592, 0)

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.fromRGB(50, 220, 200)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0.0909090936, 0)
Top.Font = Enum.Font.SourceSans
Top.Text = "Simple Hub"
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
Icon.Size = UDim2.new(0.105263159, 0, 1, 0)
Icon.Image = "rbxassetid://6161788529"

UITextSizeConstraint.Parent = Top
UITextSizeConstraint.MaxTextSize = 20

scroll.Name = "scroll"
scroll.Parent = Frame
scroll.Active = true
scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scroll.BackgroundTransparency = 0.500
scroll.BorderColor3 = Color3.fromRGB(255, 255, 255)
scroll.Position = UDim2.new(0.0526315793, 0, 0.13636364, 0)
scroll.Size = UDim2.new(0.894736826, 0, 0.818181813, 0)
scroll.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll.ScrollBarThickness = 5
scroll.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

UIGridLayout.Parent = scroll
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 1)
UIGridLayout.CellSize = UDim2.new(1, 0, 0, 30)

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 0.864

-- Scripts:

local function GHVJVMR_fake_script() -- Frame.MainScript 
	local script = Instance.new('LocalScript', Frame)
	script.Name = "MainScript"

	local firsttopcolorR = 50
	local firsttopcolorG = 220
	local firsttopcolorB = 220
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
	script.Parent.scroll.CanvasSize = UDim2.new(0,0,0,script.Parent.scroll.UIGridLayout.AbsoluteContentSize.Y)
	script.Parent.scroll.UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		script.Parent.scroll.CanvasSize = UDim2.new(0,0,0,script.Parent.scroll.UIGridLayout.AbsoluteContentSize.Y)
	end)
	local HttpService = game:GetService("HttpService")
	local gotscripts = HttpService:JSONDecode(game:HttpGet(("https://pastebin.com/raw/Zc6CgJ7w"),true))
	function addscripts(name,stringcode)
		local button = Instance.new("TextButton")
		button.Name = "ScriptButton"
		button.Parent = script.Parent.scroll
		button.BackgroundColor3 = Color3.fromRGB(255,255,255)
		button.BorderSizePixel = 0
		button.Text = name
		button.Font = Enum.Font.SourceSans
		button.TextScaled = true
		button.Visible = true
		button.MouseButton1Click:Connect(function()
			loadstring(stringcode)()
		end)
	end
	for i,v in pairs(gotscripts) do
		addscripts(v.Name,v.Source)
	end
end
coroutine.wrap(GHVJVMR_fake_script)()
