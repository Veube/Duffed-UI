local T, C, L = unpack(select(2, ...))

-----------------------------------------
-- This is the default configuration file
-----------------------------------------

C["general"] = {
	["autoscale"] = true,                               		-- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 0.71,                                 		-- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["overridelowtohigh"] = false,                      		-- EXPERIMENTAL ONLY! override lower version to higher version on a lower reso.
	["backdropcolor"] = { .05, .05, .05 },                   	-- default backdrop color of panels
	["bordercolor"] = { .15, .15, .15 },	                    -- default border color of panels
	["normalfont"] = true,										-- use normalfont instead of pixelfont
	["threatbar"] = true,										-- set threatbar to right chattabs
	["overridehightolow"] = false,								-- use lowres-layout on high res
}

C["unitframes"] = {
	-- general options
	["layout"] = 3,												-- set layout for unitframes
	["framewidth"] = 218,										-- framewidth for unitframes
	["fader"] = false,											-- enable fader for unitframes out of fight
		["fader_alpha"] = 1,									-- alphavalue for unitframefader
	["percent"] = false,										-- enable percenttext for player and target
	["ColorGradient"] = false,									-- enable colorgradient
	["healthbarcolor"] = {.2, .2, .2, 1},						-- Healthbar color (if unicolor = true) 
	["deficitcolor"] = {0, 0, 0},								-- Healthbar deficit color (if unicolor = true)
	["powerClasscolored"] = true,								-- enable classcolored power
	["vengeancebar"] = false,									-- enable vengeancebar
	["buffrows"] = 1,											-- Buff rows above Target (and Player if u enable it)
	["debuffrows"] = 2, 										-- Debuff rows above Target (and Player if u enable it)
	["totandpetlines"] = true,									-- enable lines for pet and tot
	["largefocus"] = false,										-- enable largefocusframe
	["focusdebuffs"] = true,									-- enable focusdebuffs
	["portraitstyle"] = "MODEL",								-- set portraitstyle
	["gridsolo"] = false,										-- show gridframe if player is solo
	["enable"] = true,                                  		-- do i really need to explain this?
	["enemyhcolor"] = false,                            		-- enemy target (players) color by hostility, very useful for healer.
	["unitcastbar"] = true,                             		-- enable tukui castbar
	["classiccombo"] = false,                           		-- display classic combo points (from Tukui 13 or less)
	["movecombobar"] = true,                            		-- display the new combo bar (t14+) from target to player (ROGUE ONLY)
	["auratimer"] = true,                               		-- enable timers on buffs/debuffs
	["auratextscale"] = 11,                             		-- the font size of buffs/debuffs timers on unitframes
	["targetauras"] = true,                             		-- enable auras on target unit frame
	["lowThreshold"] = 20,                              		-- global low threshold, for low mana warning.
	["targetpowerpvponly"] = true,                      		-- enable power text on pvp target only
	["totdebuffs"] = true,			                            -- enable tot debuffs (high reso only)
	["showtotalhpmp"] = false,                          		-- change the display of info text on player and target with XXXX/Total.
	["showsmooth"] = true,                              		-- enable smooth bar
	["charportrait"] = true,			                        -- do i really need to explain this?
	["maintank"] = true,			                            -- enable maintank
	["mainassist"] = false,                             		-- enable mainassist
	["unicolor"] = true,	                               		-- enable unicolor theme
	["combatfeedback"] = true,                          		-- enable combattext on player and target.
	["playeraggro"] = true,                             		-- color player border to red if you have aggro on current target.
	["healcomm"] = false,                               		-- enable healprediction support.
	["onlyselfdebuffs"] = false,                        		-- display only our own debuffs applied on target
	["showfocustarget"] = true,                         		-- show focus target
	["bordercolor"] = { .4,.4,.4 },                     		-- unit frames panel border color

	-- raid layout (if one of them is enabled)
	["showrange"] = true,                               		-- show range opacity on raidframes
	["raidalphaoor"] = 0.3,                             		-- alpha of unitframes when unit is out of range
	["gridonly"] = false,                               		-- enable grid only mode for all healer mode raid layout.
	["showsymbols"] = true,	                            		-- show symbol.
	["aggro"] = true,                                   		-- show aggro on all raids layouts
	["raidunitdebuffwatch"] = true,                     		-- track important spell to watch in pve for grid mode.
	["gridhealthvertical"] = true,                      		-- enable vertical grow on health bar for grid mode.
	["showplayerinparty"] = false,                      		-- show my player frame in party
	["gridscale"] = 1,                                  		-- set the healing grid scaling
	["gridvertical"] = false,                           		-- grid group displayed vertically
	["hidepp"] = false,											-- hide partypets @heallayout
	
	-- boss frames
	["showboss"] = true,                                		-- enable boss unit frames for PVELOL encounters.

	-- priest only plugin
	["weakenedsoulbar"] = true,                         		-- show weakened soul bar
	
	-- class bar
	["classbar"] = true,                                		-- enable tukui classbar over player unit
}

