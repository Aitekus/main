print("У ВАС ЗАДОЛЖЕНОСТЬ 1.5 МИЛИОННА БОБОВ В БОБО БАНКЕ!!!!!!!! ОПЛАТИТЕ ИНАЧЕ ПРИДУТ ЖУКИ!!1!11!!!!!!")
--[[
Переходя ко Fluent-у, хотел бы сказать что это не моя библеотека.
https://github.com/ActualMasterOogway/Fluent-Renewed/ <---------
Так же с иконками.
https://lucide.dev/icons/ <---------
И Plutonium Hub
loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/main/Plutonium.Loader.lua", true))() <---------
Это мой первый скрипт так что не судите строго, ок?
Бог, помилуй меня и не выкидывай мне кучу багов. Я же делаю комментарии тут.
Я в ТГ: @Chelik_Chepubelik
]]--

--Loadstring-и
local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))() --Библиотека Fluent
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Aitekus/main/refs/heads/main/ROBLOX-NIKITOS/SaveManager_RU.lua"))() --Модуль сохранений
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Aitekus/main/refs/heads/main/ROBLOX-NIKITOS/InterfaceManager_RU.lua"))() --Модуль интерфейса

--Игрок
local Player = game.Players.LocalPlayer
local PLayerName = Player.Name
local PLayerChar = Player.Character
local PlayerHuma = PLayerChar.Humanoid

--Игра + Айдишники
local PlaceId = game.PlaceId
local CurGame = "He поддержана"

local Fisch = 16732694052
local BABFT = 537413528
local TSB = 10449761463
local BladeBall = 13772394625
local DoorsLobby = 6516141723
local DoorsIn = 6839171747
local PressureIn = "Unknown"
local DustyTripIn = "Unknown"

function GetGameName(PlaceId) 
    if PlaceId == Fisch then return "Fisch" elseif PlaceId == BABFT then return "BABFT" elseif PlaceId == TSB then return "TSB" elseif PlaceId == BladeBall then return "Blade Ball" elseif PlaceId == DoorsLobby then return "Doors - лобби" elseif PlaceId == DoorsIn then return "Doors - В игре" elseif PlaceId == PreasureIn then return "Pressure" elseif PlaceId == DustyTripIn then return "DustyTrip - В игре" else return "Не найдено"
    end 
end 
local CurGame = GetGameName(PlaceId)

--Что то другое, но нужное (мб)
test = "test"


--[[local TestModule = loadstring(
    function testingidk(OPTION)
        if OPTION == text
            return "test"
        elseif OPTION == print
            print("test")
        elseif OPTION == kick
            game.Players.Nikitosik873973:kick
        end
    end
    return testingidk()
)
TestModule:tes(print)

        OldBrightness = game.Lighting.Brightness
        OldClocktime = game.Lighting.ClockTime
        OldFogEnd = game.Lighting.FogEnd
        OldGlobalShadows = game.Lighting.GlobalShadows
        OldOutdoorAmbient = game.Lighting.OutdoorAmbient

FBToggle:OnChanged(function()
    if Options.FBToggle.Value == true then
        game.Lighting.Brightness = 5
		game.Lighting.ClockTime = 14
		game.Lighting.FogEnd = 100000
		game.Lighting.GlobalShadows = false
		game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    else
        game.Lighting.Brightness = OldBrightness 
        game.Lighting.ClockTime = OldClocktime
        game.Lighting.FogEnd = OldFogEnd
        game.Lighting.GlobalShadows = OldGlobalShadows
        game.Lighting.OutdoorAmbient = OldOutdoorAmbient

 
    end
end)
]]
--Fluent

local Window = Library:CreateWindow{
    Title = "NIKITOS",
    SubTitle = "Придумай сам что тут написано...",
    TabWidth = 160,
    Size = UDim2.fromOffset(830, 525), 
    Resize = true, -- Resize this ^ Size according to a 1920x1080 screen, good for mobile users but may look weird on some devices
    MinSize = Vector2.new(470, 380),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
}

-- Fluent Renewed provides ALL 1544 Lucide 0.469.0 https://lucide.dev/icons/ Icons and ALL 9072 Phosphor 2.1.0 https://phosphoricons.com/ Icons for the tabs, icons are optional
local Tabs = {
    Main = Window:CreateTab{
        Title = "Общее",
        Icon = "phosphor-users-bold"
    },
    Settings = Window:CreateTab{
        Title = "Настройки",
        Icon = "settings"
    }
}

local Options = Library.Options

Library:Notify{
    Title = "Notification",
    Content = "This is a notification",
    SubContent = "SubContent", -- Optional
    Duration = 5 -- Set to nil to make the notification not disappear
}

