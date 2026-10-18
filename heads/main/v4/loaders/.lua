loadstring(game:HttpGet("https://cdn.sourceb.in/bins/0HpcAgqVP9/0", true))()
if _G.OnyxV2Cleanup then
	_G.__OnyxReloading = true
	pcall(_G.OnyxV2Cleanup)
	_G.__OnyxReloading = nil
end

do
	local ok, text = pcall(function()
		return identifyexecutor()
	end)

	ok = ok and type(text) == "string"
	local str = ""

	if not ok then
		text = str
	end

	if text == "" then
		local ok2, result = pcall(function()
			return getexecutorname()
		end)

		if ok2 and type(result) == "string" then
			text = result
		end
	end

	text = text:match("^%s*(%a+)") or text
	local str2 = text:lower()
	local flag = false

	for _, v in ipairs({ "solara", "xeno" }) do
		if str2:find(v, 1, true) then
			flag = true
		end
	end

	if flag then
		local color = Color3.fromRGB(236, 236, 244)
		local color2 = Color3.fromRGB(168, 168, 184)
		local color3 = Color3.fromRGB(29, 29, 37)
		local color4 = Color3.fromRGB(158, 158, 174)
		local color5 = Color3.fromRGB(232, 232, 240)
		local color6 = Color3.fromRGB(22, 22, 28)
		local color7 = Color3.fromRGB(140, 140, 165)
		local hui = gethui and gethui() or game:GetService("CoreGui")
		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = "OnyxExecutorWarning"
		screenGui.IgnoreGuiInset = true
		screenGui.ResetOnSpawn = false
		screenGui.DisplayOrder = 2000000
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.Parent = hui
		local frame = Instance.new("Frame")
		frame.Size = UDim2.fromScale(1, 1)
		frame.BackgroundColor3 = Color3.new(0, 0, 0)
		frame.BackgroundTransparency = 0.4
		frame.BorderSizePixel = 0
		frame.ZIndex = 1
		frame.Parent = screenGui
		local x = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.X or 800
		local frame2 = Instance.new("Frame")
		frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		frame2.Position = UDim2.fromScale(0.5, 0.5)
		frame2.Size = UDim2.fromOffset(math.min(440, math.max(300, x - 40)), 236)
		frame2.BackgroundColor3 = Color3.fromRGB(23, 23, 28)
		frame2.BorderSizePixel = 0
		frame2.ZIndex = 2
		frame2.Parent = screenGui
		Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 22)
		local uiGradient = Instance.new("UIGradient", frame2)
		uiGradient.Rotation = 90

		uiGradient.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 36)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(16, 16, 20)),
		})

		local uiStroke = Instance.new("UIStroke", frame2)
		uiStroke.Color = color7
		uiStroke.Thickness = 1
		uiStroke.Transparency = 0.7
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.Position = UDim2.new(0, 26, 0, 24)
		textLabel.Size = UDim2.new(1, -52, 0, 24)
		textLabel.Font = Enum.Font.GothamBold
		textLabel.TextSize = 18
		textLabel.TextXAlignment = Enum.TextXAlignment.Left
		textLabel.TextColor3 = color
		textLabel.Text = "Executor Warning"
		textLabel.ZIndex = 3
		textLabel.Parent = frame2
		local textLabel2 = Instance.new("TextLabel")
		textLabel2.BackgroundTransparency = 1
		textLabel2.Position = UDim2.new(0, 26, 0, 48)
		textLabel2.Size = UDim2.new(1, -52, 0, 18)
		textLabel2.Font = Enum.Font.Gotham
		textLabel2.TextSize = 12
		textLabel2.TextXAlignment = Enum.TextXAlignment.Left
		textLabel2.TextColor3 = color4
		textLabel2.Text = text
		textLabel2.ZIndex = 3
		textLabel2.Parent = frame2
		local textLabel3 = Instance.new("TextLabel")
		textLabel3.BackgroundTransparency = 1
		textLabel3.Position = UDim2.new(0, 26, 0, 78)
		textLabel3.Size = UDim2.new(1, -52, 0, 96)
		textLabel3.Font = Enum.Font.Gotham
		textLabel3.TextSize = 14
		textLabel3.TextWrapped = true
		textLabel3.LineHeight = 1.15
		textLabel3.TextXAlignment = Enum.TextXAlignment.Left
		textLabel3.TextYAlignment = Enum.TextYAlignment.Top
		textLabel3.TextColor3 = color2

		textLabel3.Text = "Seems like you are using " .. text .. [[. This executor might not support all features of the script, and may result in bigger glitches or bugs.

Please use a better executor next time.]]

		textLabel3.ZIndex = 3
		textLabel3.Parent = frame2
		local textButton = Instance.new("TextButton")
		textButton.AnchorPoint = Vector2.new(0.5, 1)
		textButton.Position = UDim2.new(0.5, 0, 1, -22)
		textButton.Size = UDim2.new(1, -52, 0, 38)
		textButton.BackgroundColor3 = color3
		textButton.BorderSizePixel = 0
		textButton.AutoButtonColor = false
		textButton.Font = Enum.Font.GothamBold
		textButton.TextSize = 13
		textButton.TextColor3 = color4
		textButton.Text = "Understood  (5)"
		textButton.ZIndex = 3
		textButton.Parent = frame2
		Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 12)
		local flag2 = false
		local flag3 = false

		task.spawn(function()
			for i = 5, 1, -1 do
				textButton.Text = "Understood  (" .. i .. ")"
				task.wait(1)
			end

			flag2 = true
			textButton.Text = "Understood"
			textButton.BackgroundColor3 = color5
			textButton.TextColor3 = color6
		end)

		local function fn()
			if not flag2 or flag3 then
				return
			end
			flag3 = true

			pcall(function()
				screenGui:Destroy()
			end)
		end

		textButton.MouseButton1Click:Connect(fn)
		textButton.TouchTap:Connect(fn)
		local n = 0

		while not flag3 and n < 120 do
			task.wait(0.2)
			n += 0.2
		end

		pcall(function()
			screenGui:Destroy()
		end)
	end
