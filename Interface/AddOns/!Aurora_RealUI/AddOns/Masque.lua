local _, mods = ...

-- Lua Globals --
local _G = _G

mods["Masque"] = function(F, C)
    --print("Masque", F, C)
    local Button = _G.ExtraActionButton1
    Button:SetNormalTexture("")

    local Masque = _G.LibStub("AceAddon-3.0"):GetAddon("Masque", true)
    _G.hooksecurefunc(Masque, "OnInitialize", function()
        local MSQ = _G.LibStub("Masque", true)

        -- RealUI
        MSQ:AddSkin("RealUI", {
            Author = "Nibelheim",
            Version = "8.1",
            Shape = "Square",
            Masque_Version = 60201,
            Backdrop = {
                Width = 32,
                Height = 32,
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Backdrop]],
            },
            Icon = {
                Width = 26,
                Height = 26,
                TexCoords = {0.1, 0.9, 0.1, 0.9},
            },
            Flash = {
                Width = 32,
                Height = 32,
                Color = {1, 0, 0, 0.3},
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Overlay]],
            },
            Cooldown = {
                Width = 26,
                Height = 26,
            },
            ChargeCooldown = {
                Width = 26, 
                Height = 26, 
            }, 
            Pushed = {
                Width = 32,
                Height = 32,
                Color = {0, 0, 0, 0.5},
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Overlay]],
            },
            Normal = {
                Width = 32,
                Height = 32,
                Color = {0, 0, 0, 1},
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Normal]],
            },
            Disabled = {
                Hide = true,
            },
            Checked = {
                Width = 32,
                Height = 32,
                BlendMode = "ADD",
                Color = {0, 0.8, 1, 0.5},
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Border]],
            },
            Border = {
                Width = 32,
                Height = 32,
                BlendMode = "ADD",
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Border]],
            },
            Gloss = {
                Width = 32,
                Height = 32,
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Gloss]],
            },
            AutoCastable = {
                Width = 48,
                Height = 48,
                OffsetX = 0.5,
                OffsetY = -0.5,
                Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
            },
            Highlight = {
                Width = 32,
                Height = 32,
                BlendMode = "ADD",
                Color = {1, 1, 1, 0.75},
                Texture = [[Interface\AddOns\nibRealUI\Media\Masque\Highlight]],
            },
            Name = {
                Width = 32,
                Height = 10,
                OffsetX = 5.5,
                OffsetY = 4.5,
                JustifyH = "LEFT",
            },
            Count = {
                Width = 32,
                Height = 10,
                JustifyH = "RIGHT",
                OffsetX = -3.5,
                OffsetY = 5.5,
            },
            HotKey = {
                Width = 32,
                Height = 10,
                OffsetX = 6.5,
                OffsetY = -5.5,
                JustifyH = "LEFT",
            },
            Duration = {
                Width = 32,
                Height = 10,
                OffsetY = -2,
            },
            Shine = {
                Width = 26,
                Height = 26,
                OffsetX = 1,
                OffsetY = -1,
            },
        }, true)
    end)
end