C["rcd"] = {
	["enable"] = true,											-- enable raidcooldownmonitor
	["raid"] = true,											-- display bars in raid
	["party"] = false,											-- display bars in party
	["arena"] = false,											-- display bars in arena
}

C["classtimer"] = {
	["enable"] = true,											-- enable classtimer
	["targetdebuffs"] = false,									-- target debuffs above target (looks crappy imo)
	["playercolor"] = {.2, .2, .2, 1 },							-- playerbarcolor
	["targetbuffcolor"] = { 70/255, 150/255, 70/255, 1 },		-- targetbarcolor (buff)
	["targetdebuffcolor"] = { 150/255, 30/255, 30/255, 1 },		-- targetbarcolor (debuff)
	["trinketcolor"] = {75/255, 75/255, 75/255, 1 },			-- trinketbarcolor
}

C["duffed"] = {
	["drinkannouncement"] = true,								-- Drink announcement for arena
	["ccannouncement"] = true,									-- Announce CC/Buffs/Debuffs
	["sayinterrupt"] = true,									-- Interrupt announce
	["dispelannouncement"] = false,								-- Announce dispels in a movable frame
	["priest_sos"] = false,										-- Enable Strength of Souldisplay for priests
	["arenaonly"] = false,										-- Aura and Interrupt announce in arena only
	["announcechannel"] = "SAY"									-- Set Announcechannel
}

C["skins"] = {
	["blizzard"] = true,                          				-- reskin all Blizzard frames
	["bigwigs"] = true,                           				-- reskin bigwigs
	["dbm"] = true,                               				-- reskin dbm
	["dxe"] = true,                               				-- reskin dxe
	["omen"] = true,                              				-- reskin omen
	["recount"] = true,                           				-- reskin recount
	["skada"] = true,                             				-- reskin skada
	["tinydps"] = true,                           				-- reskin tinydps
	["background"] = false,										-- enable additional background for addons
	["toggle"] = false,											-- enable combattoggle for addonbackground
}

C["misc"] = {
	["sesenable"] = true,										-- Enable Specswitcher
	["sesenablegear"] = true,									-- Enable Gear
	["sesset1"] = 1,											-- Gearset for Primary Spec
	["sesset2"] = 2,											-- Gearset for Secondary Spec
	["sesgearswap"] = true,										-- Enable automatic gearswap @respec
	["sescastbar"] = true,										-- Enable castbar @specswitcher
	["swingtimerenable"] = false,								-- enable swingtiemer-module
	["swingtimerwidth"] = 210,									-- bar width
	["swingtimerheight"] = 6,									-- bar height
	["swingtimercolor"] = {1, 0, 0, 0.8},						-- bar color
	["sComboenable"] = true,									-- enable sCombobar
	["sComboenergybar"] = true,									-- enable energybar below combopoints
	["bossicons"] = true,										-- enable alternativ bossicons
	["ilvlcharacter"] = true,									-- enable itemlevel / durability display on characterscreen
	["combatanimation"] = true,									-- enable the animation for entering or leaving combat
}