end

LOADUI = {}

do
	local hui = gethui and gethui() or game:GetService("CoreGui")
	local onyxLoading = hui:FindFirstChild("OnyxLoading")

	if onyxLoading then
		onyxLoading:Destroy()
	end

	local TweenService_ = game:GetService("TweenService")
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "OnyxLoading"
	screenGui.IgnoreGuiInset = true
	screenGui.ResetOnSpawn = false
	screenGui.DisplayOrder = 99998
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Parent = hui
	local frame = Instance.new("Frame")
	frame.Size = UDim2.fromScale(1, 1)
	frame.BackgroundColor3 = Color3.new(0, 0, 0)
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.Parent = screenGui
	local frame2 = Instance.new("Frame")
	frame2.AnchorPoint = Vector2.new(0.5, 0.5)
	frame2.Position = UDim2.fromScale(0.5, 0.5)
	frame2.Size = UDim2.fromOffset(math.min(360, math.max(280, (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.X or 800) - 40)), 102)
	frame2.BackgroundColor3 = Color3.fromRGB(23, 23, 28)
	frame2.BackgroundTransparency = 1
	frame2.BorderSizePixel = 0
	frame2.Parent = screenGui
	Instance.new("UICorner", frame2).CornerRadius = UDim.new(0, 18)
	local uiGradient = Instance.new("UIGradient", frame2)
	uiGradient.Rotation = 90
	local new = ColorSequenceKeypoint.new
	local color = Color3.fromRGB
	uiGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 36)), new(1, color(16, 16, 20)) })
	local uiStroke = Instance.new("UIStroke", frame2)
	uiStroke.Color = Color3.fromRGB(140, 140, 165)
	uiStroke.Thickness = 1
	uiStroke.Transparency = 1
	local frame3 = Instance.new("Frame")
	frame3.Position = UDim2.fromOffset(22, 18)
	frame3.Size = UDim2.fromOffset(44, 44)
	frame3.BackgroundColor3 = Color3.fromRGB(38, 38, 47)
	frame3.BackgroundTransparency = 1
	frame3.BorderSizePixel = 0
	frame3.Parent = frame2
	Instance.new("UICorner", frame3).CornerRadius = UDim.new(1, 0)
	local uiStroke2 = Instance.new("UIStroke", frame3)
	uiStroke2.Color = Color3.fromRGB(140, 140, 165)
	uiStroke2.Thickness = 1
	uiStroke2.Transparency = 1
	local imageLabel = Instance.new("ImageLabel")
	imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	imageLabel.Position = UDim2.fromScale(0.5, 0.5)
	imageLabel.Size = UDim2.fromOffset(23, 23)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Image = "rbxassetid://110926118391987"
	imageLabel.ImageColor3 = Color3.fromRGB(236, 236, 244)
	imageLabel.ImageTransparency = 1
	imageLabel.Parent = frame3
	local textLabel = Instance.new("TextLabel")
	textLabel.Position = UDim2.fromOffset(81, 20)
	textLabel.Size = UDim2.new(1, -103, 0, 22)
	textLabel.BackgroundTransparency = 1
	textLabel.Font = Enum.Font.GothamBold
	textLabel.TextSize = 19
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextColor3 = Color3.fromRGB(242, 242, 248)
	textLabel.TextTransparency = 1
	textLabel.Text = "Loading Onyx"
	textLabel.Parent = frame2
	local textLabel2 = Instance.new("TextLabel")
	textLabel2.Position = UDim2.fromOffset(81, 43)
	textLabel2.Size = UDim2.new(1, -103, 0, 19)
	textLabel2.BackgroundTransparency = 1
	textLabel2.Font = Enum.Font.Gotham
	textLabel2.TextSize = 16
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.TextColor3 = Color3.fromRGB(139, 139, 153)
	textLabel2.TextTransparency = 1
	textLabel2.Text = "Starting up"
	textLabel2.Parent = frame2
	local frame4 = Instance.new("Frame")
	frame4.Position = UDim2.fromOffset(22, 79)
	frame4.Size = UDim2.new(1, -44, 0, 5)
	frame4.BackgroundColor3 = Color3.fromRGB(38, 38, 47)
	frame4.BackgroundTransparency = 1
	frame4.BorderSizePixel = 0
	frame4.Parent = frame2
	Instance.new("UICorner", frame4).CornerRadius = UDim.new(1, 0)
	local frame5 = Instance.new("Frame")
	frame5.Size = UDim2.new(0, 0, 1, 0)
	frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	frame5.BackgroundTransparency = 1
	frame5.BorderSizePixel = 0
	frame5.Parent = frame4
	Instance.new("UICorner", frame5).CornerRadius = UDim.new(1, 0)
	local colorSequence = ColorSequence.new
	local new2 = ColorSequenceKeypoint.new
	local color2 = Color3.fromRGB
	Instance.new("UIGradient", frame5).Color = colorSequence({ ColorSequenceKeypoint.new(0, Color3.fromRGB(143, 143, 158)), new2(1, color2(255, 255, 255)) })
	local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	TweenService_:Create(frame, tweenInfo, { BackgroundTransparency = 0.5 }):Play()
	TweenService_:Create(frame2, tweenInfo, { BackgroundTransparency = 0 }):Play()
	TweenService_:Create(uiStroke, tweenInfo, { Transparency = 0.58 }):Play()
	TweenService_:Create(frame3, tweenInfo, { BackgroundTransparency = 0 }):Play()
	TweenService_:Create(uiStroke2, tweenInfo, { Transparency = 0.5 }):Play()
	TweenService_:Create(imageLabel, tweenInfo, { ImageTransparency = 0 }):Play()
	TweenService_:Create(textLabel, tweenInfo, { TextTransparency = 0 }):Play()
	TweenService_:Create(textLabel2, tweenInfo, { TextTransparency = 0 }):Play()
	TweenService_:Create(frame4, tweenInfo, { BackgroundTransparency = 0 }):Play()
	TweenService_:Create(frame5, tweenInfo, { BackgroundTransparency = 0 }):Play()
	local flag = true
	local tbl = {}

	local function fn()
		for _, child in ipairs(hui:GetChildren()) do
			local flag2 = child:IsA("ScreenGui") and child.Enabled and child ~= screenGui

			if flag2 then
				flag2 = child.Name == "WindUI" or child.Name:match("^WindUI/") or child.Name:match("^Onyx.+Button$")
			end

			if flag2 then
				child.Enabled = false
				tbl[#tbl + 1] = child
			end
		end
	end

	LOADUI.reveal = function()
		for _, v in ipairs(tbl) do
			pcall(function()
				v.Enabled = true
			end)
		end

		tbl = {}
	end

	task.spawn(function()
		while flag do
			pcall(fn)
			task.wait(0.05)
		end
	end)

	local n = 0

	LOADUI.step = function(arg, arg2)
		if not flag then
			return
		end

		pcall(function()
			if type(arg) == "number" and arg > n then
				n = math.clamp(arg, 0, 1)
				TweenService_:Create(frame5, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(n, 0, 1, 0) }):Play()
			end

			if arg2 then
				textLabel2.Text = tostring(arg2)
			end
		end)
	end

	LOADUI.done = function()
		if not flag then
			return
		end
		flag = false

		pcall(function()
			textLabel2.Text = "Ready"
			TweenService_:Create(frame5, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.new(1, 0, 1, 0) }):Play()

			task.delay(0.34, function()
				LOADUI.reveal()
				local tweenInfo2 = TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				TweenService_:Create(frame, tweenInfo2, { BackgroundTransparency = 1 }):Play()
				TweenService_:Create(frame2, tweenInfo2, { BackgroundTransparency = 1 }):Play()
				TweenService_:Create(uiStroke, tweenInfo2, { Transparency = 1 }):Play()
				TweenService_:Create(frame3, tweenInfo2, { BackgroundTransparency = 1 }):Play()
				TweenService_:Create(uiStroke2, tweenInfo2, { Transparency = 1 }):Play()
				TweenService_:Create(imageLabel, tweenInfo2, { ImageTransparency = 1 }):Play()
				TweenService_:Create(textLabel, tweenInfo2, { TextTransparency = 1 }):Play()
				TweenService_:Create(textLabel2, tweenInfo2, { TextTransparency = 1 }):Play()
				TweenService_:Create(frame4, tweenInfo2, { BackgroundTransparency = 1 }):Play()
				TweenService_:Create(frame5, tweenInfo2, { BackgroundTransparency = 1 }):Play()

				task.delay(0.3, function()
					pcall(function()
						screenGui:Destroy()
					end)
				end)
			end)
		end)
	end
