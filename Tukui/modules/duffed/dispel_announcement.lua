local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
if C["duffed"].dispelannouncement ~= true then return end

f:SetScript("OnEvent", function(self, event, ...)
	local timestamp, eventType, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...
	if (eventType == "SPELL_DISPEL" or eventType == "SPELL_STOLEN") and sourceName == UnitName("player") then
		f:AddMessage("- "..dStuff.dispelannouncement.textcolor..select(14, ...), 1, 1, 1)
	end
end)