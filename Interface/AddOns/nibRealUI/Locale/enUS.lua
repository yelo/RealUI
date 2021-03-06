local _, private = ...

-- Lua Globals --
local _G = _G

-- RealUI --
local RealUI = private.RealUI
local L = {}

RealUI.locale = _G.GAME_LOCALE or _G.GetLocale()

-- General
L["Alert_CombatLockdown"] = "Combat Lockdown"
L["DoReloadUI"] = "You need to Reload the UI for changes to take effect. Reload Now?"
L["Slash_Profile"] = "|cff%sCPU Profiling is enabled!|r To disable, type: |cff%s/cpuProfiling|r"
L["Slash_RealUI"] = "Type %s to configure UI style, positions and settings."
L["Slash_Taint"] = "|cff%sTaint Logging is enabled!|r To disable, type: |cff%s/taintLogging|r"
L["Version"] = "Version"


-- Install
L["Install"] = "CLICK TO INSTALL"
L["Patch_DoApply"] = "A patch has been applied, the UI must be reloaded for the changes to take affect."
L["Patch_MiniPatch"] = "RealUI Mini Patch"


-- Options
L["Appearance_ClassColorHealth"] = "Class Colored Health"
L["Appearance_ClassColorNames"] = "Class Colored Names"
L["Appearance_StripeOpacity"] = "Stripe Opacity"
L["Appearance_WinOpacity"] = "Window Opacity"
L["CombatFade"] = "Combat Fade"
L["CombatFade_HarmTarget"] = "Attackable Target"
L["CombatFade_Hurt"] = "Hurt"
L["CombatFade_InCombat"] = "In Combat"
L["CombatFade_NoCombat"] = "Out of Combat"
L["CombatFade_Target"] = "Target Selected"
L["Fonts"] = "Fonts"
L["Fonts_ChangeYellow"] = "Change Yellow Fonts"
L["Fonts_ChangeYellowDesc"] = "Change the color that is used for the 'yellow' fonts."
L["Fonts_Chat"] = "Chat Font"
L["Fonts_ChatDesc"] = "This font is used for the chat box and occasionally numbers."
L["Fonts_Desc"] = "Adjust the fonts used in RealUI."
L["Fonts_Font"] = "Font"
L["Fonts_Header"] = "Header Font"
L["Fonts_HeaderDesc"] = "This font is used primarily for titles and headers."
L["Fonts_Normal"] = "Normal Font"
L["Fonts_NormalDesc"] = "This font is used for most of the UI such as tooltips, quests, and objectives."
L["Fonts_NormalOffset"] = "Font Size Offset"
L["Fonts_NormalOffsetDesc"] = "Increase/Decrease all Normal font sizes by this value."
L["Fonts_Outline"] = "Font Outline"
L["Fonts_PixelCooldown"] = "Pixel (Cooldown)"
L["Fonts_PixelLarge"] = "Pixel (Large)"
L["Fonts_PixelNumbers"] = "Pixel (Numbers)"
L["Fonts_PixelSmall"] = "Pixel (Small)"
L["Fonts_Standard"] = "Standard Fonts"
L["Fonts_YellowFont"] = "Yellow Font Color"
L["General_Debug"] = "Debug"
L["General_DebugDesc"] = "Provides extra debugging information"
L["General_Enabled"] = "Enabled"
L["General_EnabledDesc"] = "Enable/Disable %s"
L["General_InvalidParent"] = "The parent frame set for %s does not exist. Type /realadv and go to %s -> %s to set a new parent."
L["General_NoteParent"] = "To find the name of a frame, type /fstack and hover over the frame you want to attach to. Use ALT to cycle the green highlight area"
L["General_NoteReload"] = "Note: You will need to reload the UI (/rl) for changes to take effect."
L["General_Tristatefalse"] = "|cffff0000Ignored|r - Single - Multiple"
L["General_Tristatenil"] = "Ignored - Single - |cff00ff00Multiple|r"
L["General_Tristatetrue"] = "Ignored - |cff00ff00Single|r - Multiple"
L["Layout_ApplyOOC"] = "Layout will change after you leave combat."
L["Layout_DPSTank"] = "DPS/Tank"
L["Layout_Healing"] = "Healing"
L["Layout_Link"] = "Link Layouts"
L["Layout_LinkDesc"] = "Use same settings between DPS/Tank and Healing layouts."
L["Power_Eco"] = "Economy"
L["Power_EcoDesc"] = [=[This mode will schedule graphical updates at a slower than normal rate.
May help increase performance on low-end PCs.]=]
L["Power_Normal"] = "Normal"
L["Power_NormalDesc"] = "This mode will schedule graphical updates at a normal rate."
L["Power_PowerMode"] = "Power Mode"
L["Power_Turbo"] = "Turbo"
L["Power_TurboDesc"] = [=[This mode will schedule graphical updates at a fast rate, making animations across the UI smoother.
This will increase CPU usage.]=]
L["Reset_Confirm"] = "Are you sure you wish to reset RealUI?"
L["Reset_SettingsLost"] = "All user settings will be lost."
L["Tweaks_CooldownCount"] = "Cooldown Count"
L["Tweaks_CooldownCountDesc"] = "Modifies the countdown text on cooldown swipes"
L["Tweaks_UITweaks"] = "UI Tweaks"
L["Tweaks_UITweaksDesc"] = "Minor functional tweaks for the default UI"


