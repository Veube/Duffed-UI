local T, C, L = unpack(select(2, ... ))

-- main frame
local DuffedUIMainFrame = CreateFrame("Frame", "DuffedUIMainFrame", UIParent)
DuffedUIMainFrame:SetSize(650, 350)
DuffedUIMainFrame:SetPoint("CENTER")
DuffedUIMainFrame:SetTemplate("Transparent")
DuffedUIMainFrame:CreateShadow("Default")
DuffedUIMainFrame:Hide()
DuffedUIMainFrame:SetFrameLevel(10)
DuffedUIMainFrame:SetFrameStrata("BACKGROUND")

local DuffedUIMainFrameIconTopLeft = CreateFrame("Frame", "DuffedTest", DuffedUIMainFrame)
DuffedUIMainFrameIconTopLeft:CreatePanel(nil, 44, 44, "BOTTOMRIGHT", DuffedUIMainFrame, "TOPRIGHT", 0, 3)
DuffedUIMainFrameIconTopLeft:SetFrameStrata("HIGH")
DuffedUIMainFrameIconTopLeft:CreateShadow("Default")

DuffedUIMainFrameIconTopLeft.Background = DuffedUIMainFrameIconTopLeft:CreateTexture(nil, "ARTWORK")
DuffedUIMainFrameIconTopLeft.Background:Point("TOPLEFT", 2, -2)
DuffedUIMainFrameIconTopLeft.Background:Point("BOTTOMRIGHT", -2, 2)
DuffedUIMainFrameIconTopLeft.Background:SetTexture(C["media"].duffed)

local DuffedUIMainFrameIconTopRight = CreateFrame("Frame", "DuffedTest", DuffedUIMainFrame)
DuffedUIMainFrameIconTopRight:CreatePanel(nil, 44, 44, "BOTTOMLEFT", DuffedUIMainFrame, "TOPLEFT", 0, 3)
DuffedUIMainFrameIconTopRight:SetFrameStrata("HIGH")
DuffedUIMainFrameIconTopRight:CreateShadow("Default")

DuffedUIMainFrameIconTopRight.Background = DuffedUIMainFrameIconTopRight:CreateTexture(nil, "ARTWORK")
DuffedUIMainFrameIconTopRight.Background:Point("TOPLEFT", 2, -2)
DuffedUIMainFrameIconTopRight.Background:Point("BOTTOMRIGHT", -2, 2)
DuffedUIMainFrameIconTopRight.Background:SetTexture(C["media"].duffed)

local DuffedUIMainFrameTitle = CreateFrame("Frame", "TukuiInstallTitle", DuffedUIMainFrame)
DuffedUIMainFrameTitle:CreatePanel("Transparent", DuffedUIMainFrame:GetWidth( ) - 92, 30, "BOTTOM", DuffedUIMainFrame, "TOP", 0, 3)
DuffedUIMainFrameTitle:SetFrameStrata("HIGH")
DuffedUIMainFrameTitle:CreateShadow("Default")

local DuffedUIMainFrameTitleText = DuffedUIMainFrameTitle:CreateFontString(nil, "OVERLAY")
DuffedUIMainFrameTitleText:SetFont(C["media"].font, 16, "THINOUTLINE")
DuffedUIMainFrameTitleText:SetPoint("CENTER", DuffedUIMainFrameTitle, 0, 0)
DuffedUIMainFrameTitleText:SetText("|cffc41f3bDuffedUI|r - Help")

-- main frame - navigation
local DuffedUIMainFrameNavigation = CreateFrame("Frame", "DuffedUIMainFrameNavigation", DuffedUIMainFrame)
DuffedUIMainFrameNavigation:SetSize(180, 342)
DuffedUIMainFrameNavigation:SetPoint("LEFT", 4, 0)
DuffedUIMainFrameNavigation:SetTemplate("Transparent")

-- main frame - content
local DuffedUIMainFrameContent = CreateFrame("Frame", "DuffedUIMainFrameContent", DuffedUIMainFrame)
DuffedUIMainFrameContent:SetSize(458, 342)
DuffedUIMainFrameContent:SetPoint("RIGHT", -4, 0)
DuffedUIMainFrameContent:SetTemplate("Transparent")

local DuffedUIMainFrameContentScrollFrame = CreateFrame("ScrollFrame", "DuffedUIMainFrameContentScrollFrame", DuffedUIMainFrameContent, "UIPanelScrollFrameTemplate")
DuffedUIMainFrameContentScrollFrame:SetPoint("TOPLEFT", DuffedUIMainFrameContent, "TOPLEFT", 10, -10)
DuffedUIMainFrameContentScrollFrame:SetPoint("BOTTOMRIGHT", DuffedUIMainFrameContent, "BOTTOMRIGHT", -30, 10)
T.SkinScrollBar(DuffedUIMainFrameContentScrollFrameScrollBar)

