local T, C, L = unpack(select(2, ...))

if not C["datatext"].profession or C["datatext"].profession == 0 then return end

local Stat = CreateFrame("Frame", "TukuiStatProfession")
Stat:EnableMouse(true)
Stat:SetFrameStrata("BACKGROUND")
Stat:SetFrameLevel(3)
	
local Text = Stat:CreateFontString("TukuiStatProfessionText", "OVERLAY")
Text:SetFont(T.SetUserFont())
T.PP(C["datatext"].profession, Text)

local function Update(self)
	for _, v in pairs({GetProfessions()}) do
		if v ~= nil then
			local name, texture, rank, maxRank = GetProfessionInfo(v)
			Text:SetFormattedText(T.panelcolor.."Profession")
		end
	end
	self:SetAllPoints(Text)
end

Stat:SetScript("OnEnter", function()
	local anchor, panel, xoff, yoff = T.DataTextTooltipAnchor(Text)
	GameTooltip:SetOwner(panel, anchor, xoff, yoff)
	GameTooltip:ClearLines()
	GameTooltip:AddLine(T.myname.."'s Professions", .4,.78,1)
	for _, v in pairs({GetProfessions()}) do
		if v ~= nil then
			local name, texture, rank, maxRank = GetProfessionInfo(v)
			GameTooltip:AddDoubleLine(name, rank.." / "..maxRank,.75,.9,1,.3,1,.3)
		end
	end
	GameTooltip:Show()
end)
Stat:SetScript("OnUpdate", Update)
Stat:SetScript("OnLeave", function() GameTooltip:Hide() end)

Stat:SetScript('OnMouseDown', function(self, btn)
	if btn == 'LeftButton' then
		ToggleSpellBook("professions")
	end
end)