-- Config
L["ActionBars_ActionBarsDesc"] = "Modify the position and size of the Action Bars."
L["ActionBars_Center"] = "Center"
L["ActionBars_CenterDesc"] = "Adjust the location of the three center action bars."
L["ActionBars_CenterOption"] = "%d Center - %d Bottom"
L["ActionBars_EAB"] = "Extra Action Button"
L["ActionBars_Move"] = "Move %s"
L["ActionBars_MoveDesc"] = "Check to allow RealUI to control the position of the %s."
L["ActionBars_Pet"] = "Pet Bar"
L["ActionBars_ShowDoodads"] = "Show Doodads"
L["ActionBars_ShowDoodadsDesc"] = "Display doodads to indicate the position of the pet and stance bars."
L["ActionBars_Sides"] = "Sides"
L["ActionBars_SidesDesc"] = "Adjust the location of the two side action bars."
L["ActionBars_SidesOption"] = "%d Left - %d Right"
L["ActionBars_Stance"] = "Stance Bar"
L["Alert_CantOpenInCombat"] = "Cannot open RealUI Configuration while in combat."
L["Alert_UseClickToSetFocus"] = "Use %s+click to set Focus."
L["AuraTrack"] = "Aura Tracker"
L["AuraTrack_ActiveTrackers"] = "Active Trackers"
L["AuraTrack_Buff"] = "Buff"
L["AuraTrack_Create"] = "Create New Tracker"
L["AuraTrack_Debuff"] = "Debuff"
L["AuraTrack_HideStack"] = "Hide Stack Count"
L["AuraTrack_HideStackDesc"] = "Don't show stack counts on this tracker."
L["AuraTrack_IgnoreSpec"] = "Ignore Spec"
L["AuraTrack_IgnoreSpecDesc"] = "Show tracker regardless of current specialization"
L["AuraTrack_InactiveOpacity"] = "Inactive tracker opacity"
L["AuraTrack_InactiveTrackers"] = "Inactive Trackers"
L["AuraTrack_InvalidName"] = "Invalid Spell name or ID: %s"
L["AuraTrack_MinLevel"] = "Minimum Level"
L["AuraTrack_MinLevelDesc"] = "Set 0 to ignore this setting."
L["AuraTrack_NoExclude"] = "No Exclude"
L["AuraTrack_NoExcludeDesc"] = "Don't add this tracker to Raven's exclusion list."
L["AuraTrack_NoteSpellID"] = [=[Note: Spell Name or ID must match the spell you wish to track exactly.
Capitalization and spaces matter.
To track multiple spells, use Spell IDs and separate via commas (i.e 1122,2233,3344).]=]
L["AuraTrack_Padding"] = "Indicator padding"
L["AuraTrack_Remove"] = "Remove Tracker"
L["AuraTrack_RemoveConfirm"] = "Are you sure you want to remove this tracker?"
L["AuraTrack_ResetConfirm"] = "Are you sure you want to reset all %s trackers to defaults? This will also remove any custom trackers."
L["AuraTrack_ResetTrackers"] = "Reset Trackers"
L["AuraTrack_ResetTrackersDesc"] = "Reset all %s trackers to defaults."
L["AuraTrack_Selected"] = "Selected Tracker"
L["AuraTrack_ShowHostile"] = "Show with hostile target"
L["AuraTrack_ShowHostileDesc"] = "Show Indicators when you have an attackable target"
L["AuraTrack_ShowInCombat"] = "Show in combat"
L["AuraTrack_ShowInCombatDesc"] = "Show Indicators when you are in combat"
L["AuraTrack_ShowInPvE"] = "Show in PvE"
L["AuraTrack_ShowInPvEDesc"] = "Show Indicators when you are in a PvE instance"
L["AuraTrack_ShowInPvP"] = "Show in PvP"
L["AuraTrack_ShowInPvPDesc"] = "Show Indicators when you are in a PvP instance"
L["AuraTrack_Size"] = "Indicator size"
L["AuraTrack_SpellNameID"] = "Spell Name or ID"
L["AuraTrack_Static"] = "Static"
L["AuraTrack_StaticDesc"] = "When set to greater than 0, the tracker will always be in the same location."
L["AuraTrack_TrackerOptions"] = "Tracker Options"
L["AuraTrack_TristateSpecfalse"] = "Show tracker regardless of current specialization."
L["AuraTrack_TristateSpecnil"] = "Show this tracker for multiple specs."
L["AuraTrack_TristateSpectrue"] = "Only show this tracker for one specific spec."
L["AuraTrack_Type"] = "Tracker Type"
L["AuraTrack_TypeDesc"] = "Buffs cast on your self, or Debuffs cast on your Target."
L["AuraTrack_Unit"] = "Unit"
L["AuraTrack_Visibility"] = "Visibility"
L["CastBars"] = "Cast Bars"
L["CastBars_Bottom"] = "Bottom"
L["CastBars_BottomDesc"] = "Name and duration are displayed below the cast bars."
L["CastBars_Inside"] = "Inside"
L["CastBars_InsideDesc"] = "Name and duration are displayed on the left for the player and on the right for the target."
L["Control_AddonControl"] = "AddOn Control"
L["Control_Layout"] = "Control Layout"
L["Control_LayoutDesc"] = "Allow RealUI to control %s's layout settings."
L["Control_Position"] = "Control Position"
L["Control_PositionDesc"] = "Allow RealUI to control %s's position."
L["General_Lock"] = "Locked"
L["General_LockDesc"] = "Toggle to move or lock frame position."
L["General_Position"] = "Position"
L["General_Positions"] = "Positions"
L["General_XOffset"] = "X Offset"
L["General_XOffsetDesc"] = "Offset in X direction (horizontal) from the given anchor point."
L["General_YOffset"] = "Y Offset"
L["General_YOffsetDesc"] = "Offset in Y direction (vertical) from the given anchor point."
L["HuD_AlertHuDChangeSize"] = "Changing the HuD size may alter the positions of some elements, therefore it is recommended to check UI Element positions once the changes have taken effect."
L["HuD_Height"] = "Height"
L["HuD_Horizontal"] = "Horizontal"
L["HuD_ReverseBars"] = "Reverse Bar Direction"
L["HuD_ShowElements"] = "Show UI Elements"
L["HuD_Uninterruptible"] = "Uninterruptible"
L["HuD_UseLarge"] = "Use Large HuD"
L["HuD_UseLargeDesc"] = "Increases size of key HuD elements (Unit Frames, etc)."
L["HuD_Vertical"] = "Vertical"
L["HuD_VerticalDesc"] = "Adjust the vertical position of the entire HuD."
L["HuD_Width"] = "Width"
L["Misc_SpellAlertsDesc"] = "Modify the position and size of the Spell Alerts."
L["Misc_SpellAlertsWidthDesc"] = "Adjust the distance between the left and right Spell Alert Overlays."
L["Raid_30Width"] = "30 Player Width"
L["Raid_40Width"] = "40 Player Width"
L["Raid_HideRaidFilter"] = "Hide raid filters"
L["Raid_HideRaidFilterDesc"] = "Hide the group filters for Blizzard's Raid Frame Manager"
L["Raid_LargeGroup"] = "Large groups"
L["Raid_LargeGroupDesc"] = "Use horizontal groups while in large groups like raids or battlegrounds"
L["Raid_ShowSolo"] = "Show While Solo"
L["Raid_SmallGroup"] = "Small groups"
L["Raid_SmallGroupDesc"] = "Use horizontal groups while in small groups like dungeons or arenas"
L["Resource"] = "Class Resource"
L["Resource_BloodShield"] = "Blood Shield with Resolve"
L["Resource_DemonicFury"] = "Demonic Fury"
L["Resource_Eclipse"] = "Eclipse"
L["Resource_Gap"] = "Gap"
L["Resource_GapDesc"] = "The distance between each %s."
L["Resource_HeightDesc"] = "Adjust the height of the resource anchor."
L["Resource_HideUnused"] = "Hide unused %s"
L["Resource_HideUnusedDesc"] = "Only show the %s you have."
L["Resource_Resolve"] = "Resolve"
L["Resource_Reverse"] = "Reverse orientation"
L["Resource_ReverseDesc"] = "Reverse the orientation of the %s display."
L["Resource_Stagger"] = "Stagger with Resolve"
L["Resource_WidthDesc"] = "Adjust the width of the resource anchor."
L["UnitFrames_AnchorWidth"] = "Anchor Width"
L["UnitFrames_AnchorWidthDesc"] = "The amount of space between the Player frame and the Target frame."
L["UnitFrames_AnnounceChatDesc"] = "Chat channel used for trinket announcement."
L["UnitFrames_AnnounceTrink"] = "Announce trinkets"
L["UnitFrames_AnnounceTrinkDesc"] = "Announce opponent trinket use to chat."
L["UnitFrames_BuffCount"] = "Buff Count"
L["UnitFrames_DebuffCount"] = "Debuff Count"
L["UnitFrames_Gap"] = "Gap"
L["UnitFrames_GapDesc"] = "Vertical distance between each unit."
L["UnitFrames_ModifierKey"] = "Modifier Key"
L["UnitFrames_NPCAuras"] = "Show NPC Auras"
L["UnitFrames_NPCAurasDesc"] = "Show Buffs/Debuffs cast by NPCs."
L["UnitFrames_PlayerAuras"] = "Show Player Auras"
L["UnitFrames_PlayerAurasDesc"] = "Show Buffs/Debuffs cast by you."
L["UnitFrames_SetFocus"] = "Click to set Focus"
L["UnitFrames_SetFocusDesc"] = "Set focus by click+modifier on a Unit Frame."
L["UnitFrames_Units"] = "Units"