local DuffedUIMainFrameContentScrollFrameBackground = CreateFrame("Frame", "DuffedUIMainFrameContentScrollFrameBackground", DuffedUIMainFrameContentScrollFrame)
DuffedUIMainFrameContentScrollFrameBackground:SetPoint("TOPLEFT")
DuffedUIMainFrameContentScrollFrameBackground:SetWidth(DuffedUIMainFrameContentScrollFrame:GetWidth())
DuffedUIMainFrameContentScrollFrameBackground:SetHeight(DuffedUIMainFrameContentScrollFrame:GetHeight())
DuffedUIMainFrameContentScrollFrame:SetScrollChild(DuffedUIMainFrameContentScrollFrameBackground)
	
local DuffedUIMainFrameContentTitle = DuffedUIMainFrameContentScrollFrameBackground:CreateFontString(nil, "OVERLAY")
DuffedUIMainFrameContentTitle:SetFont(C["media"].font, 14, "THINOUTLINE")
DuffedUIMainFrameContentTitle:SetPoint("TOP", DuffedUIMainFrameContentScrollFrameBackground, "TOP", 0, -10)

local DuffedUIMainFrameContentText1 = DuffedUIMainFrameContentScrollFrameBackground:CreateFontString(nil, "OVERLAY")
DuffedUIMainFrameContentText1:SetJustifyH("LEFT")
DuffedUIMainFrameContentText1:SetFont(T.SetUserFont())
DuffedUIMainFrameContentText1:SetWidth(DuffedUIMainFrameContentScrollFrameBackground:GetWidth() - 20)
DuffedUIMainFrameContentText1:SetPoint("TOPLEFT", DuffedUIMainFrameContentScrollFrameBackground, "TOPLEFT", 20, -45)

local DuffedUIMainFrameContentText2 = DuffedUIMainFrameContentScrollFrameBackground:CreateFontString(nil, "OVERLAY")
DuffedUIMainFrameContentText2:SetJustifyH("LEFT")
DuffedUIMainFrameContentText2:SetFont(T.SetUserFont())
DuffedUIMainFrameContentText2:SetWidth(DuffedUIMainFrameContentScrollFrameBackground:GetWidth() - 30)
DuffedUIMainFrameContentText2:SetPoint("TOPLEFT", DuffedUIMainFrameContentText1, "BOTTOMLEFT", 0, -20)

local DuffedUIMainFrameContentText3 = DuffedUIMainFrameContentScrollFrameBackground:CreateFontString(nil, "OVERLAY")
DuffedUIMainFrameContentText3:SetJustifyH("LEFT")
DuffedUIMainFrameContentText3:SetFont(T.SetUserFont())
DuffedUIMainFrameContentText3:SetWidth(DuffedUIMainFrameContentScrollFrameBackground:GetWidth() - 30)
DuffedUIMainFrameContentText3:SetPoint("TOPLEFT", DuffedUIMainFrameContentText2, "BOTTOMLEFT", 0, -20)

local DuffedUIMainFrameContentText4 = DuffedUIMainFrameContentScrollFrameBackground:CreateFontString(nil, "OVERLAY")
DuffedUIMainFrameContentText4:SetJustifyH("LEFT")
DuffedUIMainFrameContentText4:SetFont(T.SetUserFont())
DuffedUIMainFrameContentText4:SetWidth(DuffedUIMainFrameContentScrollFrameBackground:GetWidth() - 30)
DuffedUIMainFrameContentText4:SetPoint("TOPLEFT", DuffedUIMainFrameContentText3, "BOTTOMLEFT", 0, -20)

-- main frame - navigation - buttons
local DuffedUIMainFrameNavigationButtonAttributes = {
	[1] = {"/dhelp 1"},
	[2] = {"/dhelp 2"},
	[3] = {"/dhelp 3"},
	[4] = {"/dhelp 4"},
	[5] = {"/dhelp 5"},
	[6] = {"/dhelp 6"},
	[7] = {"/dhelp 7"},
	[8] = {"/dhelp 8"},
	[9] = {"/dhelp 9"},
}

