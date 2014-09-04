local _, mods = ...
mods["Aurora"] = {}

-- RealUI skin hook
REALUI_STRIPE_TEXTURES = REALUI_STRIPE_TEXTURES or {}
REALUI_WINDOW_FRAMES = REALUI_WINDOW_FRAMES or {}
local nibRealUI = LibStub("AceAddon-3.0"):GetAddon("nibRealUI")
local db = nibRealUI.db.profile

-- Aurora API
local F, C
local style = {}
style.apiVersion = "6.0"

style.functions = {
    ["CreateBD"] = function(f, a)
        --if f:GetName() then print("Override CreateBD", f:GetName(), a) end
        f:SetBackdrop({
            bgFile = C.media.backdrop,
            edgeFile = C.media.backdrop,
            edgeSize = 1,
        })
        f:SetBackdropBorderColor(0, 0, 0)
        if not a then
	        --print("CreateSD")
	        f:SetBackdropColor(unpack(nibRealUI.media.window))
	        f.tex = f.tex or f:CreateTexture(nil, "BACKGROUND", nil, 1)
	        f.tex:SetTexture([[Interface\AddOns\nibRealUI\Media\StripesThin]], true)
	        f.tex:SetAlpha(db.settings.stripeOpacity)
	        f.tex:SetAllPoints()
	        f.tex:SetHorizTile(true)
	        f.tex:SetVertTile(true)
	        f.tex:SetBlendMode("ADD")
	        tinsert(REALUI_WINDOW_FRAMES, f)
	        tinsert(REALUI_STRIPE_TEXTURES, f.tex)
	    else
	    	--print("CreateBD: alpha", a)
	    	f:SetBackdropColor(0, 0, 0, a)
        end
    end,
}

style.skipSplashScreen = true

--style.highlightColor = {r = 0, g = 1, b = 0}
style.classcolors = {
    ["DEATHKNIGHT"] = { r = 0.77, g = 0.12, b = 0.23 },
    ["DRUID"]       = { r = 1.00, g = 0.49, b = 0.04 },
    ["HUNTER"]      = { r = 0.67, g = 0.83, b = 0.45 },
    ["MAGE"]        = { r = 0.41, g = 0.80, b = 0.94 },
    ["MONK"]        = { r = 0.00, g = 1.00, b = 0.59 },
    ["PALADIN"]     = { r = 0.96, g = 0.55, b = 0.73 },
    ["PRIEST"]      = { r = 0.80, g = 0.80, b = 0.80 },
    ["ROGUE"]       = { r = 1.00, g = 0.96, b = 0.41 },
    ["SHAMAN"]      = { r = 0.00, g = 0.44, b = 0.87 };
    ["WARLOCK"]     = { r = 0.58, g = 0.51, b = 0.79 },
    ["WARRIOR"]     = { r = 0.78, g = 0.61, b = 0.43 },
}

AURORA_CUSTOM_STYLE = style

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, addon)
    if addon == "Aurora" then
        F, C = unpack(Aurora)

        local _, class = UnitClass("player")
        local r, g, b = C.classcolours[class].r, C.classcolours[class].g, C.classcolours[class].b

        local function colourMinMax(f)
            if f:IsEnabled() then
                for _, pixel in pairs(f.pixels) do
                    pixel:SetVertexColor(r, g, b)
                end
            end
        end

        local function clearMinMax(f)
            for _, pixel in pairs(f.pixels) do
                pixel:SetVertexColor(1, 1, 1)
            end
        end

        F.ReskinMinMax = function(f, type, a1, p, a2, x, y)
            f:SetSize(17, 17)

            if not a1 then
                f:SetPoint("TOPRIGHT", -6, -6)
            else
                f:ClearAllPoints()
                f:SetPoint(a1, p, a2, x, y)
            end

            f:SetNormalTexture("")
            f:SetHighlightTexture("")
            f:SetPushedTexture("")
            f:SetDisabledTexture("")

            F.CreateBD(f, 0)

            F.CreateGradient(f)

            f:SetDisabledTexture(C.media.backdrop)
            local dis = f:GetDisabledTexture()
            dis:SetVertexColor(0, 0, 0, .4)
            dis:SetDrawLayer("OVERLAY")
            dis:SetAllPoints()

            f.pixels = {}

            local horiz = f:CreateTexture(nil, "OVERLAY")
            horiz:SetSize(7, 1)
            horiz:SetTexture(C.media.backdrop)
            horiz:SetVertexColor(1, 1, 1)

            local vert = f:CreateTexture(nil, "OVERLAY")
            vert:SetSize(1, 7)
            vert:SetTexture(C.media.backdrop)
            vert:SetVertexColor(1, 1, 1)

            if type == "Max" then
                horiz:SetPoint("TOPRIGHT", -5, -4)
                vert:SetPoint("TOPRIGHT", -4, -5)
            else
                horiz:SetPoint("BOTTOMLEFT", 5, 4)
                vert:SetPoint("BOTTOMLEFT", 4, 5)
            end

            for i = 1, 9 do
                local tex = f:CreateTexture()
                tex:SetTexture(1, 1, 1)
                tex:SetSize(1, 1)
                tex:SetPoint("BOTTOMLEFT", 3+i, 3+i)
                tinsert(f.pixels, tex)
            end
            tinsert(f.pixels, horiz)
            tinsert(f.pixels, vert)

            f:HookScript("OnEnter", colourMinMax)
            f:HookScript("OnLeave", clearMinMax)
        end

        F.ReskinExpCol = function(f)
        end
    end

    -- mod logic by Haleth from Aurora
    local addonModule = mods[addon]
    if addonModule then
        if type(addonModule) == "function" then
            addonModule(F, C)
        else
            -- Aurora
            for _, moduleFunc in pairs(addonModule) do
                F.AddPlugin(function()
                    moduleFunc(F, C)
                end)
            end
        end
    end
end)