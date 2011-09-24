﻿if GetLocale() == "zhTW" then

	-- update needed msg
	TukuiL.option_update = "由於Tukui的重大更新, 您必須更新您的Tukui ConfigUI, 請移玉手至www.tukui.org"
	
	--Duffed
	TukuiL.option_general_blizzardsct = "Skin Blizzard SCT"
	TukuiL.option_general_normalfont = "Use the Normal/Old Font instead of pixelfont."
	TukuiL.option_general_overridehightolow = "Use Low-res Version on High-res"
	TukuiL.option_general_bordercolor = "Bordercolor (Tukui Panels)"
	TukuiL.option_general_backdropcolor = "Backdropcolor (Tukui Panels)"
	TukuiL.option_general_classcolored_border = "Tukui-Panel-Border classcolored"

	TukuiL.option_datatext_color = "Text Color (datatext, chat etc.)"
	TukuiL.option_datatext_classcolored = "Classcolored Text"
	TukuiL.option_datatext_zonepanel = "Panel that shows current Zone below Minimap"
	TukuiL.option_datatext_experience = "Experience Position"
	TukuiL.option_datatext_reputation = "Reputation Position"
	TukuiL.option_datatext_mmenu = "mMenu Position (mMenu required)"
	TukuiL.option_datatext_font = "Font (datatext, buffs, chat-tabs, ClassTimer)"
	TukuiL.option_datatext_honorablekills = "Honorable Kills Position"
	TukuiL.option_datatext_honor = "Honor Position"

	TukuiL.option_unitframes_healthbarcolor = "Healthbar Color (unicolor)"
	TukuiL.option_unitframes_deficitcolor = "Deficit Color (unicolor)"
	TukuiL.option_unitframes_priestarmor = "Display current Armor for Priest"
	TukuiL.option_unitframes_totandpetlines = "Display Lines from Pet & ToT"
	TukuiL.option_unitframes_framewidth = "Player & Target width (affect also boss- & arenaframes)"
	TukuiL.option_unitframes_fader = "[EXPERIMENTAL] Fade Unitframes out when not in combat (+ some more conditions ofc)"
	TukuiL.option_unitframes_faderalpha = "(Fader) Alpha for frames (if not 0)"
	TukuiL.option_unitframes_vengeancebar = "Display Vengeance-Bar instead of Threat-Bar"
	TukuiL.option_unitframes_largefocus = "Use larger Focus Frame"
	TukuiL.option_unitframes_gridvertical = "Grid direction vertical instead of horizontal"
	TukuiL.option_unitframes_gridpets = "Show pets in Grid Layout (only in group, not raid)"
	TukuiL.option_unitframes_fontsize = "Unitframe Fontsize"
	TukuiL.option_unitframes_gridsolo = "Show Grid even without a Group (Solo)"
	TukuiL.option_unitframes_focusdebuffs = "Enable Focus Debuffs"
	TukuiL.option_unitframes_buffrows = "Buff-rows above Target"
	TukuiL.option_unitframes_debuffrows = "Debuff-rows above Target"
	TukuiL.option_unitframes_portraitstyle = "Portrait Style: ICON or MODEL (Layout 2 only)"
	TukuiL.option_unitframes_layout = "Layout (1, 2, 3)"
	TukuiL.option_unitframes_colorgradient = "Add Color-Gradient to healthbar (from red to healthbarcolor u set in config)"
	TukuiL.option_unitframes_powerclasscolored = "Powerbar in class-color instead of power-color"
	TukuiL.option_unitframes_outline = "Set Outline for Unitframes (NONE, OUTLINE, THINOUTLINE)"
	TukuiL.option_unitframes_percent = "Show HP-Percent left an right of Player & Target"

	TukuiL.option_castbar = "Castbar"
	TukuiL.option_castbar_color = "Castbarcolor for not-player (if not classcolored)"
	TukuiL.option_castbar_classcolored = "Castbar classcolored."
	TukuiL.option_castbar_targetyoffset = "Target Castbar offset from the BOTTOM"
	TukuiL.option_castbar_targetxoffset = "Target Castbar offset from the CENTER (horizontal)"
	TukuiL.option_castbar_targetwidth = "Target Castbar width"
	TukuiL.option_castbar_focusyoffset = "Focus Castbar offset from the TOP"
	TukuiL.option_castbar_focusxoffset = "Focus Castbar offset from the CENTER (horizontal)"
	TukuiL.option_castbar_focuswidth = "Focus Castbar width"

	TukuiL.option_actionbar_swaprbar1and3 = "Swap Mainbar with 2. or 3. (depends on which AB-Layout you use)"
	TukuiL.option_actionbar_rightbarsmouseover = "Rightbars on mouseover"
	TukuiL.option_actionbar_shapeshiftborder = "Display Border around Shapeshiftbar"
	TukuiL.option_actionbar_shapeshiftmouseover = "Shapeshiftbar on mouseover"
	TukuiL.option_actionbar_shapeshiftvertical = "Set Shapeshiftbar vertical"
	TukuiL.option_actionbar_macrotext = "Display Macrotext"
	TukuiL.option_actionbar_macro = "Enable Macrohighlightning for Procs"
	TukuiL.option_actionbar_petbaralwaysvisible = "Always show Petbar even if rightbarsmouseover = true"
	TukuiL.option_actionbar_petbarhorizontal = "Petbar horizontal on top of Bar2/1"
	TukuiL.option_actionbar_button2 = "Show or Hide the +/-Button at the bottom Datatextpanel"
	TukuiL.option_actionbar_barlayout = "Set Actionbarlayout"
	TukuiL.option_actionbar_panels = "Show or Hide the Actionbarpanels (only if you use an alternative Actionbarmod)"

	TukuiL.option_duffed_drinkannouncement = "Announce 'drinking' in  Arena"
	TukuiL.option_duffed_ccannouncement = "Announce CC/Buffs/Debuffs"
	TukuiL.option_duffed_sayinterrupt = "Announce when you interrupt someone"
	TukuiL.option_duffed_dispelannouncement = "Announce Dispels"
	TukuiL.option_duffed_tbtimer = "Enable Tol Barad-Timer in watchframe"
	TukuiL.option_duffed_priest_sos = "Enable display for Strength of Soul (Priests only)"
	TukuiL.option_duffed_arenaonly = "Aura & Interrupt announcement in arena only."
	TukuiL.option_duffed_announcechannel = "Set channel for Announcement (SAY, GROUP, RAID)"

	TukuiL.option_classtimer = "Classtimer"
	TukuiL.option_classtimer_enable = "Enable Classtimer"
	TukuiL.option_classtimer_playercolor = "Player-Bar Color"
	TukuiL.option_classtimer_targetbuffcolor = "Target-Buffs Color"
	TukuiL.option_classtimer_targetdebuffcolor = "Target-Debuffs Color"
	TukuiL.option_classtimer_trinketcolor = "Player-Trinket(Procs) Color"
	TukuiL.option_classtimer_targetdebuffs = "Target Debuffs above Target (looks crappy imo :))"

	TukuiL.option_chat_addonborder = "Create Panel that looks exactly like the left chat (by default) at the BOTTOMRIGHT"
	TukuiL.option_chat_leftchatbackground = "Show Background for the left Chat (ChatFrame1)"
	TukuiL.option_chat_rightchatbackground = "Show Background for the right Chat (ChatFrame4)"
	TukuiL.option_chat_rightchatnumber = "Chat Number X (For Rightchat-Background)"
	TukuiL.option_chat_fading = "Enable fading"
	TukuiL.option_chat_rightchatalign = "Set textalign of right chat to left or right"

	TukuiL.option_skins = "Skins"
	TukuiL.option_skins_background = "Create Panel that looks exactly like the left chat (by default) at the BOTTOMRIGHT"
	TukuiL.option_skins_combat_toggle = "Toggle Addonbackground, Recount, Omen & Skada in-/outfight (NOTE: Turn off auto-hide functions in these Addons)"
	TukuiL.option_skins_skada = "Enable Skada Skin"
	TukuiL.option_skins_recount = "Enable Recount Skin"
	TukuiL.option_skins_omen = "Enable Omen Skin"
	TukuiL.option_skins_bigwigs = "Enable BigWigs Skin"
	TukuiL.option_skins_dxe = "Enable DXE Skin"
	TukuiL.option_skins_tinydps = "Enable TinyDPS Skin"
	TukuiL.option_skins_quartz = "Enable Quartz Skin"
	TukuiL.option_skins_dbm = "Enable DBM Skin"
	TukuiL.option_skins_bskins = "Enable Skinning for Blizzardframes"
	TukuiL.option_skins_itemborder =  "Enable Qualityborder for Items on Character / Inspectframe"

	TukuiL.option_misc = "Misc Options"
	TukuiL.option_misc_swingtimerenable = "Enable SwingTimer"
	TukuiL.option_misc_swingtimerwidth = "Swingtimer Width"
	TukuiL.option_misc_swingtimerheight = "Swingtimer Height"
	TukuiL.option_misc_swingtimercolor = "Swingtimer Bar-Color"
	TukuiL.option_misc_sesenable = "Enable Specswitcher"
	TukuiL.option_misc_sesenablegear = "Enable automatic gearswap"
	TukuiL.option_misc_sesset1 = "Equipset for first spec (must be a number between 1 - 10)"
	TukuiL.option_misc_sesset2 = "Equipset for second spec (must be a number between 1 - 10)"
	TukuiL.option_misc_sesgearswap = "Enable automatic gearswap for respec"
	TukuiL.option_misc_sescastbar = "Enable castbar for specswitcher"
	TukuiL.option_misc_rbf = "Enable RaidBuff Reminder"
	TukuiL.option_misc_rbfmouseover = "Enable mouseover for RaidBuff Reminder"
	TukuiL.option_misc_rbfvertical = "Set RaidBuff Reminder vertical"
	TukuiL.option_misc_npdebuff =  "Enable Debuffdisplay on nameplates"
	TukuiL.option_misc_bossicons = "Enable alternative Bossportraits on instancemaps"
	TukuiL.option_misc_tbchattab = "Set Threatbarpoint to ChatBG2Tab"
	TukuiL.option_misc_sComboenable = "Enable sCombo-Addon for combopoints instead of default cp-display"
	TukuiL.option_misc_sComboenergybar = "Show Energy-Bar below Combopoints"
	
	-- general
	TukuiL.option_general = "一般"
	TukuiL.option_general_uiscale = "自動調整使用者介面比例"
	TukuiL.option_general_override = "使用高解析度設定於低解析度"
	TukuiL.option_general_multisample = "多重採樣保護"
	TukuiL.option_general_customuiscale = "使用者介面比例(需要關閉自動調整)"
	TukuiL.option_general_backdropcolor = "設定面板背景顏色"
	TukuiL.option_general_bordercolor = "設定面板邊框顏色"
	TukuiL.option_general_blizzardreskin = "使用TUKUI風格代替暴雪默認界面"
	
	-- nameplate
	TukuiL.option_nameplates = "名條"
	TukuiL.option_nameplates_enable = "啟用名條模組"
	TukuiL.option_nameplates_enhancethreat = "啟用仇恨上色模式, 依照你的角色定位決定"
	TukuiL.option_nameplates_showhealth = "在名條上顯示生命"
	TukuiL.option_nameplates_combat = "只在戰鬥中顯示敵人名條"
	TukuiL.option_nameplates_goodcolor = "安全仇恨值顏色, 將根據你的角色定位決定"
	TukuiL.option_nameplates_badcolor = "危險威仇恨值顏色, 將根據你的角色定位決定"
	TukuiL.option_nameplates_transitioncolor = "流失或獲得仇恨值顏色"
 
	-- merchant
	TukuiL.option_merchant = "商人"
	TukuiL.option_merchant_autosell = "自動販賣灰色等級物品"
	TukuiL.option_merchant_autorepair = "自動修復裝備"
	TukuiL.option_merchant_sellmisc = "自動販賣特定物品(非灰色等級指定物品)"
	TukuiL.option_merchant_sellmisc = "Sell some defined (craps not grey) items automatically"
	TukuiL.option_merchant_autoguildrepair = "Autorepair from Guild Bank if possible."
 
	-- bags
	TukuiL.option_bags = "背包"
	TukuiL.option_bags_enable = "啟用整合背包"
	TukuiL.option_bags_moveable = "Enable to move your bags"
	TukuiL.option_bags_transparent = "Enable Transparent for bags"
 
	-- datatext
	TukuiL.option_datatext = "資訊欄位"
	TukuiL.option_datatext_24h = "啟用24小時制"
	TukuiL.option_datatext_localtime = "使用當地時間"
	TukuiL.option_datatext_bg = "啟用戰場資訊 (輸入0 以停用)"
	TukuiL.option_datatext_hps = "每秒治療 (輸入0 以停用)"
	TukuiL.option_datatext_guild = "公會資訊 (輸入0 以停用)"
	TukuiL.option_datatext_arp = "護甲穿透 (輸入0 以停用)"
	TukuiL.option_datatext_mem = "記憶體用量 (輸入0 以停用)"
	TukuiL.option_datatext_bags = "背包格數 (輸入0 以停用)"
	TukuiL.option_datatext_fontsize = "文字大小 (輸入0 以停用)"
	TukuiL.option_datatext_fps_ms = "延遲及畫面幀數 (輸入0 以停用)"
	TukuiL.option_datatext_armor = "護甲值 (輸入0 以停用)"
	TukuiL.option_datatext_avd = "閃躲 (輸入0 以停用)"
	TukuiL.option_datatext_power = "攻強/法傷 (輸入0 以停用)"
	TukuiL.option_datatext_haste = "加速 (輸入0 以停用)"
	TukuiL.option_datatext_friend = "好友資訊 (輸入0 以停用)"
	TukuiL.option_datatext_time = "時間 (輸入0 以停用)"
	TukuiL.option_datatext_gold = "金錢 (輸入0 以停用)"
	TukuiL.option_datatext_dps = "每秒傷害 (輸入0 以停用)"
	TukuiL.option_datatext_crit = "致命 (輸入0 以停用)"
	TukuiL.option_datatext_dur = "耐久值 (輸入0 以停用)"
	TukuiL.option_datatext_currency = "兌換通貨 (輸入0 以停用)"
	TukuiL.option_datatext_micromenu = "小型菜單 (輸入0 以停用)"
	TukuiL.option_datatext_hit = "命中 (輸入0 以停用)"
	TukuiL.option_datatext_mastery = "精通 (輸入0 以停用)"
	TukuiL.option_datatext_regen = "Manaregeneration Position"
	TukuiL.option_datatext_calltoarms = "Call to Arms Position"
	TukuiL.option_datatext_profession = "Profession Position"
	TukuiL.option_datatext_block = "Block Position"
	TukuiL.option_datatext_dodge = "Dodge Position"
	TukuiL.option_datatext_parry = "Parry Position"
 
	-- unit frames
	TukuiL.option_unitframes_unitframes = "單位視窗"
	TukuiL.option_unitframes_combatfeedback = "顯示戰鬥資訊於玩家及目標視窗"
	TukuiL.option_unitframes_runebar = "啟用死亡騎士符文列"
	TukuiL.option_unitframes_auratimer = "啟用光環上計時"
	TukuiL.option_unitframes_totembar = "啟用薩滿圖騰列"
	TukuiL.option_unitframes_totalhpmp = "顯示總生命/能量值"
	TukuiL.option_unitframes_playerparty = "隊伍中顯示玩家"
	TukuiL.option_unitframes_aurawatch = "啟用PVE團隊光環監控 (Grid專用)"
	TukuiL.option_unitframes_castbar = "啟用施法條"
	TukuiL.option_unitframes_targetaura = "啟用目標光環"
	TukuiL.option_unitframes_saveperchar = "依角色記錄單位視窗位置"
	TukuiL.option_unitframes_playeraggro = "啟用玩家仇恨顯示"
	TukuiL.option_unitframes_smooth = "啟用smooth bar插件"
	TukuiL.option_unitframes_portrait = "啟用玩家及目標視窗人物畫像"
	TukuiL.option_unitframes_enable = "啟用Tukui單位視窗"
	TukuiL.option_unitframes_enemypower = "只顯示敵對目標能量值"
	TukuiL.option_unitframes_gridonly = "啟用Grid限定治療介面"
	TukuiL.option_unitframes_healcomm = "啟用healcomm插件"
	TukuiL.option_unitframes_focusdebuff = "啟用專注目標負面狀態"
	TukuiL.option_unitframes_raidaggro = "啟用隊伍/團隊仇恨顯示"
	TukuiL.option_unitframes_boss = "啟用首領單位視窗"
	TukuiL.option_unitframes_enemyhostilitycolor = "敵人生命條以敵對狀態上色"
	TukuiL.option_unitframes_hpvertical = "顯示Grid介面縱向生命條"
	TukuiL.option_unitframes_symbol = "顯示隊伍/團隊標記"
	TukuiL.option_unitframes_threatbar = "啟用仇恨條"
	TukuiL.option_unitframes_enablerange = "啟用隊伍/團隊距離淡出"
	TukuiL.option_unitframes_focus = "啟用專注目標的目標"
	TukuiL.option_unitframes_latency = "顯示施法延遲"
	TukuiL.option_unitframes_icon = "顯示施法條法術圖示"
	TukuiL.option_unitframes_playeraura = "啟用玩家其它光環模式"
	TukuiL.option_unitframes_aurascale = "光環文字大小調整"
	TukuiL.option_unitframes_gridscale = "Grid大小調整"
	TukuiL.option_unitframes_manahigh = "法力過高警告(獵人專用)"
	TukuiL.option_unitframes_manalow = "法力過低警告(法系職業專用)"
	TukuiL.option_unitframes_range = "隊伍/團隊單位超出距離透明值"
	TukuiL.option_unitframes_maintank = "啟用主坦克視窗"
	TukuiL.option_unitframes_mainassist = "啟用主助攻視窗"
	TukuiL.option_unitframes_unicolor = "啟用特殊顏色模式(灰色生命條)"
	TukuiL.option_unitframes_totdebuffs = "啟用目標的目標負面狀態(高解析度專用)"
	TukuiL.option_unitframes_classbar = "啟用職業專用列"
	TukuiL.option_unitframes_weakenedsoulbar = "啟用虛弱靈魂指示 (牧師)"
	TukuiL.option_unitframes_onlyselfdebuffs = "只在目標頭像上顯示自己釋放的減益效果"
	TukuiL.option_unitframes_focus = "開啟專注目標的目標"
	TukuiL.option_unitframes_totdebuff = "Set size of Target of Target Debuffs"
 
	-- loot
	TukuiL.option_loot = "戰利品"
	TukuiL.option_loot_enableloot = "啟用戰利品視窗"
	TukuiL.option_loot_autogreed = "啟用自動貪婪物品(只限用於等級80)"
	TukuiL.option_loot_enableroll = "啟用骰裝視窗"
 
	-- map
	TukuiL.option_map = "地圖"
	TukuiL.option_map_enable = "啟用地圖"
 
	-- invite
	TukuiL.option_invite = "邀請"
	TukuiL.option_invite_autoinvite = "啟用自動接受組隊邀請及自動邀請(限用好友及公會成員)"
 
	-- tooltip
	TukuiL.option_tooltip = "提示資訊"
	TukuiL.option_tooltip_enable = "啟用提示資訊"
	TukuiL.option_tooltip_hidecombat = "於戰鬥中隱藏指示資訊"
	TukuiL.option_tooltip_hidebutton = "隱藏動作列按鍵提示資訊"
	TukuiL.option_tooltip_hideuf = "隱藏單位視窗提示資訊"
	TukuiL.option_tooltip_cursor = "啟用滑鼠旁提示訊息"
	TukuiL.option_tooltip_ilvl = "Display average itemlevel on tooltip"
	TukuiL.option_tooltip_showspellid = "Show SpellID on Tooltip"
 
	-- others
	TukuiL.option_others = "其它"
	TukuiL.option_others_bg = "啟用戰場自動釋放靈魂"
 
	-- reminder
	TukuiL.option_reminder = "光環警告"
	TukuiL.option_reminder_enable = "啟用玩家光環警告"
	TukuiL.option_reminder_sound = "啟用光環警告音效"
 
	-- error
	TukuiL.option_error = "錯誤訊息"
	TukuiL.option_error_hide = "隱藏螢幕中間錯誤訊息"
 
	-- action bar
	TukuiL.option_actionbar = "動作列"
	TukuiL.option_actionbar_hidess = "隱藏姿勢列及圖騰列"
	TukuiL.option_actionbar_showgrid = "永遠顯示動作格"
	TukuiL.option_actionbar_enable = "啟用Tukui動作列"
	TukuiL.option_actionbar_rb = "啟用滑鼠移至右側動作列時顯示"
	TukuiL.option_actionbar_hk = "顯示按鍵文字"
	TukuiL.option_actionbar_ssmo = "滑鼠移至姿勢列或圖騰列時顯示"
	TukuiL.option_actionbar_rbn = "底部動作列列數(1 或 2)"
	TukuiL.option_actionbar_rn = "右側動作列列數 (1, 2 或 3)"
	TukuiL.option_actionbar_buttonsize = "主要熱鍵大小"
	TukuiL.option_actionbar_buttonspacing = "主要熱鍵間隔距離"
	TukuiL.option_actionbar_petbuttonsize = "寵物或變形列按鍵大小"
	
	-- quest watch frame
	TukuiL.option_quest = "任務欄"
	TukuiL.option_quest_movable = "可移動任務欄"
 
	-- arena
	TukuiL.option_arena = "競技場"
	TukuiL.option_arena_st = "啟用競技場敵方法術追蹤"
	TukuiL.option_arena_uf = "啟用競技場單位視窗"
	
	-- pvp
	TukuiL.option_pvp = "PvP"
	TukuiL.option_pvp_ii = "啟用打斷圖示"
 
	-- cooldowns
	TukuiL.option_cooldown = "冷卻"
	TukuiL.option_cooldown_enable = "啟用按鍵冷卻倒數"
	TukuiL.option_cooldown_th = "冷卻小於X秒倒數以紅字顯示"
 
	-- chat
	TukuiL.option_chat = "對話框"
	TukuiL.option_chat_enable = "啟用Tukui對話框"
	TukuiL.option_chat_whispersound = "收到悄悄話時以音效提醒"
	TukuiL.option_chat_background = "啟用對話框背景"
		
	-- buff
	TukuiL.option_auras = "顯示光環"
	TukuiL.option_auras_player = "啟用 Tukui Buff/Debuff 框體"
 
	-- buttons
	TukuiL.option_button_reset = "重置"
	TukuiL.option_button_load = "讀取"
	TukuiL.option_button_close = "關閉"
	TukuiL.option_setsavedsetttings = "依角色儲存設定"
	TukuiL.option_resetchar = "你確定要將你的角色設定回復到預設設定嗎?"
	TukuiL.option_resetall = "你確定要將你所有的設定回復到系統預設值嗎?"
	TukuiL.option_perchar = "你確定要啟用或者關閉依角色儲存設定的模式嗎?"
	TukuiL.option_makeselection = "你必需作出選擇才能繼續設定"	
end