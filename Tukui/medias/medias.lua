local T, C, L = unpack(select(2, ...))

C["media"] = {
	-- fonts (ENGLISH, SPANISH)
	["font"] = [=[Interface\Addons\Tukui\medias\fonts\normal_font.ttf]=], 										-- general font of tukui
	["uffont"] = [[Interface\AddOns\Tukui\medias\fonts\uf_font.ttf]], 											-- general font of unitframes
	["dmgfont"] = [[Interface\AddOns\Tukui\medias\fonts\combat_font.ttf]], 										-- general font of dmg / sct
	
	-- fonts (DEUTSCH)
	["de_font"] = [=[Interface\Addons\Tukui\medias\fonts\normal_font.ttf]=], 									-- general font of tukui
	["de_uffont"] = [[Interface\AddOns\Tukui\medias\fonts\uf_font.ttf]], 										-- general font of unitframes
	["de_dmgfont"] = [[Interface\AddOns\Tukui\medias\fonts\combat_font.ttf]], 									-- general font of dmg / sct
	
	-- fonts (FRENCH)
	["fr_font"] = [=[Interface\Addons\Tukui\medias\fonts\normal_font.ttf]=], 									-- general font of tukui
	["fr_uffont"] = [[Interface\AddOns\Tukui\medias\fonts\uf_font.ttf]], 										-- general font of unitframes
	["fr_dmgfont"] = [=[Interface\AddOns\Tukui\medias\fonts\combat_font.ttf]=], 								-- general font of dmg / sct
	
	-- fonts (RUSSIAN)
	["ru_font"] = [=[Interface\Addons\Tukui\medias\fonts\normal_font.ttf]=], 									-- general font of tukui
	["ru_uffont"] = [[Fonts\ARIALN.TTF]], 																		-- general font of unitframes
	["ru_dmgfont"] = [[Interface\AddOns\Tukui\medias\fonts\combat_font_rus.ttf]], 								-- general font of dmg / sct
	["ru_pixelfont"] = [[Interface\AddOns\Tukui\medias\fonts\ru_pixelfont.ttf]],								-- pixelfont for cyrillic
	
	-- fonts (TAIWAN ONLY)
	["tw_font"] = [=[Fonts\bLEI00D.ttf]=], 																		-- general font of tukui
	["tw_uffont"] = [[Fonts\bLEI00D.ttf]], 																		-- general font of unitframes
	["tw_dmgfont"] = [[Fonts\bLEI00D.ttf]], 																	-- general font of dmg / sct
	
	-- fonts (KOREAN ONLY)
	["kr_font"] = [=[Fonts\2002.TTF]=], 																		-- general font of tukui
	["kr_uffont"] = [[Fonts\2002.TTF]], 																		-- general font of unitframes
	["kr_dmgfont"] = [[Fonts\2002.TTF]], 																		-- general font of dmg / sct
	
	["cn_font"] = [=[Fonts\ZYKai_T.TTF]=], 																		-- general font of tukui
	["cn_uffont"] = [[Fonts\ZYHei.TTF]], 																		-- general font of unitframes
	["cn_dmgfont"] = [[Fonts\ZYKai_C.TTF]], 																	-- general font of dmg / sct
	
	-- fonts (GLOBAL)
	["pixelfont"] = [=[Interface\Addons\Tukui\medias\fonts\pixel_font.ttf]=], 									-- general font of tukui
	
	-- textures
	["normTex"] = [[Interface\AddOns\Tukui\medias\textures\normTex]], 											-- texture used for tukui healthbar/powerbar/etc
	["glowTex"] = [[Interface\AddOns\Tukui\medias\textures\glowTex]], 											-- the glow text around some frame.
	["bubbleTex"] = [[Interface\AddOns\Tukui\medias\textures\bubbleTex]], 										-- unitframes combo points
	["copyicon"] = [[Interface\AddOns\Tukui\medias\textures\copy]], 											-- copy icon
	["blank"] = [[Interface\AddOns\Tukui\medias\textures\blank]], 												-- the main texture for all borders/panels
	["buttonhover"] = [[Interface\AddOns\Tukui\medias\textures\button_hover]],									-- texture for buttonhover
	["largenodes"] = [[Interface\AddOns\Tukui\medias\textures\nodesLarge]],										-- bliptexture for farmmode
	["duffed"] = [[Interface\AddOns\Tukui\medias\textures\duffed]],												-- duffedicon
	["blankxct"] = [[Interface\AddOns\Tukui\medias\textures\blankxct]],											-- blanktexture for sct
	
	-- colors
	["bordercolor"] = C["general"].bordercolor or { .15, .15, .15 }, 											-- border color of tukui panels
	["backdropcolor"] = C["general"].backdropcolor or { .05,.05,.05 }, 											-- background color of tukui panels
	["datatextcolor1"] = C["datatext"].color1 or { .4, .4, .4 },												-- color of datatext title
	["datatextcolor2"] = C["datatext"].color2 or { 1, 1, 1 },													-- color of datatext result
	
	-- sound
	["whisper"] = [[Interface\AddOns\Tukui\medias\sounds\whisper.mp3]],											-- soundnotification for incoming whisper
	["warning"] = [[Interface\AddOns\Tukui\medias\sounds\warning.mp3]],											-- soundnotification for buffwarnings
}

-------------------------------------------------------------------
-- Used to overwrite default medias outside Tukui
-------------------------------------------------------------------

local settings = TukuiEditedDefaultConfig
if settings then
	local media = settings.media
	if media then
		for option, value in pairs(media) do
			C.media[option] = value
		end
	end
end