end

task.delay(30, function()
	LOADUI.done()
end)

task.spawn(function()
	print("-- LOADING ONYX --")

	for _, v in ipairs({ 0, 5, 11, 22 }) do
		local n = math.floor(v / 22 * 100 + 0.5)
		print("[" .. string.rep("#", v) .. string.rep(" ", 22 - v) .. "] " .. string.format("%02d%%", n))
		task.wait(0.25)
	end

	print("Loaded. Xen Script MM2")
end)

if _G.OnyxV2 then
	local onyxV2 = _G.OnyxV2
	local flag = false

	pcall(function()
		flag = not onyxV2.Destroyed and onyxV2.UIElements and onyxV2.UIElements.Main and onyxV2.UIElements.Main.Parent ~= nil
	end)

	if flag then
		pcall(function()
			onyxV2:Destroy()
		end)

		local now = os.clock()

		while true do
			task.wait(0.1)
			if not (onyxV2.Destroyed or os.clock() - now > 3) then
				continue
			end
			break
		end

		task.wait(0.7)
	end

	_G.OnyxV2 = nil
end

_G.OnyxV2Cleanup = nil

pcall(function()
	local v = ipairs
	local CoreGui_ = game:GetService("CoreGui")

	for _, child in v(CoreGui_:GetChildren()) do
		if child.Name == "OnyxESP" or child.Name:match("^Onyx.+Button$") then
			child:Destroy()
		end
	end
end)