-- InfoLine
L["Clock_CalenderInvites"] = "Pending Invites:"
L["Clock_Date"] = "Date"
L["Clock_NoTBTime"] = "No Tol Barad Time Available"
L["Clock_NoWGTime"] = "No Wintergrasp Time Available"
L["Clock_ShowCalendar"] = "<Click> to show calendar."
L["Clock_ShowTimer"] = "<Shift+Click> to show timer."
L["Clock_TBTime"] = "Tol Barad Time Left:"
L["Clock_WGTime"] = "Wintergrasp Time Left"
L["Currency_Cycle"] = "<Click> to cycle the currency displayed."
L["Currency_EraseData"] = "<Alt+Click> to erase highlighted character data."
L["Currency_NoteWeeklyReset"] = [=[Note: Weekly caps will reset upon loading currency data
        on a character whose weekly caps have reset.]=]
L["Currency_ResetCaps"] = "<Shift+Click> to reset weekly caps."
L["Currency_TrackMore"] = "To track additional currencies, use the Currency tab in the Player Frame and set desired Currency to 'Show On Backpack'"
L["Currency_UpdatedAbbr"] = "Upd."
L["Friend_WhisperInvite"] = "<Click> to whisper, <Alt+Click> to invite."
L["Guild_WhisperInvite"] = "<Click> to whisper, <Alt+Click> to invite."
L["InfoLine"] = "Info Line"
L["InfoLine_ShowBG"] = "Show Background"
L["Layout_Change"] = "<Click> to change layouts."
L["Layout_Current"] = "Current Layout:"
L["Layout_LayoutChanger"] = "Layout Changer"
L["Meters_Active"] = "Active Meters:"
L["Meters_Header"] = "Meter Toggle"
L["Meters_Toggle"] = "<Click> to toggle meters."
L["Progress"] = "Progress Watch"
L["Progress_Cycle"] = "<Alt+Click> to cycle display"
L["Progress_OpenArt"] = "<Click> to view Artifact"
L["Progress_OpenHonor"] = "<Click> to view Honor"
L["Progress_OpenRep"] = "<Click> to view Reputaion"
L["Spec_ChangeSpec"] = "<Click> to change specs"
L["Spec_EquipCycle"] = "<Alt+Click> to cycle equip sets"
L["Spec_EquipUnassign"] = "<Shift+Click> to unassign equip set"
L["Spec_SpecChanger"] = "Spec Changer"
L["Start"] = "Start"
L["Start_Config"] = "RealUI Config"
L["Sys_AverageAbbr"] = "Avg"
L["Sys_CurrentAbbr"] = "Cur"
L["Sys_FPS"] = "FPS"
L["Sys_In"] = "In"
L["Sys_kbps"] = "kbps"
L["Sys_Max"] = "Max"
L["Sys_Min"] = "Min"
L["Sys_ms"] = "ms"
L["Sys_Out"] = "Out"
L["Sys_Stat"] = "Stat"
L["Sys_SysInfo"] = "System Info"

RealUI.L = L