local DuffedUIMainFrameNavigationButtonTexts = {
	[1] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Slashcommands"},
	[2] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Unitframes"},
	[3] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Chat"},
	[4] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Skins"},
	[5] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Actionbars"},
	[6] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Specswitcher"},
	[7] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."RaidCooldowns & RaidBuff Plus"},
	[8] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Bug Reports & Suggestions"},
	[9] = {T.RGBToHex(unpack(C["media"].datatextcolor2)).."Credits"},
}

local DuffedUIMainFrameNavigationButton = CreateFrame("Button", "DuffedUIMainFrameNavigationButton", DuffedUIMainFrameNavigation)
for i = 1, 9 do
	DuffedUIMainFrameNavigationButton[i] = CreateFrame("Button", "DuffedUIMainFrameNavigationButton" .. i, DuffedUIMainFrameNavigation, "SecureActionButtonTemplate")
	DuffedUIMainFrameNavigationButton[i]:CreatePanel("Default", DuffedUIMainFrameNavigation:GetWidth() - 8, 24, "TOP", DuffedUIMainFrameNavigation, "TOP", 0, -4, true)
	DuffedUIMainFrameNavigationButton[i].Text = T.SetFontString(DuffedUIMainFrameNavigationButton[i], T.SetUserFont())
	DuffedUIMainFrameNavigationButton[i]:SetFrameLevel(DuffedUIMainFrameNavigation:GetFrameLevel() + 1)
	DuffedUIMainFrameNavigationButton[i].Text:Point("CENTER", DuffedUIMainFrameNavigationButton[i], "CENTER", 0, 1)
	DuffedUIMainFrameNavigationButton[i].Text:SetText(unpack( DuffedUIMainFrameNavigationButtonTexts[i]))

	if i == 1 then
		DuffedUIMainFrameNavigationButton[i]:Point("TOP", DuffedUIMainFrameNavigation, "TOP", 0, -5)
	else
		DuffedUIMainFrameNavigationButton[i]:Point("TOP", DuffedUIMainFrameNavigationButton[i - 1], "BOTTOM", 0, -3)
	end
	DuffedUIMainFrameNavigationButton[i]:SetAttribute("type", "macro")
	DuffedUIMainFrameNavigationButton[i]:SetAttribute("macrotext", unpack( DuffedUIMainFrameNavigationButtonAttributes[i]))
	DuffedUIMainFrameNavigationButton[i]:CreateOverlay(DuffedUIMainFrameNavigationButton[i])
	DuffedUIMainFrameNavigationButton[i]:HookScript("OnEnter", T.SetModifiedBackdrop)
	DuffedUIMainFrameNavigationButton[i]:HookScript("OnLeave", T.SetOriginalBackdrop)
end

---------------------------------------------------------------------------------------------
-- functions
---------------------------------------------------------------------------------------------
local dhelpcontentclose = CreateFrame("Button", "DuffedUIMainFrameContentCloseButton", DuffedUIMainFrameContentScrollFrameBackground, "UIPanelCloseButton")
dhelpcontentclose:SetPoint("TOPRIGHT", DuffedUIMainFrameContentScrollFrameBackground, "TOPRIGHT")
T.SkinCloseButton(dhelpcontentclose)
dhelpcontentclose:SetScript("OnClick", function()
	DuffedUIMainFrame:Hide()
end )

local dhelpcontent = function()
	DuffedUIMainFrameContentTitle:SetText("General")
	DuffedUIMainFrameContentText1:SetText("Welcome to the HelpPanel from DuffedUI!\nThis Panel will help you to find the importants settings and commands for DuffedUI :)")
	DuffedUIMainFrameContentText2:SetText("Please select a category.")
	DuffedUIMainFrameContentText3:SetText("Have Fun !")
	DuffedUIMainFrameContentText4:SetText("greetz Merith - Zirkel des Cenarius EU")
end

local dhelp9content = function()
	DuffedUIMainFrameContentTitle:SetText("Credits")
	DuffedUIMainFrameContentText1:SetText("")
	DuffedUIMainFrameContentText2:SetText("Special thanks goes to hank aka Duffed for this awesome and cool UI. Thanks to you that I can continue it :)")
	DuffedUIMainFrameContentText3:SetText("And all others:")
	DuffedUIMainFrameContentText4:SetText("Sinaris, Tukz, Elv, nightcracker, Eclípsé, Hydra, Asphyxia, Jasje, Epicgrimm, JerichoHM and all others who help Tukz and the Editors for the awesome Tukui")
end

