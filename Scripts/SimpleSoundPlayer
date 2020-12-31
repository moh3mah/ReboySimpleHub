-- Simple Sound Player {Enjoy your music (It's Client-Sided, and It works for any games.)}

-- Instances:

local Soundply = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainSound = Instance.new("Sound")
local IDBox = Instance.new("TextBox")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Plypause = Instance.new("TextButton")
local Stop = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Volbox = Instance.new("TextBox")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

--Properties:

Soundply.Name = "Soundply"
Soundply.Parent = game.CoreGui
Soundply.ResetOnSpawn = false
Soundply.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Soundply
MainFrame.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
MainFrame.BorderSizePixel = 2
MainFrame.Position = UDim2.new(0.135167465, 0, 0.394984335, 0)
MainFrame.Size = UDim2.new(0.220095694, 0, 0.156739816, 0)

MainSound.Name = "MainSound"
MainSound.Parent = MainFrame
MainSound.Looped = true

IDBox.Name = "IDBox"
IDBox.Parent = MainFrame
IDBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IDBox.Position = UDim2.new(0.0923913047, 0, 0.109999999, 0)
IDBox.Size = UDim2.new(0.679347813, 0, 0.370000005, 0)
IDBox.ClearTextOnFocus = false
IDBox.Font = Enum.Font.SourceSans
IDBox.PlaceholderText = "SoundID"
IDBox.Text = ""
IDBox.TextColor3 = Color3.fromRGB(0, 0, 0)
IDBox.TextScaled = true
IDBox.TextSize = 14.000
IDBox.TextWrapped = true

UITextSizeConstraint.Parent = IDBox
UITextSizeConstraint.MaxTextSize = 19

Plypause.Name = "Plypause"
Plypause.Parent = MainFrame
Plypause.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
Plypause.Position = UDim2.new(0.0923913047, 0, 0.540000021, 0)
Plypause.Size = UDim2.new(0.809782624, 0, 0.189999998, 0)
Plypause.Font = Enum.Font.SourceSans
Plypause.Text = "Play"
Plypause.TextColor3 = Color3.fromRGB(0, 0, 0)
Plypause.TextScaled = true
Plypause.TextSize = 14.000
Plypause.TextWrapped = true

Stop.Name = "Stop"
Stop.Parent = MainFrame
Stop.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Stop.Position = UDim2.new(0.0923913047, 0, 0.730000019, 0)
Stop.Size = UDim2.new(0.809782624, 0, 0.189999998, 0)
Stop.Font = Enum.Font.SourceSans
Stop.Text = "Stop"
Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
Stop.TextScaled = true
Stop.TextSize = 14.000
Stop.TextWrapped = true

UIAspectRatioConstraint.Parent = MainFrame
UIAspectRatioConstraint.AspectRatio = 1.840

Volbox.Name = "Volbox"
Volbox.Parent = MainFrame
Volbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Volbox.Position = UDim2.new(0.771739125, 0, 0.109999999, 0)
Volbox.Size = UDim2.new(0.130434781, 0, 0.370000005, 0)
Volbox.Font = Enum.Font.SourceSans
Volbox.PlaceholderText = "Vol"
Volbox.Text = "0.5"
Volbox.TextColor3 = Color3.fromRGB(0, 0, 0)
Volbox.TextScaled = true
Volbox.TextSize = 14.000
Volbox.TextWrapped = true

UITextSizeConstraint_2.Parent = Volbox
UITextSizeConstraint_2.MaxTextSize = 19

-- Scripts:

local function KNVNU_fake_script() -- MainFrame.MainScript 
	local script = Instance.new('LocalScript', MainFrame)
	script.Name = "MainScript"
	
	local MainFrame = script.Parent
	local Plypause = script.Parent.Plypause
	local Stop = script.Parent.Stop
	local Volbox = script.Parent.Volbox
	local IDBox = script.Parent.IDBox
	local MainSound = script.Parent.MainSound
	
	local canpause = false
	local playing = false
	
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
	drag(MainFrame)
	Plypause.MouseButton1Click:Connect(function()
		if canpause == false then
			if playing == false then
				Plypause.Text = "Pause"
				playing = true
				canpause = true
				MainSound.SoundId = "rbxassetid://" .. IDBox.Text
				MainSound:Play()
			else
				canpause = true
				Plypause.Text = "Pause"
				MainSound:Resume()
			end
		else
			canpause = false
			Plypause.Text = "Play (Paused)"
			MainSound:Pause()
		end
	end)
	Stop.MouseButton1Click:Connect(function()
		playing = false
		canpause = false
		MainSound:Stop()
		Plypause.Text = "Play"
	end)
	Volbox.FocusLost:Connect(function()
		if tonumber(Volbox.Text) then
			MainSound.Volume = tonumber(Volbox.Text)
			Volbox.Text = tostring(MainSound.Volume)
		else
			Volbox.Text = tostring(MainSound.Volume)
		end
	end)
end
coroutine.wrap(KNVNU_fake_script)()