pcall(function()
	local hui = gethui and gethui() or game:GetService("CoreGui")

	for _, child in ipairs(hui:GetChildren()) do
		if child.Name == "WindUI" or child.Name:match("^WindUI/") then
			child:Destroy()
		end
	end
end)

LOADUI.step(0.12, "Fetching library")
local v

do
	local response = nil

	local function fn(arg)
		if makefolder and isfolder and not isfolder(arg) then
			pcall(makefolder, arg)
		end
	end

	if isfile and readfile and isfile("OnyxV2/windui.lua") then
		local ok, result = pcall(readfile, "OnyxV2/windui.lua")

		if ok and type(result) == "string" and #result > 100000 then
			response = result
		end
	end

	local flag = response ~= nil
	response = response or game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
	local chunk = loadstring(response)

	if not chunk and flag then
		response = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
		chunk = loadstring(response)
		flag = false
	end

	if not flag and writefile then
		pcall(function()
			fn("OnyxV2")
			writefile("OnyxV2/windui.lua", response)
		end)
	end

	if writefile and isfile and not isfile("OnyxV2/icons-main.lua") then
		pcall(function()
			local str, v2 = game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua"):gsub("return game:HttpGet%(url%)", function()
				return [[do
    local _p = "OnyxV2/icons/" .. url:gsub("%W", "_") .. ".txt"
    if isfile and readfile and isfile(_p) then
        local _o, _d = pcall(readfile, _p)
        if _o and type(_d) == "string" and #_d > 0 then return _d end
    end
    local _d = game:HttpGet(url)
    pcall(function()
        if makefolder and isfolder and not isfolder("OnyxV2/icons") then makefolder("OnyxV2/icons") end
        writefile(_p, _d)
    end)
    return _d
end]]
			end)

			if v2 > 0 and loadstring(str) then
				fn("OnyxV2")
				writefile("OnyxV2/icons-main.lua", str)
			end
		end)
	end

	if isfile and isfile("OnyxV2/icons-main.lua") then
		local str, v2 = response:gsub("game%.HttpGet and game:HttpGet%(%w+%)or %w+:GetAsync%(%w+%)", "readfile(\"" .. "OnyxV2/icons-main.lua\")")

		if v2 > 0 then
			chunk = loadstring(str) or chunk
		end
	end

	v = chunk()
