local ADDON_NAME, ns = ...
local _DB

local setframe
do
	local OnDragStart = function(self)
		self:StartMoving()
	end

	local OnDragStop = function(self)
		self:StopMovingOrSizing()

		local point, relativeTo, relativePoint, xOffset, yOffset = self:GetPoint()

		local anchorTo
		if(point:find("TOP") or point:find("BOTTOM")) then
			if(point:find("LEFT") or point:find("RIGHT")) then
				anchorTo = point
			else
				if(xOffset < 0) then
					anchorTo = point.."LEFT"
				else
					anchorTo = point.."RIGHT"
				end
			end
		else
			local isCenter = (point == "CENTER") and true
			if(yOffset > 0) then
				if((isCenter and xOffset < 0) or (not isCenter and xOffset > 0)) then
					anchorTo = "TOPLEFT"
				else
					anchorTo = "TOPRIGHT"
				end
			else
				if((isCenter and xOffset < 0) or (not isCenter and xOffset > 0)) then
					anchorTo = "BOTTOMLEFT"
				else
					anchorTo = "BOTTOMRIGHT"
				end
			end
		end

		_DB.point = point
		_DB.anchorTo = anchorTo
		_DB.x = xOffset
		_DB.y = yOffset

		local tooltip = _G["GameTooltip"]
		tooltip:ClearAllPoints()
		tooltip:SetPoint(point, _anchor, point)
	end

	setframe = function(frame)
		frame:SetHeight(15)
		frame:SetWidth(80)
		frame:SetFrameStrata"TOOLTIP"
		frame:SetBackdrop({bgFile = "Interface\\Tooltips\\UI-Tooltip-Background";})
		frame:EnableMouse(true)
		frame:SetMovable(true)
		frame:SetClampedToScreen(true)
		frame:RegisterForDrag"LeftButton"
		frame:SetBackdropBorderColor(0, .9, 0)
		frame:SetBackdropColor(0, .9, 0)
		frame:Hide()

		frame:SetScript("OnDragStart", OnDragStart)
		frame:SetScript("OnDragStop", OnDragStop)
		frame:SetScript("OnHide", OnDragStop)

		frame.text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		frame.text:SetPoint"CENTER"
		frame.text:SetJustifyH"CENTER"
		frame.text:SetFont(GameFontNormal:GetFont(), 12)
		frame.text:SetTextColor(1, 1, 1)

		return frame
	end
end

local _anchor = CreateFrame("Frame", nil, UIParent)
setframe(_anchor)
_anchor.text:SetText(ADDON_NAME)

local _LOCK
SLASH_FREEBTIP1 = "/freebtip"
SlashCmdList["FREEBTIP"] = function(inp)
	if not _LOCK then
		_anchor:Show()
		_LOCK = true
	else
		_anchor:Hide()
		_LOCK = nil
	end
end

do
	local frame = CreateFrame"Frame"
	frame:RegisterEvent"ADDON_LOADED"
	frame:SetScript("OnEvent", function(self, event, addon)
		if addon ~= ADDON_NAME then return end

		_DB = FreebTipDB or {}
		FreebTipDB = _DB

		_anchor:ClearAllPoints()

		if _DB.point then
			_anchor:SetPoint(_DB.point, UIParent, _DB.point, _DB.x, _DB.y)
		else
			_anchor:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -25, 200)
		end

		hooksecurefunc("GameTooltip_SetDefaultAnchor", function(tooltip, parent)
			local frame = GetMouseFocus()
			if ns.cfg.cursor and frame == WorldFrame then
				tooltip:SetOwner(parent, "ANCHOR_CURSOR")
			else
				local anchorTo = _DB.anchorTo or _anchor:GetPoint()

				if(anchorTo == "CENTER") then
					anchorTo = "BOTTOMRIGHT"
				end

				tooltip:ClearAllPoints()
				tooltip:SetOwner(parent, "ANCHOR_NONE")
				if ns.cfg.point then
					local cfg = ns.cfg
					tooltip:SetPoint(cfg.point[1], UIParent, cfg.point[1], cfg.point[2], cfg.point[3])
				else
					tooltip:SetPoint(anchorTo, _anchor, anchorTo)
				end
			end
		end)
	end)
end

