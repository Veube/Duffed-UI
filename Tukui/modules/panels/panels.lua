local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

local TukuiBar1 = CreateFrame("Frame", "TukuiBar1", UIParent, "SecureHandlerStateTemplate")
if C["actionbar"].layout ~= 1 then
	TukuiBar1:CreatePanel("Default", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, 67)
	TukuiBar1:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
	TukuiBar1:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
	TukuiBar1:SetFrameStrata("BACKGROUND")
	TukuiBar1:SetFrameLevel(1)
else
	TukuiBar1:CreatePanel("Default", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, 26)
	TukuiBar1:SetFrameStrata("BACKGROUND")
	TukuiBar1:SetFrameLevel(1)
	if T.lowversion then
		TukuiBar1:ClearAllPoints()
		TukuiBar1:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 4)
		TukuiBar1:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
		TukuiBar1:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
	else
		TukuiBar1:SetWidth((T.buttonsize * 24) + (T.buttonspacing * 25))
		TukuiBar1:SetHeight((T.buttonsize * 1) + (T.buttonspacing * 2))
	end
end
TukuiBar1:CreateShadow("Default")

local TukuiBar2 = CreateFrame("Frame", "TukuiBar2", UIParent, "SecureHandlerStateTemplate")
if C["actionbar"].layout == 1 then
	TukuiBar2:CreatePanel("Default", 1, 1, "BOTTOM", TukuiBar1, "TOP", 0, 4)
	TukuiBar2:SetWidth((T.buttonsize * 12) + (T.buttonspacing * 13))
	TukuiBar2:SetHeight((T.buttonsize * 1) + (T.buttonspacing * 2))
else
	TukuiBar2:CreatePanel("Default", 1, 1, "BOTTOMRIGHT", TukuiBar1, "BOTTOMLEFT", -6, 0)
	TukuiBar2:SetWidth((T.buttonsize * 3) + (T.buttonspacing * 4))
	TukuiBar2:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
end
TukuiBar2:SetFrameStrata("BACKGROUND")
TukuiBar2:SetFrameLevel(2)
TukuiBar2:CreateShadow("Default")

local TukuiBar3 = CreateFrame("Frame", "TukuiBar3", UIParent, "SecureHandlerStateTemplate")
TukuiBar3:CreatePanel("Default", 1, 1, "RIGHT", UIParent, "RIGHT", -14, -14)
TukuiBar3:SetWidth((T.buttonsize * 2) + (T.buttonspacing * 3))
TukuiBar3:SetHeight((T.buttonsize * 12) + (T.buttonspacing * 13))
TukuiBar3:SetFrameStrata("BACKGROUND")
TukuiBar3:SetFrameLevel(2)
TukuiBar3:CreateShadow("Default")

if C["actionbar"].layout == 2 then
	local TukuiBar4 = CreateFrame("Frame", "TukuiBar4", UIParent, "SecureHandlerStateTemplate")
	TukuiBar4:CreatePanel("Default", 1, 1, "BOTTOMLEFT", TukuiBar1, "BOTTOMRIGHT", 6, 0)
	TukuiBar4:SetWidth((T.buttonsize * 3) + (T.buttonspacing * 4))
	TukuiBar4:SetHeight((T.buttonsize * 2) + (T.buttonspacing * 3))
	TukuiBar4:SetFrameStrata("BACKGROUND")
	TukuiBar4:SetFrameLevel(2)
	TukuiBar4:CreateShadow("Default")
end

local petbg = CreateFrame("Frame", "TukuiPetBar", UIParent, "SecureHandlerStateTemplate")
if C["actionbar"].petbarhorizontal == true then
	petbg:CreatePanel("Default",(T.petbuttonsize * 10) + (T.petbuttonspacing * 11), T.petbuttonsize + (T.petbuttonspacing * 2), "BOTTOM", TukuiBar2, "TOP", 0, 4)
else
	petbg:CreatePanel("Default", T.petbuttonsize + (T.petbuttonspacing * 2), (T.petbuttonsize * 10) + (T.petbuttonspacing * 11), "RIGHT", TukuiBar3, "LEFT", -6, 0)
end