local dhelp8content = function()
	DuffedUIMainFrameContentTitle:SetText("Bug Reports & Suggestions")
	DuffedUIMainFrameContentText1:SetText("Bug Reports can be made on two boards. The first one is the Tukui-Forum in the subforum for DuffedUI in the thread Bug Reports , Errors and annoying things. Please read the first post of this thread. The other board is on wowinterface via the commentfunction. I read both every day and I will answert short as possible :)")
	DuffedUIMainFrameContentText2:SetText("")
	DuffedUIMainFrameContentText3:SetText("Suggestions can be in Tukui-Forum or at wowinterface. If you use Tukui-Forum please made your suggestions in the thread DuffedUI v6 - Discussion and if you use wowinterface please use the commentfunction.")
	DuffedUIMainFrameContentText4:SetText("PMs are not observed, because the other users should also see your suggestions.")
end

local dhelp7content = function()
	DuffedUIMainFrameContentTitle:SetText("RaidCooldowns & RaidBuff Plus")
	DuffedUIMainFrameContentText1:SetText("With v6 you have two new features. The first one is the RaidCooldowns-Monitor and the second one is the RaidBuff Plus. The third feature, the cooldownbar is still under development.")
	DuffedUIMainFrameContentText2:SetText("The RaidCooldowns-Monitor tracks all possible raidcooldowns for raid, party and arena. Which chanel you want to broadcast actual running cooldowns can be set in the ingame-Config in the subsection RaidCooldowns.\nThe monitor has as well to other functions. The first one you can get via an left click of one of the bars which announce the current timer of this cooldown. The second one can access via an rightclick on one of the bars to delete an current cooldown.\nNote: Currently, some specs are not considered to reduce the different cooldowns, because I still have not found a suitable possibility to do that.")
	DuffedUIMainFrameContentText3:SetText("Next feature is the RaidBuff Plus from Epicgrimm. With this module you can track all important raidbuffs on your character. Another possibility is that you can see which buff is missing if you use the +-button below the panel.")
	DuffedUIMainFrameContentText4:SetText("")
end

local dhelp6content = function()
	DuffedUIMainFrameContentTitle:SetText("Specswitcher")
	DuffedUIMainFrameContentText1:SetText("The Specswitcher-Modul can you find below the minimap. With this module, you have the possibility to find the main UI functionality in a panel. First and important function is to switch your spec with one click without to open the talentframe. Second important option is to set your gear for every spec for switching automatically your gear. This option can be set in the ingame-Config in the subsection Misc Options.")
	DuffedUIMainFrameContentText2:SetText("Every set of gear you have saved in your characterscreen will be displayed on the bottom on the entire panel with the icon you have selected in the default gearmanger to find it easily.")
	DuffedUIMainFrameContentText3:SetText("Next functions are the seperat buttons. You can switch between both Unitframelayouts with one click. As well you can use the buttons to move your UI-Elements or bind your hotkeys")
	DuffedUIMainFrameContentText4:SetText("Another button is the Addonmanager. With this plugin you have the possibility to activate or deactivate Addons. Make sure that all Addons are loaded on login to administrate it.")
end

local dhelp5content = function()
	DuffedUIMainFrameContentTitle:SetText("Actionbars")
	DuffedUIMainFrameContentText1:SetText("You have three different Layouts for your actionbars.")
	DuffedUIMainFrameContentText2:SetText("One of this three Layouts can you activate on the Generalsection in the ingame-Config with the option Use Lowres on Highres. The other two layouts can be set at the subsection Actionbars with the option Set Layout, valid values are 1 - 2. Settings of the seperate Layouts are:\n\n-Lowres: 3x12 Bottombars & 2x12 Right Bars\n-Layout 1: 1x24, 1x12 Bottombars, 2x12 Right Bars (default Layout)\n-Layout 2: 2x12 Bottombars, 2x6 Splitbars, 2x12 Right Bars")
	DuffedUIMainFrameContentText3:SetText("You have the possibility to swap your mainbar with bar3 or bar2 which depends on the layout what you have loaded. Another option is that you can set your rightbars permanently on mouseover with the option Rightbars on mouseover or hide it with button on the rightbars.")
	DuffedUIMainFrameContentText4:SetText("As well you activate an highlight for macros with proccskill, macrotext and hotkeys on actionbutton or adjust your buttonsize. But be carefull with the buttonsize ... all above 29 looks ugly ;)")
end