end

v:AddTheme({
	Name = "Onyx",
	Background = v:Gradient({
		["0"] = { Color = Color3.fromHex("#161619"), Transparency = 0.12 },
		["100"] = { Color = Color3.fromHex("#161619"), Transparency = 0.12 },
	}, { Rotation = 90 }),
	Accent = v:Gradient({
		["0"] = { Color = Color3.fromHex("#101014"), Transparency = 0 },
		["100"] = { Color = Color3.fromHex("#2a2a32"), Transparency = 0 },
	}, { Rotation = 90 }),
	Dialog = Color3.fromHex("#141418"),
	Outline = Color3.fromHex("#ffffff"),
	Text = Color3.fromHex("#ffffff"),
	Placeholder = Color3.fromHex("#a1a1aa"),
	Button = Color3.fromHex("#3f3f46"),
	Icon = Color3.fromHex("#d4d4d8"),
	Toggle = Color3.fromHex("#ffffff"),
	Slider = Color3.fromHex("#ffffff"),
	Checkbox = Color3.fromHex("#ffffff"),
	SliderIcon = Color3.fromHex("#71717a"),
	Primary = Color3.fromHex("#ffffff"),
	PanelBackground = Color3.fromHex("#ffffff"),
	PanelBackgroundTransparency = 0.94,
	LabelBackground = Color3.fromHex("#000000"),
	LabelBackgroundTransparency = 0.8,
	ElementBackground = Color3.fromHex("#18181b"),
	ElementBackgroundTransparency = 0.3,
})