local ltpetbg1 = CreateFrame("Frame", "TukuiLineToPetActionBarBackground", petbg)
ltpetbg1:CreatePanel("Transparent", 24, 265, "LEFT", petbg, "RIGHT", 0, 0)
ltpetbg1:SetFrameLevel(0)
if C["actionbar"].petbarhorizontal == true then ltpetbg1:Hide() end

-- INFO LEFT (FOR STATS)
local ileft = CreateFrame("Frame", "TukuiInfoLeft", TukuiBar1)
ileft:CreatePanel("Default", T.Scale(T.InfoLeftRightWidth), 19, "BOTTOMRIGHT", UIParent, "BOTTOM", -12, 3)
ileft:SetFrameLevel(2)
ileft:SetFrameStrata("BACKGROUND")
if T.lowversion or C["actionbar"].layout == 2 then
	ileft:ClearAllPoints()
	ileft:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5, 3)
	ileft:Width(T.InfoLeftRightWidth - 9)
end

-- INFO RIGHT (FOR STATS)
local iright = CreateFrame("Frame", "TukuiInfoRight", TukuiBar1)
iright:CreatePanel("Default", T.Scale(T.InfoLeftRightWidth), 19, "BOTTOMLEFT", UIParent, "BOTTOM", 12, 3)
iright:SetFrameLevel(2)
iright:SetFrameStrata("BACKGROUND")
if T.lowversion or C["actionbar"].layout == 2 then 
	iright:ClearAllPoints() 
	iright:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5, 3)
	iright:Width(T.InfoLeftRightWidth + 12)
end

if C["actionbar"].buttonsize > 26 and C["actionbar"].layout == 1 and not T.lowversion then
	-- HORIZONTAL LINE LEFT
	local ltoabl = CreateFrame("Frame", "TukuiLineToABLeft", TukuiBar1)
	ltoabl:CreatePanel("Default", 10, 2, "RIGHT", ileft, "LEFT", 0, 0)

	-- HORIZONTAL LINE RIGHT
	local ltoabr = CreateFrame("Frame", "TukuiLineToABRight", TukuiBar1)
	ltoabr:CreatePanel("Default", 10, 2, "LEFT", iright, "RIGHT", 0, 0)

	-- LEFT VERTICAL LINE
	local ileftlv = CreateFrame("Frame", "TukuiInfoLeftLineVertical", TukuiBar1)
	ileftlv:CreatePanel("Default", 2, 13, "BOTTOM", ltoabl, "LEFT", 0, -1)

	-- RIGHT VERTICAL LINE
	local irightlv = CreateFrame("Frame", "TukuiInfoRightLineVertical", TukuiBar1)
	irightlv:CreatePanel("Default", 2, 13, "BOTTOM", ltoabr, "RIGHT", 0, -1)
end