local dhelp4content = function()
	DuffedUIMainFrameContentTitle:SetText("Skins, Addons")
	DuffedUIMainFrameContentText1:SetText("The entire UI has skinned frames for all default Blizzardframes. If you want the skinned frames you can disable it in the ingame-Config in the subsection Skins. Uncheck Enable Blizzard-Skin.")
	DuffedUIMainFrameContentText2:SetText("For next the most common Addons, like DBM, DXE, Recount, Skada and so on, are skinned per default. You deactivate every skin seperatly if you do not use the corresponding Addon.")
	DuffedUIMainFrameContentText3:SetText("If you want to add your Addons to the right chatframe, enable the both options Enable Addonbackground and Toggle Addonbackground in- / outfight and place the windwos from the Addons in the right chatbackground for the first time. After you have do this, the position for the Addons are fix.")
	DuffedUIMainFrameContentText4:SetText("If you want to show your addons outfight, please use the corresponding function from the Addon.")
end

local dhelp3content = function()
	DuffedUIMainFrameContentTitle:SetText("Chat")
	DuffedUIMainFrameContentText1:SetText("Important things for first: The Option to deavtivate the backgrounds seperatly is gone. Why I have changed this? The reason is very simple. Before I removed this option the chatframes have produce an massive ammount of taints with this option and I want to reduce the ammount of taints to near zero.")
	DuffedUIMainFrameContentText2:SetText("To resize the backgrounds properly you have @ingame-Config in the subsection Chat the possibility to adkujst the size of both backgrounds. Choose your values for the right size. But please remember thought that the new size affects both chat backgrounds in width and height. After you had resized you panels, you can resize the chatframes as usual.")
	DuffedUIMainFrameContentText3:SetText("You have as well the options to enable fading of text, the textalign of the right chat and to set an soundnotification for whispers.")
	DuffedUIMainFrameContentText4:SetText("If you don't want the right chatbackground open the panels.lua @Tukui\modules\panels and search for chatrightbg, tabsbgright and copy2. Delete this lines or comment out it with -- for every line.")
end

local dhelp2content = function()
	DuffedUIMainFrameContentTitle:SetText("Unitframes")
	DuffedUIMainFrameContentText1:SetText("For first you have three different Unitframes-Layout.")
	DuffedUIMainFrameContentText2:SetText("You can switch the layouts via ingame-Config in the subsection Unit Frames. Valid values are 1 - 3.\nAs well you can use a larger focusframe for Layout 1 or 2. Use for the larger focusframe the option Enable large focusframe.")
	DuffedUIMainFrameContentText3:SetText("Portraits can be displayed either as a model or icon. You can adjust the Portrait as well in the subsection Unit Frames via the option Portraitstyle. Valid values are MODEL or ICON (MUST be in capslock)")
	DuffedUIMainFrameContentText4:SetText("For the Heal-Layout you can adjust Gridonly or not. Use for it the option Enable Grid only for Heal-Layout.\n The Unitframes have an faderoption which is experimental. If you activate this fader, every you leave the combat your Unitframes are fading out to the value (Set Alpha for fader) which you have set")
end

local dhelp1content = function()
	DuffedUIMainFrameContentTitle:SetText("Slashcommands")
	DuffedUIMainFrameContentText1:SetText("/dhelp => Open this panel\n/resetui => Reset the position of the entire UI\n/install => Reinstall the entire UI")
	DuffedUIMainFrameContentText2:SetText("/moveui or /mtukui => Enable movers to place the UI-Elements\n/hb => Set keybindings via hoverbind\n/rl => Reloads the UI")
	DuffedUIMainFrameContentText3:SetText("/heal => Switch to Heal-Layout\n/dps => Switch to DPS-Layout\n/tc => Open ingame-Config")
	DuffedUIMainFrameContentText4:SetText("/am => Open Addonmanager\n/version => Shows the versionframe")
end

-- slash command
local dhelp = DuffedUIHelp or function() end
DuffedUIHelp = function(msg)
	if InCombatLockdown() then print(ERR_NOT_IN_COMBAT) return end

	if msg == "1" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp1content()
	elseif msg == "2" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp2content()
	elseif msg == "3" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp3content()
	elseif msg == "4" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp4content()
	elseif msg == "5" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp5content()
	elseif msg == "6" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp6content()
	elseif msg == "7" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp7content()
	elseif msg == "8" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp8content()
	elseif msg == "9" then
		if not DuffedUIMainFrame:IsVisible() then return end
		dhelp9content()
	else
		if DuffedUIMainFrame:IsVisible() then
			DuffedUIMainFrame:Hide()
		else
			DuffedUIMainFrame:Show()
			dhelpcontent()
		end
	end
end

SlashCmdList.DuffedUIHelp = DuffedUIHelp
SLASH_DuffedUIHelp1 = "/dhelp"