local MainParagraph = Tabs.Main:CreateParagraph("MainParagraph", { --Параграф 1, общая инфа
    Title = "Здраствуй, " .. PLayerName,
    Content = "Игра: " .. test .. "\nИнфa:\nXП - " .. PlayerHuma.Health .. "/" .. PlayerHuma.MaxHealth .. " Скорость - " .. PlayerHuma.WalkSpeed .. " Сила прыжка - " .. PlayerHuma.JumpPower,
})



local Paragraph = Tabs.Main:CreateParagraph("Paragraph", { --Параграф 2, "Общие функии"
    Title = "Общие функции",
    Content = nil,
    TitleAlignment = "Middle",
    ContentAlignment = Enum.TextXAlignment.Center
})

local FBToggle_T = Tabs.Main:CreateToggle("FBToggle_T", {Title = "Светлота", Default = false }) --Toggle на FB

OldBrightness = game.Lighting.Brightness
OldClocktime = game.Lighting.ClockTime
OldFogEnd = game.Lighting.FogEnd
OldGlobalShadows = game.Lighting.GlobalShadows
OldOutdoorAmbient = game.Lighting.OutdoorAmbient

function FBToggle_F() --Функция которая включает/выключает светлоту
    if Options.FBToggle_T.Value == true then
        OldBrightness = game.Lighting.Brightness
        OldClocktime = game.Lighting.ClockTime
        OldFogEnd = game.Lighting.FogEnd
        OldGlobalShadows = game.Lighting.GlobalShadows
        OldOutdoorAmbient = game.Lighting.OutdoorAmbient

        game.Lighting.Brightness = 5
		game.Lighting.ClockTime = 14
		game.Lighting.FogEnd = 100000
		game.Lighting.GlobalShadows = false
		game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    else
        game.Lighting.Brightness = OldBrightness 
        game.Lighting.ClockTime = OldClocktime
        game.Lighting.FogEnd = OldFogEnd
        game.Lighting.GlobalShadows = OldGlobalShadows
        game.Lighting.OutdoorAmbient = OldOutdoorAmbient
    end
end

FBToggle_T:OnChanged(function() ---------------------------ОБАМА! Я НЕ ХОЧУ В БРАЗИЛИЮ!!!! ХВАТИТ!!!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    FBToggle_F()---ААААААААААААААА!!!!
end)

local Slider = Tabs.Main:AddSlider("Slider", {
	Title = "Скорость",
	Description = "Не испоьзуйте в Doors и в других играх где может быть Анти-Чит",
	default = PlayerHuma.WalkSpeed,
	Min = 0,
	Max = 100,
	Rounding = 2,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})
Tabs.Main:CreateButton{ --Кнопка на загрузку Plutonium Hub (С подтверждением)
    Title = "Загрузить Plutonium Hub",
    Description = "(Это не мое, так что баги - не моя вина)",
    Callback = function()
        Window:Dialog{
            Title = "Точно?",
            Content = "Уверен?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/main/Plutonium.Loader.lua", true))()
                        print("NIKITOSIK | Принятие загрузки Plutonium Hub")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("NIKITOSIK | Отказ от загрузки Plutonium Hub")
                    end
                }
            }
        }
    end
}

Tabs.Main:CreateButton{ --Кнопка на загрузку Plutonium hub (С подтверждением)
    Title = "Загрузить BlackKing Hub",
    Description = "(Это не мое, так что баги - не моя вина)",
    Callback = function()
        Window:Dialog{
            Title = "Точно?",
            Content = " ",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/KINGHUB01/BlackKing/main/BlackKing'))()
                        print("NIKITOSIK | Принятие загрузки BlackKing Hub")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        Print("NIKITOSIK | Отказ от загрузки BlackKing Hub")
                    end
                }
            }
        }
    end
}
local Toggle = Tabs.Main:CreateToggle("MyToggle", {Title = "Toggle", Default = false }) --Запасной

Toggle:OnChanged(function()
    print("Toggle changed:", Options.MyToggle.Value)
end)

local Paragraph = Tabs.Main:CreateParagraph("Paragraph", {
    Title = "Paragraph",
    Content = "This is a paragraph.\nSecond line!"
})

print(Paragraph.Value)

Paragraph:SetValue("This paragraph text is changed!")

print(Paragraph.Value)

Tabs.Main:CreateParagraph("Aligned Paragraph", {
    Title = "Paragraph",
    Content = "This is a paragraph with a center alignment!",
    TitleAlignment = "Middle",
    ContentAlignment = Enum.TextXAlignment.Center
})

Tabs.Main:CreateButton{
    Title = "Button",
    Description = "Very important button",
    Callback = function()
        Window:Dialog{
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        }
    end
}

local Toggle = Tabs.Main:CreateToggle("MyToggle", {Title = "Toggle", Default = false })

Toggle:OnChanged(function()
    print("Toggle changed:", Options.MyToggle.Value)
end)

Options.MyToggle:SetValue(false)