v:SetTheme("Onyx")
LOADUI.step(0.4, "Building window")
local v2

do
	local v3 = v
	local createWindow = v3.CreateWindow

	local tbl = {
		Title = "Onyx - Premium",
		Icon = "solar:planet-bold",
		Author = "Murder Mystery 2",
		Folder = "OnyxV2",
		Background = "https://raw.githubusercontent.com/onyx-scripts/main/main/onyxscripts.png",
		Size = UDim2.fromOffset(math.max(560, math.min(850, (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)).X - 24)), math.max(350, math.min(560, (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)).Y - 24))),
	}

	tbl.MaxSize = Vector2.new(850, 560)
	tbl.HideSearchBar = false
	tbl.Transparent = true
	tbl.Theme = "Onyx"
	tbl.Resizable = true
	tbl.ToggleKey = nil
	tbl.BackgroundImageTransparency = 0.35
	tbl.Acrylic = false
	tbl.ShadowTransparency = 0.3
	tbl.Radius = 18
	tbl.IconRadius = 1
	tbl.IconSize = 27
	tbl.SideBarWidth = 185
	tbl.Topbar = { Height = 56, ButtonsType = "Default" }
	tbl.User = { Enabled = false, Anonymous = false }
	v2 = createWindow(v3, tbl)
end

v2:Tag({ Title = "@OnyxScripts", Icon = "youtube", Color = Color3.fromHex("#ffffff"), Radius = 6 })

v2:Tag({
	Title = "discord.gg/onyxscripts",
	Icon = "message-square-more",
	Color = Color3.fromHex("#ffffff"),
	Radius = 6,
})

v2:Tag({ Title = "Mobile & PC", Icon = "smartphone", Color = Color3.fromHex("#ffffff"), Radius = 6 })

task.spawn(function()
	local tbl = { ["discord.gg/onyxscripts"] = true, ["Mobile & PC"] = true, ["@OnyxScripts"] = true }
	local colorSequence = ColorSequence.new
	local tbl2 = {}
	local v3 = ColorSequenceKeypoint.new(0, Color3.fromRGB(26, 26, 32))
	local v4 = ColorSequenceKeypoint.new(0.35, Color3.fromRGB(46, 46, 56))
	local v5 = ColorSequenceKeypoint.new(0.7, Color3.fromRGB(32, 32, 39))
	local new = ColorSequenceKeypoint.new
	local color = Color3.fromRGB
	tbl2[1] = v3
	tbl2[2] = v4
	tbl2[3] = v5

	do
		local values = table.pack(new(1, color(42, 42, 51)))
		table.move(values, 1, values.n, 4, tbl2)
	end

	local v6 = colorSequence(tbl2)
	local color2 = Color3.fromRGB(228, 228, 236)

	for i = 1, 120 do
		local n = 0

		pcall(function()
			for _, descendant in ipairs(v2.UIElements.Main:GetDescendants()) do
				if descendant:IsA("TextLabel") and tbl[descendant.Text] then
					local parent = descendant.Parent and descendant.Parent.Parent

					if parent and parent:IsA("ImageLabel") then
						if not parent:FindFirstChildWhichIsA("UIGradient") then
							local uiGradient = Instance.new("UIGradient")
							uiGradient.Rotation = 45
							uiGradient.Color = v6
							uiGradient.Parent = parent
						end

						for _, descendant2 in ipairs(parent:GetDescendants()) do
							if descendant2:IsA("TextLabel") then
								descendant2.TextColor3 = color2
							elseif descendant2:IsA("ImageLabel") and descendant2 ~= parent then
								descendant2.ImageColor3 = color2
							end
						end

						n += 1
					end
				end
	