if C["chat"].background then
	-- CHAT BG LEFT
	local chatleftbg = CreateFrame("Frame", "TukuiChatBackgroundLeft", UIParent)
	chatleftbg:CreatePanel("Transparent", C["chat"].backgroundwidth, C["chat"].backgroundheight, "BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5, 5)
	if T.lowversion or C["actionbar"].layout == 2 then
		chatleftbg:Point("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5, 24)
	else
		chatleftbg:Point("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5, 3)
	end
	chatleftbg:CreateShadow("Default")

	-- CHAT BG RIGHT
	local chatrightbg = CreateFrame("Frame", "TukuiChatBackgroundRight", UIParent)
	chatrightbg:CreatePanel("Transparent", C["chat"].backgroundwidth, C["chat"].backgroundheight, "BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5, 5)
	if T.lowversion or C["actionbar"].layout == 2 then
		chatrightbg:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5, 24)
	else
		chatrightbg:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5, 3)
	end
	chatrightbg:CreateShadow("Default")
	
	-- LEFT TAB PANEL
	local tabsbgleft = CreateFrame("Frame", "TukuiTabsLeftBackground", TukuiBar1)
	tabsbgleft:CreatePanel("Default", C["chat"].backgroundwidth - 30, 20, "TOP", chatleftbg, "TOP", -11, -4)
	tabsbgleft:SetFrameLevel(2)
	tabsbgleft:SetFrameStrata("BACKGROUND")
		
	-- RIGHT TAB PANEL
	local tabsbgright = CreateFrame("Frame", "TukuiTabsRightBackground", TukuiBar1)
	tabsbgright:CreatePanel("Default", C["chat"].backgroundwidth - 30, 20, "TOP", chatrightbg, "TOP", -11, -4)
	tabsbgright:SetFrameLevel(2)
	tabsbgright:SetFrameStrata("BACKGROUND")
	
	local copy1 = CreateFrame("Frame", nil, tabsbgleft)
	copy1:CreatePanel("Transparent", 20, 20, "LEFT", tabsbgleft, "RIGHT", 2, 0)
	
	local copy2 = CreateFrame("Frame", nil, tabsbgright)
	copy2:CreatePanel("Transparent", 20, 20, "LEFT", tabsbgright, "RIGHT", 2, 0)
end

if TukuiMinimap then
	local minimapstatsleft = CreateFrame("Frame", "TukuiMinimapStatsLeft", TukuiMinimap)
	minimapstatsleft:CreatePanel("Default", ((TukuiMinimap:GetWidth() + 4) / 2) -3, 19, "TOPLEFT", TukuiMinimap, "BOTTOMLEFT", 0, -2)
	minimapstatsleft:CreateShadow("Default")

	local minimapstatsright = CreateFrame("Frame", "TukuiMinimapStatsRight", TukuiMinimap)
	minimapstatsright:CreatePanel("Default", ((TukuiMinimap:GetWidth() + 4) / 2) -3, 19, "TOPRIGHT", TukuiMinimap, "BOTTOMRIGHT", 0, -2)
	minimapstatsright:CreateShadow("Default")
end

--BATTLEGROUND STATS FRAME
if C["datatext"].battleground == true then
	local bgframe = CreateFrame("Frame", "TukuiInfoLeftBattleGround", UIParent)
	bgframe:CreatePanel("Default", 1, 1, "TOPLEFT", UIParent, "BOTTOMLEFT", 0, 0)
	bgframe:SetAllPoints(ileft)
	bgframe:SetFrameStrata("LOW")
	bgframe:SetFrameLevel(0)
	bgframe:EnableMouse(true)
end

-- BNToastFrame Anchorframe
local bnet = CreateFrame("Frame", "TukuiBnetHolder", UIParent)
bnet:CreatePanel("Default", BNToastFrame:GetWidth(), BNToastFrame:GetHeight(), "TOPLEFT", UIParent, "TOPLEFT", 3, -3)
bnet:SetClampedToScreen(true)
bnet:SetMovable(true)
bnet:SetBackdropBorderColor(1, 0, 0)
bnet.text = T.SetFontString(bnet, C["media"].font, 12)
bnet.text:SetPoint("CENTER")
bnet.text:SetText("Move BnetFrame")
bnet:Hide()

-- shadows
BNToastFrame:CreateShadow("Default")
ileft:CreateShadow("Default")
iright:CreateShadow("Default")

-- Minimap Button Skinning [Credit Elv22 for the base code and Smelly for modification.]
local function SkinButton(f)
    if f:GetObjectType() ~= "Button" then return end
	f:SetPushedTexture(nil)
    f:SetHighlightTexture(nil)
    f:SetDisabledTexture(nil)
	f:SetSize(22, 22)

    for i=1, f:GetNumRegions() do
        local region = select(i, f:GetRegions())
        if region:GetObjectType() == "Texture" then
            local tex = region:GetTexture()
            if tex:find("Border") or tex:find("Background") then
                region:SetTexture(nil)
            else
				region:SetDrawLayer("OVERLAY", 5)
                region:ClearAllPoints()
                region:Point("TOPLEFT", f, "TOPLEFT", 2, -2)
                region:Point("BOTTOMRIGHT", f, "BOTTOMRIGHT", -2, 2)
                region:SetTexCoord(.08, .92, .08, .92)
            end
        end
    end
	f:SetTemplate("Default")
	f:SetFrameLevel(f:GetFrameLevel() + 2)

end
local x = CreateFrame("Frame")
x:RegisterEvent("PLAYER_LOGIN")
x:SetScript("OnEvent", function(self, event)
    for i=1, Minimap:GetNumChildren() do
        SkinButton(select(i, Minimap:GetChildren()))
    end
    self = nil
end)