C["arena"] = {
	["unitframes"] = true,                              		-- enable tukz arena unitframes (requirement : tukui unitframes enabled)
}

C["auras"] = {
	["player"] = true,                                  		-- enable tukui buffs/debuffs
	["consolidate"] = false,		                            -- enable downpdown menu with consolidate buff
	["flash"] = false,                                   		-- flash warning for buff with time < 30 sec
	["selfbufs"] = true,										-- enable selfbuffnotification
	["remindersound"] = false,									-- enable remindersound for selfbuffnotification
}

C["actionbar"] = {
	["enable"] = true,                                  		-- enable tukui action bars
	["hotkey"] = true,                                  		-- enable hotkey display because it was a lot requested
	["hideshapeshift"] = false,                         		-- hide shapeshift or totembar because it was a lot requested.
	["showgrid"] = true,                                		-- show grid on empty button
	["buttonsize"] = 27,                                		-- normal buttons size
	["petbuttonsize"] = 29,                             		-- pet & stance buttons size
	["buttonspacing"] = 4,                              		-- buttons spacing
	["ownshdbar"] = false,                              		-- use a complete new stance bar for shadow dance (rogue only)
	["button2"] = false,										-- hide between datatextpanels
	["petbarhorizontal"] = false,								-- set petbar horizontal
	["rightbarsmouseover"] = false,								-- set right actionbars on mouseover
	["petbaralwaysvisible"] = false,							-- manages visibility of petbar for mouseoveroption
	["swapbar1and3"] = true,									-- swap bar1 with bar3
	["verticalshapeshift"] = false,								-- set shapeshiftbar vertical
	["shapeshiftmouseover"] = false,							-- set shapeshiftbar on mouseover
	["shapeshiftborder"] = true,								-- enable border for shapeshiftbar
	["macro"] = true,											-- enable macrohighlightning for procs
	["layout"] = 1,												-- set layout for actionbars
	["macrotext"] = true,										-- enable macrotext on actionbuttons
}

C["castbar"] = {
	["enable"] = true,											-- enable castbar
	["cbicons"] = true,											-- enable castbaricons
	["cblatency"] = false,                              		-- enable castbar latency
	["focuswidth"] = 240,										-- Focus Castbar width
}

C["bags"] = {
	["enable"] = true,                                  		-- enable an all in one bag mod that fit tukui perfectly
	["transparent"] = false,									-- enable transparent bags
	["moveable"] = false,										-- enable moveable bags
}

C["loot"] = {
	["lootframe"] = true,                           		   	-- reskin the loot frame to fit tukui
	["rolllootframe"] = true,               		           	-- reskin the roll frame to fit tukui
	["autogreed"] = true,           		                   	-- auto-dez or auto-greed item at max level, auto-greed Frozen orb
}

C["cooldown"] = {
	["enable"] = true,      		                           	-- do i really need to explain this?
	["treshold"] = 8,		                                   	-- show decimal under X seconds and text turn red
}

