local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

-- all the frame we want to move
-- all our frames that we want being movable.
T.AllowFrameMoving = {
	TukuiMinimap,
	TukuiTooltipAnchor,
	TukuiAurasPlayerBuffs,
	TukuiAurasPlayerDebuffs,
	TukuiShiftBar,
	TukuiRollAnchor,
	TukuiAchievementHolder,
	TukuiWatchFrameAnchor,
	TukuiGMFrameAnchor,
	TukuiVehicleAnchor,
	TukuiExtraActionBarFrameHolder,
	TukuiBnetHolder,
	CDAnchor,
	TCBanchor,
	FCBanchor,
}

-- used to exec various code if we enable or disable moving
local function exec(self, enable)
	if self == TukuiGMFrameAnchor or self == TukuiBnetHolder or self == CDAnchor or self == TCBanchor or self == FCBanchor then
		if enable then
			self:Show()
		else
			self:Hide()
		end
	end
	
	if self == TukuiMinimap then
		if enable then 
			Minimap:Hide()
			self:SetBackdropBorderColor(1, 0, 0, 1)
		else 
			Minimap:Show()
			self:SetBackdropBorderColor(unpack(C["media"].bordercolor))
		end
	end
	
	if( self == TukuiAurasPlayerBuffs or self == TukuiAurasPlayerDebuffs ) then
		if not self:GetBackdrop() then self:SetTemplate("Default") end

		if enable then
			self:SetBackdropColor(unpack( C["media"].backdropcolor ))
			self:SetBackdropBorderColor(1, 0, 0, 1)

			self.text = T.SetFontString(self, T.SetUserFont())
			self.text:SetPoint("CENTER")
			if self == TukuiAurasPlayerBuffs then
				self.text:SetText(L.move_buffs)
			elseif self == TukuiAurasPlayerDebuffs then
				self.text:SetText(L.move_debuffs)
			end
		else
			local position = self:GetPoint()
			if position:match("TOPLEFT") or position:match("BOTTOMLEFT") or position:match("BOTTOMRIGHT") or position:match("TOPRIGHT") then
				self:SetAttribute("point", position)
			end
			if position:match( "LEFT" ) then
				self:SetAttribute("xOffset", 35)
			else
				self:SetAttribute("xOffset", -35)
			end
			if position:match( "BOTTOM" ) then
				self:SetAttribute("wrapYOffset", -52)
			else
				self:SetAttribute("wrapYOffset", -52)
			end
			self:SetBackdropColor(0, 0, 0, 0)
			self:SetBackdropBorderColor(0, 0, 0, 0)
		end
	end
	
	if self == TukuiTooltipAnchor or self == TukuiRollAnchor or self == TukuiAchievementHolder or self == TukuiVehicleAnchor then
		if enable then
			self:SetAlpha(1)
		else
			self:SetAlpha(0)
			if self == TukuiTooltipAnchor then 
				local position = TukuiTooltipAnchor:GetPoint()
				local healthBar = GameTooltipStatusBar
				if position:match("TOP") then
					healthBar:ClearAllPoints()
					healthBar:Point("TOPLEFT", healthBar:GetParent(), "BOTTOMLEFT", 2, -5)
					healthBar:Point("TOPRIGHT", healthBar:GetParent(), "BOTTOMRIGHT", -2, -5)
					if healthBar.text then healthBar.text:Point("CENTER", healthBar, 0, -6) end
				else
					healthBar:ClearAllPoints()
					healthBar:Point("BOTTOMLEFT", healthBar:GetParent(), "TOPLEFT", 2, 5)
					healthBar:Point("BOTTOMRIGHT", healthBar:GetParent(), "TOPRIGHT", -2, 5)
					if healthBar.text then healthBar.text:Point("CENTER", healthBar, 0, 6) end			
				end
			end
		end		
	end
	
	if self == TukuiWatchFrameAnchor or self == TukuiExtraActionBarFrameHolder then
		if enable then
			self:SetBackdropBorderColor(1, 0, 0, 1)
			self:SetBackdropColor(unpack(C["media"].backdropcolor))		
		else
			self:SetBackdropBorderColor(0, 0, 0, 0)
			self:SetBackdropColor(0, 0, 0, 0)
		end
	end
	
	if self == TukuiShiftBar then
		if enable then
			TukuiShapeShiftHolder:SetAlpha(1)
		else
			TukuiShapeShiftHolder:SetAlpha(0)
		end
	end
end

local enable = true
local origa1, origf, origa2, origx, origy

T.MoveUIElements = function()
	-- don't allow moving while in combat
	if InCombatLockdown() then print(ERR_NOT_IN_COMBAT) return end
	
	if C["misc"].sComboenable and C["unitframes"].enable then SlashCmdList.MOVESCOMBO() end
	if C["misc"].swingtimerenable and C["unitframes"].enable then
		if TukuiSwingtimerHolder:IsShown() then
			TukuiSwingtimerHolder:Hide()
			TukuiSwingtimerHolder:EnableMouse(false)
		else
			TukuiSwingtimerHolder:Show()
			TukuiSwingtimerHolder:EnableMouse(true)
		end
	end
	
	if TukuiRaidUtilityAnchor then
		if TukuiRaidUtilityAnchor:IsShown() then TukuiRaidUtilityAnchor:Hide() else TukuiRaidUtilityAnchor:Show() end
	end
	
	for i = 1, getn(T.AllowFrameMoving) do
		if T.AllowFrameMoving[i] then		
			if enable then			
				T.AllowFrameMoving[i]:EnableMouse(true)
				T.AllowFrameMoving[i]:RegisterForDrag("LeftButton", "RightButton")
				T.AllowFrameMoving[i]:SetScript("OnDragStart", function(self) 
					origa1, origf, origa2, origx, origy = T.AllowFrameMoving[i]:GetPoint() 
					self.moving = true 
					self:SetUserPlaced(true) 
					self:StartMoving() 
				end)			
				T.AllowFrameMoving[i]:SetScript("OnDragStop", function(self) 
					self.moving = false 
					self:StopMovingOrSizing() 
				end)			
				exec(T.AllowFrameMoving[i], enable)			
				if T.AllowFrameMoving[i].text then 
					T.AllowFrameMoving[i].text:Show() 
				end
			else			
				T.AllowFrameMoving[i]:EnableMouse(false)
				if T.AllowFrameMoving[i].moving == true then
					T.AllowFrameMoving[i]:StopMovingOrSizing()
					T.AllowFrameMoving[i]:ClearAllPoints()
					T.AllowFrameMoving[i]:SetPoint(origa1, origf, origa2, origx, origy)
				end
				exec(T.AllowFrameMoving[i], enable)
				if T.AllowFrameMoving[i].text then T.AllowFrameMoving[i].text:Hide() end
				T.AllowFrameMoving[i].moving = false
			end
		end
	end
	
	if T.MoveUnitFrames then T.MoveUnitFrames() end
	
	if enable then enable = false else enable = true end
end
SLASH_MOVING1 = "/mtukui"
SLASH_MOVING2 = "/moveui"
SlashCmdList["MOVING"] = T.MoveUIElements

local protection = CreateFrame("Frame")
protection:RegisterEvent("PLAYER_REGEN_DISABLED")
protection:SetScript("OnEvent", function(self, event)
	if enable then return end
	print(ERR_NOT_IN_COMBAT)
	enable = false
	moving()
end)