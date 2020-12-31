-- SpamCMDs GUI (spam muted message only work at exploit)

-- Instances:

local SpamCommands = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Top = Instance.new("TextLabel")
local icon = Instance.new("ImageLabel")
local StartStop = Instance.new("TextButton")
local CMDBox = Instance.new("TextBox")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Delaybox = Instance.new("TextBox")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

--Properties:

SpamCommands.Name = "SpamCommands"
SpamCommands.Parent = game.CoreGui
SpamCommands.ResetOnSpawn = false
SpamCommands.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SpamCommands
Frame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.245215312, 0, 0.340125382, 0)
Frame.Size = UDim2.new(0.276315778, 0, 0.219435737, 0)

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 1.650

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0.142857149, 0)
Top.Font = Enum.Font.SourceSans
Top.Text = "SpamCMDSGUI"
Top.TextColor3 = Color3.fromRGB(0, 0, 0)
Top.TextScaled = true
Top.TextSize = 14.000
Top.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Top.TextStrokeTransparency = 0.000
Top.TextWrapped = true
Top.TextXAlignment = Enum.TextXAlignment.Right

icon.Name = "icon"
icon.Parent = Top
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 0.900
icon.BorderSizePixel = 0
icon.Size = UDim2.new(0.0865800902, 0, 1, 0)
icon.Image = "rbxassetid://6161703371"

StartStop.Name = "StartStop"
StartStop.Parent = Frame
StartStop.BackgroundColor3 = Color3.fromRGB(110, 110, 110)
StartStop.BorderSizePixel = 0
StartStop.Position = UDim2.new(0.0649350658, 0, 0.70714283, 0)
StartStop.Size = UDim2.new(0.865800917, 0, 0.200000003, 0)
StartStop.Font = Enum.Font.SourceSans
StartStop.Text = "Start Spam CMDs"
StartStop.TextColor3 = Color3.fromRGB(255, 255, 255)
StartStop.TextScaled = true
StartStop.TextSize = 14.000
StartStop.TextWrapped = true

CMDBox.Name = "CMDBox"
CMDBox.Parent = Frame
CMDBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CMDBox.Position = UDim2.new(0.0649350658, 0, 0.242857143, 0)
CMDBox.Size = UDim2.new(0.865800917, 0, 0.214285716, 0)
CMDBox.ClearTextOnFocus = false
CMDBox.Font = Enum.Font.SourceSans
CMDBox.PlaceholderText = "Please type command here."
CMDBox.Text = ""
CMDBox.TextColor3 = Color3.fromRGB(0, 0, 0)
CMDBox.TextScaled = true
CMDBox.TextSize = 14.000
CMDBox.TextWrapped = true

UITextSizeConstraint.Parent = CMDBox
UITextSizeConstraint.MaxTextSize = 28

Delaybox.Name = "Delaybox"
Delaybox.Parent = Frame
Delaybox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Delaybox.Position = UDim2.new(0.0649350658, 0, 0.45714286, 0)
Delaybox.Size = UDim2.new(0.865800917, 0, 0.214285716, 0)
Delaybox.ClearTextOnFocus = false
Delaybox.Font = Enum.Font.SourceSans
Delaybox.PlaceholderText = "Delay (Please type number here)"
Delaybox.Text = ""
Delaybox.TextColor3 = Color3.fromRGB(0, 0, 0)
Delaybox.TextScaled = true
Delaybox.TextSize = 14.000
Delaybox.TextWrapped = true

UITextSizeConstraint_2.Parent = Delaybox
UITextSizeConstraint_2.MaxTextSize = 28

-- Scripts:

local function LRHPT_fake_script() -- Frame.MainScript 
	local script = Instance.new('LocalScript', Frame)
	script.Name = "MainScript"

	local TwS = game:GetService("TweenService")
	local onmouseenter = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(220, 220, 220)})
	local onmouseleave = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(200, 200, 200)})
	local onclicked = TwS:Create(script.Parent.Top,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(180, 180, 180)})
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
	
	local started = false
	script.Parent.Delaybox.FocusLost:Connect(function()
		if script.Parent.Delaybox.Text == "" then
			script.Parent.Delaybox.Text = ""
		elseif tonumber(script.Parent.Delaybox.Text) then
			script.Parent.Delaybox.Text = tostring(tonumber(script.Parent.Delaybox.Text))
		else
			script.Parent.Delaybox.Text = ""
		end
	end)
	script.Parent.StartStop.MouseButton1Click:Connect(function()
		if started == false then
			started = true
			script.Parent.StartStop.Text = "Stop Spam CMDs"
			while started == true do
				game.Players:Chat(script.Parent.CMDBox.Text)
				wait(tonumber(script.Parent.Delaybox.Text))
			end
		else
			started = false
			script.Parent.StartStop.Text = "Start Spam CMDs"
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
end
coroutine.wrap(LRHPT_fake_script)()