C["datatext"] = {
	["classcolor"] = true,										-- enable classcolor for textelements
	["fps_ms"] = 2,			                                    -- show fps and ms on panels
	["bags"] = 0,                                       		-- show space used in bags on panels
	["gold"] = 6,                                       		-- show your current gold on panels
	["wowtime"] = 8,                                    		-- show time on panels
	["guild"] = 1,                                      		-- show number on guildmate connected on panels
	["dur"] = 4,		                                        -- show your equipment durability on panels.
	["friends"] = 3,                                    		-- show number of friends connected.
	["dps_text"] = 0,                                   		-- show a dps meter on panels
	["hps_text"] = 0,                                   		-- show a heal meter on panels
	["power"] = 7,                                      		-- show your attackpower/spellpower/healpower/rangedattackpower whatever stat is higher gets displayed
	["haste"] = 0,                                      		-- show your haste rating on panels.
	["crit"] = 0,                                       		-- show your crit rating on panels.
	["avd"] = 0,                                        		-- show your current avoidance against the level of the mob your targeting
	["armor"] = 0,                                      		-- show your armor value against the level mob you are currently targeting
	["currency"] = 0,                                   		-- show your tracked currency on panels
	["hit"] = 0,                                        		-- show hit rating
	["mastery"] = 0,                                    		-- show mastery rating
	["micromenu"] = 0,                                  		-- add a micro menu thought datatext
	["regen"] = 0,                                      		-- show mana regeneration
	["talent"] = 0,                                     		-- show talent
	["calltoarms"] = 0,                                 		-- show dungeon and call to arms
	["block"] = 0,												-- show block
	["dodge"] = 0,												-- show dodge
	["experience"] = 0,											-- show experience
	["reputation"] = 5,											-- show reputation
	["honor"] = 0,												-- show honor
	["honorablekills"] = 0,										-- show honorable kills
	["mmenu"] = 0,												-- shows mMenu datatext (required: mMenu AddOn)

	["battleground"] = true,                            		-- enable 3 stats in battleground only that replace stat1,stat2,stat3.
	["time24"] = true,                                  		-- set time to 24h format.
	["localtime"] = false,                              		-- set time to local time instead of server time.
	["fontsize"] = 12,                                  		-- font size for panels.
	["color1"] = { .4, .4, .4 },								-- color of datatext title
	["color2"] = { 1, 1, 1 },									-- color of datatext result
	["outline"] = "THINOUTLINE",								-- set fontflag
}

C["chat"] = {
	["enable"] = true,                                  		-- blah
	["whispersound"] = true,                            		-- play a sound when receiving whisper
	["background"] = true,										-- enable chatbackground
	["backgroundheight"] = 149,									-- set height of chabackground (one option for both backgrounds)
	["backgroundwidth"] = 357,									-- set width of chatbackground (one option for both backgrounds)
	["fading"] = true,											-- enable textfading
	["textright"] = true,										-- set textalign to right for right chatframe
}

C["nameplate"] = {
	["enable"] = true,                                  		-- enable nice skinned nameplates that fit into tukui
	["showhealth"] = false,				                		-- show health text on nameplate
	["enhancethreat"] = false,			                		-- threat features based on if your a tank or not
	["combat"] = false,					                		-- only show enemy nameplates in-combat.
	["goodcolor"] = {75/255,  175/255, 76/255},	        		-- good threat color (tank shows this with threat, everyone else without)
	["badcolor"] = {0.78, 0.25, 0.25},			        		-- bad threat color (opposite of above)
	["transitioncolor"] = {218/255, 197/255, 92/255},			-- threat color when gaining threat
	["debuffs"] = true,											-- enable debufftracking on nameplates
}

C["tooltip"] = {
	["enable"] = true,                                  		-- true to enable this mod, false to disable
	["hidecombat"] = false,                             		-- hide bottom-right tooltip when in combat
	["hidebuttons"] = false,                            		-- always hide action bar buttons tooltip.
	["hideuf"] = false,                                 		-- hide tooltip on unitframes
	["cursor"] = false,                                 		-- tooltip via cursor only
	["ilvl"] = true,											-- shows average itemlevel on tooltip
	["showspellid"] = true,										-- show spellid on tooltip
}

C["merchant"] = {
	["sellgrays"] = true,                               		-- automaticly sell grays?
	["autorepair"] = true,                              		-- automaticly repair?
	["sellmisc"] = true,                                		-- sell defined items automatically
	["autoguildrepair"] = true,									-- enable autoguildrepair if it possible
}

C["error"] = {
	["enable"] = true,                                  		-- true to enable this mod, false to disable
	filter = {                                          		-- what messages to not hide
		[INVENTORY_FULL] = true,                        		-- inventory is full will not be hidden by default
	},
}

C["invite"] = { 
	["autoaccept"] = true,                              		-- auto-accept invite from guildmate and friends.
}