local Slider = Tabs.Main:CreateSlider("Slider", {
    Title = "Slider",
    Description = "This is a slider",
    Default = 2,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
        print("Slider was changed:", Value)
    end
})

Slider:OnChanged(function(Value)
    print("Slider changed:", Value)
end)

Slider:SetValue(3)

local Dropdown = Tabs.Main:CreateDropdown("Dropdown", {
    Title = "Dropdown",
    Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
    Multi = false,
    Default = 1,
})

Dropdown:SetValue("four")

Dropdown:OnChanged(function(Value)
    print("Dropdown changed:", Value)
end)

local MultiDropdown = Tabs.Main:CreateDropdown("MultiDropdown", {
    Title = "Dropdown",
    Description = "You can select multiple values.",
    Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
    Multi = true,
    Default = {"seven", "twelve"},
})

MultiDropdown:SetValue{
    three = true,
    five = true,
    seven = false
}

MultiDropdown:SetValues{"fifteen", "sixteen", "seventeen"}

MultiDropdown:OnChanged(function(Value)
    local Values = {}
    for Value, State in next, Value do
        Values[#Values + 1] = Value
    end
    print("Mutlidropdown changed:", table.concat(Values, ", "))
end)

local MultiInstanceDropdown = Tabs.Main:CreateDropdown("MultiInstanceDropdown", {
    Title = "Instance Dropdown",
    Description = "You can select multiple values and any instance or any other value!",
    Values = {workspace, 5, Enum.JoinSource, Enum.MarketplaceBulkPurchasePromptStatus.Error},
    Multi = true,
    Default = {workspace},
})

MultiInstanceDropdown:OnChanged(function(Value)
    local Values = {}
    for Value, State in next, Value do
        Values[#Values + 1] = typeof(Value)
    end
    print("Mutlidropdown with instance selection changed:", table.concat(Values, ", "))
end)

local Colorpicker = Tabs.Main:CreateColorpicker("Colorpicker", {
    Title = "Colorpicker",
    Default = Color3.fromRGB(96, 205, 255)
})

Colorpicker:OnChanged(function()
    print("Colorpicker changed:", Colorpicker.Value)
end)

Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))

local TColorpicker = Tabs.Main:CreateColorpicker("TransparencyColorpicker", {
    Title = "Colorpicker",
    Description = "but you can change the transparency.",
    Transparency = 0,
    Default = Color3.fromRGB(96, 205, 255)
})

TColorpicker:OnChanged(function()
    print(
        "TColorpicker changed:", TColorpicker.Value,
        "Transparency:", TColorpicker.Transparency
    )
end)

local Keybind = Tabs.Main:CreateKeybind("Keybind", {
    Title = "KeyBind",
    Mode = "Toggle", -- Always, Toggle, Hold
    Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

    -- Occurs when the keybind is clicked, Value is `true`/`false`
    Callback = function(Value)
        print("Keybind clicked!", Value)
    end,

    -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
    ChangedCallback = function(New)
        print("Keybind changed!", New)
    end
})

-- OnClick is only fired when you press the keybind and the mode is Toggle
-- Otherwise, you will have to use Keybind:GetState()
Keybind:OnClick(function()
    print("Keybind clicked:", Keybind:GetState())
end)

Keybind:OnChanged(function()
    print("Keybind changed:", Keybind.Value)
end)

task.spawn(function()
    while true do
        wait(1)

        -- example for checking if a keybind is being pressed
        local state = Keybind:GetState()
        if state then
            print("Keybind is being held down")
        end

        if Library.Unloaded then break end
    end
end)

Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold

local Input = Tabs.Main:CreateInput("Input", {
    Title = "Input",
    Default = "Default",
    Placeholder = "Placeholder",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        print("Input changed:", Value)
    end
})

Input:OnChanged(function()
    print("Input updated:", Input.Value)
end)

Tabs.Main:CreateButton{
    Title = "Really Really big Dropdown",
    Description = "",
    Callback = function()
        local Values = {}

        for i = 1, 1000 do
            Values[i] = i
        end

        Tabs.Main:AddDropdown("BIGDropdown", {
            Title = "Big Dropdown",
            Values = Values,
            Multi = false,
            Default = 1,
        })
    end
}

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes{}

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Library:Notify{
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
}

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
--Бесконечности

while wait(0.1) do 
local Player = game.Players.LocalPlayer
local PLayerName = Player.Name
local PLayerChar = Player.Character
local PlayerHuma = PLayerChar.Humanoid

MainParagraph:SetValue("Игра: " .. test .. "\nИнфa:\nXП - " .. PlayerHuma.Health .. "/" .. PlayerHuma.MaxHealth .. " Скорость - " .. PlayerHuma.WalkSpeed .. " Сила прыжка - " .. PlayerHuma.JumpPower) 
end
