local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
--------------------------------------------------------------------
-- player haste
--------------------------------------------------------------------

if C["datatext"].haste and C["datatext"].haste > 0 then
	local Stat = CreateFrame("Frame", "TukuiStatHaste")
	Stat:SetFrameStrata("BACKGROUND")
	Stat:SetFrameLevel(3)
	Stat.Option = C.datatext.haste

	local Text  = Stat:CreateFontString("TukuiStatHasteText", "OVERLAY")
	Text:SetFont(T.SetUserFont())
	T.PP(C["datatext"].haste, Text)

	local int = 1

	local function Update(self, t)
		spellhaste = UnitSpellHaste("player");
		rangedhaste = GetRangedHaste();
		attackhaste = GetMeleeHaste();
		
		if attackhaste > spellhaste and select(2, UnitClass("Player")) ~= "HUNTER" then
			haste = attackhaste
		elseif select(2, UnitClass("Player")) == "HUNTER" then
			haste = rangedhaste
		else
			haste = spellhaste
		end
		
		int = int - t
		if int < 0 then
			Text:SetText(format("%.2f", haste).."% "..T.panelcolor..L.datatext_playerhaste)
			int = 1
		end     
	end

	Stat:SetScript("OnUpdate", Update)
	Update(Stat, 10)
end