local _, private = ...

-- Lua Globals --
local _G = _G

-- RealUI --
local RealUI = private.RealUI

RealUI.LoadAddOnData_FreebTip = function()
	_G.FreebTipDB = {
		["y"] = 192,
		["x"] = -31,
		["point"] = "BOTTOMRIGHT",
	}
end
