module("AV8BNA", package.seeall)

local Module = require("Module")

--- @class AV8BNA: Module
local AV8BNA = Module:new("AV8BNA", 0x7800, { "AV8BNA" })

--by WarLord,Matchstick v2.3c

-- Used because this is used a lot, no need for everyone to keep calling the original function
local parse_indication_5

AV8BNA:addExportHook(function()
	parse_indication_5 = Module.parse_indication(5)
end)

----MAIN INSTRUMENT PANEL:
--Master Modes Panel (MSC)
AV8BNA:definePushButton("NAV_SEL", 12, 3282, 282, "Master Modes", "NAV Master Mode Selector")
AV8BNA:definePushButton("VSTOL_SEL", 12, 3284, 284, "Master Modes", "VSTOL Master Mode Selector")
AV8BNA:definePushButton("AG_SEL", 12, 3280, 280, "Master Modes", "AG Master Mode Selector")
--Engine Display Panel
AV8BNA:definePotentiometer("EDP_BRIGHT", 20, 3272, 272, { 0, 1 }, "Engine Display", "EDP Brightness Control")
AV8BNA:defineToggleSwitch("EDP_BIT", 20, 3655, 655, "Engine Display", "EDP BIT Button")
--HUD Control Panel
AV8BNA:defineMultipositionSwitch("HUD_SYMBOL", 22, 3288, 288, 3, 0.5, "HUD Control", "HUD Symbology Reject Switch NORM/REJ1/REJ2")
AV8BNA:definePotentiometer("HUD_BRIGHT", 22, 3289, 289, { 0, 1 }, "HUD Control", "HUD Off/Brightness Control")
AV8BNA:defineMultipositionSwitch("HUD_MODE", 22, 3290, 290, 3, 0.5, "HUD Control", "HUD Display Mode Switch DAY/AUTO/NIGHT")
AV8BNA:definePotentiometer("HUD_VIDEO_BRIGHT", 22, 3291, 291, { 0, 1 }, "HUD Control", "HUD Video Brightness Control")
AV8BNA:definePotentiometer("HUD_VIDEO_CONTR", 22, 3292, 292, { 0, 1 }, "HUD Control", "HUD Video Contrast Control")
AV8BNA:defineToggleSwitch("HUD_ALT", 22, 3293, 293, "HUD Control", "HUD Altitude Selector Switch")
--UFC Panel
AV8BNA:definePushButton("UFC_B1", 23, 3302, 302, "UFC", "UFC Button 1")
AV8BNA:definePushButton("UFC_B2", 23, 3303, 303, "UFC", "UFC Button 2/N")
AV8BNA:definePushButton("UFC_B3", 23, 3304, 304, "UFC", "UFC Button 3")
AV8BNA:definePushButton("UFC_B4", 23, 3306, 306, "UFC", "UFC Button 4/W")
AV8BNA:definePushButton("UFC_B5", 23, 3307, 307, "UFC", "UFC Button 5")
AV8BNA:definePushButton("UFC_B6", 23, 3308, 308, "UFC", "UFC Button 6/E")
AV8BNA:definePushButton("UFC_B7", 23, 3310, 310, "UFC", "UFC Button 7")
AV8BNA:definePushButton("UFC_B8", 23, 3311, 311, "UFC", "UFC Button 8/S")
AV8BNA:definePushButton("UFC_B9", 23, 3312, 312, "UFC", "UFC Button 9")
AV8BNA:definePushButton("UFC_B0", 23, 3315, 315, "UFC", "UFC Button 0")
AV8BNA:definePushButton("UFC_DOT", 23, 3316, 316, "UFC", "UFC Button .")
AV8BNA:definePushButton("UFC_DASH", 23, 3313, 313, "UFC", "UFC Button -")
AV8BNA:definePushButton("UFC_ENTER", 23, 3314, 314, "UFC", "UFC ENTER Data Button")
AV8BNA:definePushButton("UFC_CLEAR", 23, 3305, 305, "UFC", "Clear Entry Button")
AV8BNA:definePushButton("UFC_TIMER", 23, 3294, 294, "UFC", "UFC Timer Function Selector")
AV8BNA:definePushButton("UFC_ALT", 23, 3324, 324, "UFC", "UFC Altitude Function Selector")
AV8BNA:definePushButton("UFC_IFF", 23, 3318, 318, "UFC", "UFC IFF Function Selector")
AV8BNA:definePushButton("UFC_TACAN", 23, 3319, 319, "UFC", "UFC TACAN Function Selector")
AV8BNA:definePushButton("UFC_WEATHER", 23, 3320, 320, "UFC", "UFC All Weather Landing Function Selector")
AV8BNA:definePushButton("UFC_ONOFF", 23, 3317, 317, "UFC", "UFC Radalt/TACAN/AWL/IFF ON/OFF Toggle")
AV8BNA:definePushButton("UFC_EMCOM", 23, 3325, 325, "UFC", "UFC EMCON ON/OFF Toggle")
AV8BNA:definePushButton("UFC_TARGET", 23, 3296, 296, "UFC", "UFC Target-Of-Opportunity Selector")
AV8BNA:definePushButton("UFC_WAY", 23, 3322, 322, "UFC", "UFC Waypoint Overfly INS Update Selector")
AV8BNA:definePushButton("UFC_WEAPON", 23, 3321, 321, "UFC", "UFC Weapons Function Selector")
AV8BNA:definePushButton("UFC_BEACON", 23, 3323, 323, "UFC", "UFC Radar Beacon Function Selector")
AV8BNA:definePushButton("UFC_IP", 23, 3297, 297, "UFC", "UFC I/P Button")
AV8BNA:definePushButton("UFC_SAVE", 23, 3309, 309, "UFC", "UFC Save Data Button")
AV8BNA:definePotentiometer("UFC_BRIGHT", 23, 3295, 295, { 0, 1 }, "UHF Radio", "UFC Display Brightness Control")
AV8BNA:definePotentiometer("UFC_COM1_VOL", 23, 3298, 298, { 0, 1 }, "UHF Radio", "UFC Comm 1 Volume Control")
AV8BNA:definePotentiometer("UFC_COM2_VOL", 23, 3299, 299, { 0, 1 }, "UHF Radio", "UFC Comm 2 Volume Control")
AV8BNA:definePushButton("UFC_COM1_PULL", 23, 3178, 178, "UHF Radio", "UFC Comm 1 Channel Selector Pull")
AV8BNA:definePushButton("UFC_COM2_PULL", 23, 3179, 179, "UHF Radio", "UFC Comm 2 Channel Selector Pull")
AV8BNA:defineRotary("UFC_COM1_SEL", 23, 3300, 300, "UHF Radio", "UFC Comm 1 Channel Selector Turn")
AV8BNA:defineRotary("UFC_COM2_SEL", 23, 3301, 301, "UHF Radio", "UFC Comm 2 Channel Selector Turn")

local function getARC210_COMM1_String_Frequency()
	local arc_210_comm1 = GetDevice(2)
	local freq = tostring(arc_210_comm1:get_frequency())
	if string.len(freq) == 8 then
		return freq:sub(1, 2) .. "." .. freq:sub(3, 5)
	else
		return freq:sub(1, 3) .. "." .. freq:sub(4, 6)
	end
end
AV8BNA:defineString("COMM1_STRING_FREQ", getARC210_COMM1_String_Frequency, 7, "UFC Display", "COMM1 ARC-210 Frequency (string)")

local function getARC210_COMM2_String_Frequency()
	local arc_210_comm2 = GetDevice(3)
	local freq = tostring(arc_210_comm2:get_frequency())
	if string.len(freq) == 8 then
		return freq:sub(1, 2) .. "." .. freq:sub(3, 5)
	else
		return freq:sub(1, 3) .. "." .. freq:sub(4, 6)
	end
end
AV8BNA:defineString("COMM2_STRING_FREQ", getARC210_COMM2_String_Frequency, 7, "UFC Display", "COMM2 ARC-210 Frequency (string)")

--ODU Panel
AV8BNA:definePushButton("ODU_OPT1", 24, 3250, 250, "ODU", "ODU Option 1")
AV8BNA:definePushButton("ODU_OPT2", 24, 3251, 251, "ODU", "ODU Option 2")
AV8BNA:definePushButton("ODU_OPT3", 24, 3252, 252, "ODU", "ODU Option 3")
AV8BNA:definePushButton("ODU_OPT4", 24, 3248, 248, "ODU", "ODU Option 4")
AV8BNA:definePushButton("ODU_OPT5", 24, 3249, 249, "ODU", "ODU Option 5")
--Master Caution/Warning Panel
AV8BNA:definePushButton("M_CAUTION", 35, 3198, 198, "Master Warning Panel", "Master Caution")
AV8BNA:definePushButton("M_WARNING", 35, 3199, 199, "Master Warning Panel", "Master Warning")
--Fuel Quantity Indicator
AV8BNA:defineMultipositionSwitch("FUEL_SEL", 21, 3379, 379, 7, 0.33, "Fuel Panel", "Fuel Totalizer Selector OUTBD/INBD/WING/INT/TOT/FEED/BIT")
AV8BNA:defineRotary("BINGO_SET", 21, 3380, 380, "Fuel Panel", "Bingo Fuel Set Knob")
--MPCD left
AV8BNA:definePushButton("MPCD_L_1", 26, 3200, 200, "MPCD Left", "MPCD Left Button 1")
AV8BNA:definePushButton("MPCD_L_2", 26, 3201, 201, "MPCD Left", "MPCD Left Button 2")
AV8BNA:definePushButton("MPCD_L_3", 26, 3202, 202, "MPCD Left", "MPCD Left Button 3")
AV8BNA:definePushButton("MPCD_L_4", 26, 3203, 203, "MPCD Left", "MPCD Left Button 4")
AV8BNA:definePushButton("MPCD_L_5", 26, 3204, 204, "MPCD Left", "MPCD Left Button 5")
AV8BNA:definePushButton("MPCD_L_6", 26, 3205, 205, "MPCD Left", "MPCD Left Button 6")
AV8BNA:definePushButton("MPCD_L_7", 26, 3206, 206, "MPCD Left", "MPCD Left Button 7")
AV8BNA:definePushButton("MPCD_L_8", 26, 3207, 207, "MPCD Left", "MPCD Left Button 8")
AV8BNA:definePushButton("MPCD_L_9", 26, 3208, 208, "MPCD Left", "MPCD Left Button 9")
AV8BNA:definePushButton("MPCD_L_10", 26, 3209, 209, "MPCD Left", "MPCD Left Button 10")
AV8BNA:definePushButton("MPCD_L_11", 26, 3210, 210, "MPCD Left", "MPCD Left Button 11")
AV8BNA:definePushButton("MPCD_L_12", 26, 3211, 211, "MPCD Left", "MPCD Left Button 12")
AV8BNA:definePushButton("MPCD_L_13", 26, 3212, 212, "MPCD Left", "MPCD Left Button 13")
AV8BNA:definePushButton("MPCD_L_14", 26, 3213, 213, "MPCD Left", "MPCD Left Button 14")
AV8BNA:definePushButton("MPCD_L_15", 26, 3214, 214, "MPCD Left", "MPCD Left Button 15")
AV8BNA:definePushButton("MPCD_L_16", 26, 3215, 215, "MPCD Left", "MPCD Left Button 16")
AV8BNA:definePushButton("MPCD_L_17", 26, 3216, 216, "MPCD Left", "MPCD Left Button 17")
AV8BNA:definePushButton("MPCD_L_18", 26, 3217, 217, "MPCD Left", "MPCD Left Button 18")
AV8BNA:definePushButton("MPCD_L_19", 26, 3218, 218, "MPCD Left", "MPCD Left Button 19")
AV8BNA:definePushButton("MPCD_L_20", 26, 3219, 219, "MPCD Left", "MPCD Left Button 20")
AV8BNA:defineRockerSwitch("MPCD_L_DAY_NIGHT", 26, 3007, 3007, 3008, 3008, 220, "MPCD Left", "MPCD Left Display DAY/NIGHT Mode")
AV8BNA:defineRockerSwitch("MPCD_L_SYMBOL", 26, 3001, 3001, 3002, 3002, 221, "MPCD Left", "MPCD Left Display Symbology")
AV8BNA:defineRockerSwitch("MPCD_L_GAIN", 26, 3003, 3003, 3004, 3004, 222, "MPCD Left", "MPCD Left Display Gain")
AV8BNA:defineRockerSwitch("MPCD_L_CONTRAST", 26, 3005, 3005, 3006, 3006, 223, "MPCD Left", "MPCD Left Display Contrast")
AV8BNA:definePotentiometer("MPCD_L_BRIGHT", 26, 3194, 194, { 0, 1 }, "MPCD Left", "MPCD Left Off/Brightness Control")
--MPCD Right
AV8BNA:definePushButton("MPCD_R_1", 27, 3224, 224, "MPCD Right", "MPCD Right Button 1")
AV8BNA:definePushButton("MPCD_R_2", 27, 3225, 225, "MPCD Right", "MPCD Right Button 2")
AV8BNA:definePushButton("MPCD_R_3", 27, 3226, 226, "MPCD Right", "MPCD Right Button 3")
AV8BNA:definePushButton("MPCD_R_4", 27, 3227, 227, "MPCD Right", "MPCD Right Button 4")
AV8BNA:definePushButton("MPCD_R_5", 27, 3228, 228, "MPCD Right", "MPCD Right Button 5")
AV8BNA:definePushButton("MPCD_R_6", 27, 3229, 229, "MPCD Right", "MPCD Right Button 6")
AV8BNA:definePushButton("MPCD_R_7", 27, 3230, 230, "MPCD Right", "MPCD Right Button 7")
AV8BNA:definePushButton("MPCD_R_8", 27, 3231, 231, "MPCD Right", "MPCD Right Button 8")
AV8BNA:definePushButton("MPCD_R_9", 27, 3232, 232, "MPCD Right", "MPCD Right Button 9")
AV8BNA:definePushButton("MPCD_R_10", 27, 3233, 233, "MPCD Right", "MPCD Right Button 10")
AV8BNA:definePushButton("MPCD_R_11", 27, 3234, 234, "MPCD Right", "MPCD Right Button 11")
AV8BNA:definePushButton("MPCD_R_12", 27, 3235, 235, "MPCD Right", "MPCD Right Button 12")
AV8BNA:definePushButton("MPCD_R_13", 27, 3236, 236, "MPCD Right", "MPCD Right Button 13")
AV8BNA:definePushButton("MPCD_R_14", 27, 3237, 237, "MPCD Right", "MPCD Right Button 14")
AV8BNA:definePushButton("MPCD_R_15", 27, 3238, 238, "MPCD Right", "MPCD Right Button 15")
AV8BNA:definePushButton("MPCD_R_16", 27, 3239, 239, "MPCD Right", "MPCD Right Button 16")
AV8BNA:definePushButton("MPCD_R_17", 27, 3240, 240, "MPCD Right", "MPCD Right Button 17")
AV8BNA:definePushButton("MPCD_R_18", 27, 3241, 241, "MPCD Right", "MPCD Right Button 18")
AV8BNA:definePushButton("MPCD_R_19", 27, 3242, 242, "MPCD Right", "MPCD Right Button 19")
AV8BNA:definePushButton("MPCD_R_20", 27, 3243, 243, "MPCD Right", "MPCD Right Button 20")
AV8BNA:defineRockerSwitch("MPCD_R_DAY_NIGHT", 27, 3017, 3017, 3018, 3018, 244, "MPCD Right", "MPCD Right Display DAY/NIGHT Mode")
AV8BNA:defineRockerSwitch("MPCD_R_SYMBOL", 27, 3011, 3011, 3012, 3012, 245, "MPCD Right", "MPCD Right Display Symbology")
AV8BNA:defineRockerSwitch("MPCD_R_GAIN", 27, 3013, 3013, 3014, 3014, 246, "MPCD Right", "MPCD Right Display Gain")
AV8BNA:defineRockerSwitch("MPCD_R_CONTRAST", 27, 3015, 3015, 3016, 3016, 247, "MPCD Right", "MPCD Right Display Contrast")
AV8BNA:definePotentiometer("MPCD_R_BRIGHT", 27, 3195, 195, { 0, 1 }, "MPCD Right", "MPCD Right Off/Brightness Control")
--Armament Control Panel ACP
AV8BNA:defineMultipositionSwitch("RELEASE_CONTROL", 29, 3395, 395, 4, 0.33, "ACP", "Manual Release Control Knob NORM/N+T/N/T")
AV8BNA:define3PosTumb("ARM_CONTROL", 29, 3396, 396, "ACP", "Armament Mode Control")
AV8BNA:define3PosTumb("FUZE_CONTROL", 29, 3397, 397, "ACP", "Fuzing Control")
AV8BNA:define3PosTumb("QUANT_SEL_10", 29, 3398, 398, "ACP", "Quantity Selector (Tens)")
AV8BNA:define3PosTumb("QUANT_SEL_01", 29, 3399, 399, "ACP", "Quantity Selector (Units)")
AV8BNA:define3PosTumb("MULTI_RELEASE_CONTROL", 29, 3400, 400, "ACP", "Multiple Release Control")
AV8BNA:define3PosTumb("RELEASE_INT_100", 29, 3401, 401, "ACP", "Release Interval Control (Hundreds)")
AV8BNA:define3PosTumb("RELEASE_INT_010", 29, 3402, 402, "ACP", "Release Interval Control (Tens)")
AV8BNA:define3PosTumb("RELEASE_INT_001", 29, 3403, 403, "ACP", "Release Interval Control (Units)")
AV8BNA:defineTumb("JETT_MODE", 29, 3404, 404, 0.5, { -1, 1 }, nil, false, "ACP", "Jettison Mode Selector STA/STOR/SAFE/CMBT/Fuel")
AV8BNA:definePushButton("JETT_STORES", 29, 3405, 405, "ACP", "Jettison Stores")
AV8BNA:definePushButton("JETT_STATION_1", 29, 3407, 407, "ACP", "Select Station 1 Toggle")
AV8BNA:definePushButton("JETT_STATION_2", 29, 3409, 409, "ACP", "Select Station 2 Toggle")
AV8BNA:definePushButton("JETT_STATION_3", 29, 3411, 411, "ACP", "Select Station 3 Toggle")
AV8BNA:definePushButton("JETT_STATION_4", 29, 3413, 413, "ACP", "Select Station 4 Toggle")
AV8BNA:definePushButton("JETT_STATION_5", 29, 3415, 415, "ACP", "Select Station 5 Toggle")
AV8BNA:definePushButton("JETT_STATION_6", 29, 3417, 417, "ACP", "Select Station 6 Toggle")
AV8BNA:definePushButton("JETT_STATION_7", 29, 3419, 419, "ACP", "Select Station 7 Toggle")
AV8BNA:defineToggleSwitch("GND_IR_COOL", 29, 3420, 420, "ACP", "Ground IR Cool Switch")
AV8BNA:defineIndicatorLight("JETT_STATION_1_LIGHT", 406, "ACP Lights", "Select Station 1 LIGHT")
AV8BNA:defineIndicatorLight("JETT_STATION_2_LIGHT", 408, "ACP Lights", "Select Station 2 LIGHT")
AV8BNA:defineIndicatorLight("JETT_STATION_3_LIGHT", 410, "ACP Lights", "Select Station 3 LIGHT")
AV8BNA:defineIndicatorLight("JETT_STATION_4_LIGHT", 412, "ACP Lights", "Select Station 4 LIGHT")
AV8BNA:defineIndicatorLight("JETT_STATION_5_LIGHT", 414, "ACP Lights", "Select Station 5 LIGHT")
AV8BNA:defineIndicatorLight("JETT_STATION_6_LIGHT", 416, "ACP Lights", "Select Station 6 LIGHT")
AV8BNA:defineIndicatorLight("JETT_STATION_7_LIGHT", 418, "ACP Lights", "Select Station 7 LIGHT")
--Master Armament Panel
AV8BNA:definePushButton("LAUNCH_FLARE_SALVO", 30, 3286, 286, "Master Armament Panel", "Launch Flare Salvo")
AV8BNA:defineToggleSwitch("MASTER_ARM", 29, 3287, 287, "Master Armament Panel", "Master Arm Switch")
--ECM Control Panel
AV8BNA:definePotentiometer("RWR_VOL", 18, 3273, 273, { 0, 1 }, "ECM", "RWR Power/Volume Button")
AV8BNA:defineMultipositionSwitch("DECOY_CONTROL", 30, 3274, 274, 5, 0.25, "ECM", "Decoy Dispenser Control OFF/AUT/UP/DWN/RWR")
AV8BNA:defineMultipositionSwitch("JAMMER_CONTROL", 30, 3275, 275, 5, 0.25, "ECM", "Jammer Control OFF/STBY/BIT/RCV/RPT")
--Landing Gear/Flaps Control Panel
AV8BNA:defineToggleSwitch("LG_EMERG_LEVER", 28, 3447, 447, "Gear/Flaps Control Panel", "Emergency Landing Gear Lever")
AV8BNA:definePushButton("LG_DOWN_LOCK", 28, 3448, 448, "Gear/Flaps Control Panel", "Gear Down Lock Override Button")
AV8BNA:defineMultipositionSwitch("FLAP_MODE", 13, 3454, 454, 3, 0.5, "Gear/Flaps Control Panel", "Flaps Mode Switch CRUISE/AUTO/STOL")
AV8BNA:defineMultipositionSwitch("FLAP_POWER", 13, 3457, 457, 3, 0.5, "Gear/Flaps Control Panel", "Flaps Power Switch RESET/ON/OFF")
AV8BNA:definePushButton("EMERG_JETT", 29, 3458, 458, "Gear/Flaps Control Panel", "Emergency Jettison Button")
AV8BNA:defineMultipositionSwitch("ANTI_SKID", 28, 3459, 459, 3, 0.5, "Gear/Flaps Control Panel", "Anti-Skid Switch TEST/ON/NWS")
AV8BNA:definePushButton("FLAPS_BIT", 13, 3460, 460, "Gear/Flaps Control Panel", "Flaps BIT Button")
AV8BNA:defineToggleSwitch("LG_LEVER", 28, 3461, 461, "Gear/Flaps Control Panel", "Gear Lever")
AV8BNA:defineToggleSwitch("LG_EMERGBATT_LEVER", 28, 3470, 470, "Gear/Flaps Control Panel", "Landing Gear Emergency Battery Lever")
--Combat/Water Panel
AV8BNA:definePushButton("CMBT", 9, 3450, 450, "H2O", "CMBT Thrust Button")
AV8BNA:defineMultipositionSwitch("H2O_MODE", 9, 3449, 449, 3, 0.5, "H2O", "H2O Mode Switch  LDG/OFF/TO")
--Bulkhead Switches
AV8BNA:defineToggleSwitch("MFS_EMERG_LEVER", 28, 3501, 501, "Bulkhead", "MFS Emergency Lever")
AV8BNA:definePushButton("STOPWATCH_START", 12, 3051, 1121, "Bulkhead", "Stopwatch Start/Stop")
AV8BNA:definePushButton("STOPWATCH_LAP", 12, 3052, 1122, "Bulkhead", "Stopwatch Lap/Reset")
--Seat
AV8BNA:defineToggleSwitch("SEAT_SAFE_LEVER", 12, 3800, 800, "Seat", "Seat Ground Safety Lever")

----CENTER CONSOLE:
--Flights Instruments Panel
AV8BNA:define3PosTumb("NAV_CRS", 11, 3364, 364, "Flight Instruments", "NAV Course Setting")
AV8BNA:defineRotary("BARO_PRESSURE", 10, 3653, 653, "Flight Instruments", "Barometric Pressure Calibration")
AV8BNA:definePotentiometer("BAK_ADI_CAGE_KNOB", 19, 3351, 351, { 0, 1 }, "Flight Instruments", "Backup ADI Cage/Pitch Adjust Knob")
AV8BNA:definePushButton("BAK_ADI_CAGE_PULL", 19, 3350, 350, "Flight Instruments", "Backup ADI Cage/Pitch Adjust Pull")
--Miscelaneous Switch Panel
AV8BNA:defineToggleSwitch("RECORD_SYS_MODE", 14, 3422, 422, "Misc", "Video Recorder System Mode Switch")
AV8BNA:defineToggleSwitch("RECORD_SYS_DISPLAY", 14, 3423, 423, "Misc", "Video Recorder System Display Selector Switch")
AV8BNA:defineToggleSwitch("DMT", 16, 3424, 424, "Misc", "DMT Toggle On/Off")
AV8BNA:defineMultipositionSwitch("DUAL_CPU_MODE", 12, 3425, 425, 3, 0.5, "Misc", "Display Computer Mode Selector Switch PRIM/AUTO/ALTER")
AV8BNA:defineToggleSwitch("PROBE_HEAT_MODE", 19, 3426, 426, "Misc", "Probe Heat Mode Switch")
AV8BNA:defineMultipositionSwitch("MISS_PC_MODE", 12, 3427, 427, 3, 0.5, "Misc", "Mission Computer Mode Switch OVRD/AUTO/OFF")
AV8BNA:defineToggleSwitch("FLIR", 14, 3429, 429, "Misc", "FLIR Power Switch")
--INS Panel
AV8BNA:defineMultipositionSwitch("INS_MODE", 11, 3421, 421, 8, 0.1, "INS", "INS Mode Knob OFF/SEA/GND/NAV/IFA/GYRO/GB/TEST")

----LEFT CONSOLE:
--Trim Panel
AV8BNA:defineMultipositionSwitch("YAW_TRIM_SW", 28, 3471, 471, 3, 0.5, "Trim", "RPS/YAW Trim Switch TEST/ON/OFF")
AV8BNA:defineMultipositionSwitch("TRIM_MODE", 28, 3472, 472, 3, 0.5, "Trim", "Trim Mode Switch APRCH/HVR/OFF")
--SAAHS Panel
AV8BNA:defineToggleSwitch("ALT_HOLD_SW", 28, 3476, 476, "SAAHS", "Alt Hold Switch")
AV8BNA:defineToggleSwitch("Q_FEEL_SW", 28, 3475, 475, "SAAHS", "Q Feel Switch")
AV8BNA:defineMultipositionSwitch("AFC_SW", 28, 3477, 477, 3, 0.5, "SAAHS", "AFC Switch ON/OFF/RESET")
AV8BNA:defineToggleSwitch("SAS_YAW", 28, 3478, 478, "SAAHS", "SAS Yaw Switch")
AV8BNA:defineToggleSwitch("SAS_ROLL", 28, 3479, 479, "SAAHS", "SAS Roll Switch")
AV8BNA:defineToggleSwitch("SAS_PITCH", 28, 3480, 480, "SAAHS", "SAS Pitch Switch")
--Throttle Quadrant
AV8BNA:defineToggleSwitch("JPTL_SW", 9, 3481, 481, "Throttle", "JPTL Switch")
AV8BNA:define3PosTumb("RUDDER_TRIM", 28, 3483, 483, "Throttle", "Rudder Trim Switch L/R")
AV8BNA:definePushButton("EMS_B", 9, 3482, 482, "Throttle", "EMS Button")
AV8BNA:defineToggleSwitch("MAN_FUEL_SW", 9, 3484, 484, "Throttle", "Manual Fuel Switch")
AV8BNA:definePotentiometer("THROTTLE_FRICTION", 28, 3485, 485, { 0, 1 }, "Throttle", "Throttle Lever Friction Knob")
AV8BNA:definePotentiometer("NOZZLE_FRICTION", 28, 3486, 486, { 0, 1 }, "Throttle", "Nozzle Lever Friction Knob")
AV8BNA:defineToggleSwitch("THROTT_CUTOFF_LV", 9, 3490, 490, "Throttle", "Throttle Cutoff Lever")
AV8BNA:defineToggleSwitch("PARK_BRAKE_LV", 28, 3489, 489, "Throttle", "Parking Brake Lever")
AV8BNA:definePotentiometer("NOZZLE_LEVER", 13, 3487, 487, { 0, 1 }, "Throttle", "Nozzle Control Lever")
AV8BNA:defineTumb("STO_LEVER", 13, 3488, 488, 0.05, { 0.35, 1 }, nil, false, "Throttle", "STO Stop Lever")
--Fuel Panel
AV8BNA:defineToggleSwitch("FUEL_PROP", 9, 3504, 504, "Fuel Panel", "Fuel Proportioner")
AV8BNA:defineMultipositionSwitch("FUEL_PUMP_L", 9, 3505, 505, 3, 0.5, "Fuel Panel", "Fuel Pump L Switch DC OPEN/OFF/NORM")
AV8BNA:defineMultipositionSwitch("FUEL_PUMP_R", 9, 3506, 506, 3, 0.5, "Fuel Panel", "Fuel Pump R Switch DC OPEN/OFF/NORM")
AV8BNA:defineMultipositionSwitch("PROBE", 9, 3507, 507, 3, 0.5, "Fuel Panel", "Air Refueling Probe Switch IN/OUT/PRESS")
AV8BNA:defineToggleSwitch("FUEL_DUMP_L", 9, 3508, 508, "Fuel Panel", "Fuel Dump L Switch")
AV8BNA:defineToggleSwitch("FUEL_DUMP_R", 9, 3509, 509, "Fuel Panel", "Fuel Dump R Switch")
--External Lights Panel
AV8BNA:defineMultipositionSwitch("LANDING_TAXI_LIGHTS", 33, 3472, 472, 3, 0.5, "External Lights", "Landing/Taxi Lights Switch OFF/HVR/APRCH")
AV8BNA:defineMultipositionSwitch("EXT_LIGHTS", 33, 3503, 503, 3, 0.5, "External Lights", "External Lights Mode Switch NORM/NVG/OFF")
AV8BNA:definePotentiometer("FORMATION_LIGHTS", 33, 3510, 510, { 0, 1 }, "External Lights", "Formation Lights Knob")
AV8BNA:defineMultipositionSwitch("POS_LIGHTS", 33, 3511, 511, 3, 0.5, "External Lights", "Position Lights Switch OFF/DIM/BRT")
AV8BNA:defineToggleSwitch("ANTI_COLL_LIGHTS", 33, 3512, 512, "External Lights", "Anti-Collision Lights Switch")
AV8BNA:defineToggleSwitch("EXT_AUX_LIGHTS", 33, 3513, 513, "External Lights", "External Auxiliary Lights Switch")
--Pilot Service Panel
AV8BNA:defineToggleSwitch("O2_SW", 36, 3514, 514, "Gear/Flaps Control Panel", "Oxygen Switch")
AV8BNA:defineToggleSwitch("H2O_DUMP", 9, 3515, 515, "Gear/Flaps Control Panel", "H2O Dump Switch")
AV8BNA:defineToggleSwitch("LIDS_SW", 13, 3516, 516, "Gear/Flaps Control Panel", "LIDS Switch")
AV8BNA:defineToggleSwitch("RPM_SW", 9, 3517, 517, "Gear/Flaps Control Panel", "ENG RPM Switch")
AV8BNA:defineToggleSwitch("EFC_SW", 9, 3518, 518, "Gear/Flaps Control Panel", "EFC Switch")
--Bulkhead Switches
AV8BNA:define3PosTumb("SEAT_ADJ", 12, 3502, 502, "Bulkhead Left", "Seat Adjustment Switch")
AV8BNA:defineToggleSwitch("FUEL_SHUTOFF", 9, 3519, 519, "Bulkhead Left", "Fuel Shutoff Lever")
AV8BNA:defineToggleSwitch("DECS_SW", 9, 3520, 520, "Bulkhead Left", "DECS Switch")

----RIGHT CONSOLE:
--Electrical Panel
AV8BNA:defineToggleSwitch("DC_TEST_SW", 1, 3609, 609, "Electric Panel", "DC Test Switch")
AV8BNA:defineMultipositionSwitch("APU_GEN_SW", 1, 3610, 610, 3, 0.5, "Electric Panel", "APU Generator Switch OFF/ON/RESET")
AV8BNA:defineToggleSwitch("ENG_START_SW", 1, 3611, 611, "Electric Panel", "Engine Start Switch")
AV8BNA:defineMultipositionSwitch("GEN_SW", 1, 3612, 612, 3, 0.5, "Electric Panel", "Generator Switch  TEST/OFF/ON")
AV8BNA:defineMultipositionSwitch("BATT_SW", 1, 3613, 613, 3, 0.5, "Electric Panel", "Battery Switch  ALERT/OFF/ON")
--V/UHF Radio Panel
AV8BNA:definePotentiometer("UHF_VOL", 7, 3614, 614, { 0, 1 }, "UHF Radio", "V/UHF RSC Volume Knob")
AV8BNA:defineRotary("UHF_FREQ", 7, 3615, 615, "UHF Radio", "V/UHF RSC Chan/Freq Knob")
AV8BNA:defineMultipositionSwitch("UHF_MODE", 7, 3616, 616, 7, 0.2, "UHF Radio", "V/UHF RSC Operational Mode Switch ZRO/OFF/TEST/TR+G/TR/ADF/CHNG PRST")
AV8BNA:definePushButton("UHF_ANC_POINT", 7, 3617, 617, "UHF Radio", "V/UHF RSC Ancillary Mode Pointer")
AV8BNA:definePushButton("UHF_ANC_SW", 7, 3618, 618, "UHF Radio", "V/UHF RSC Ancillary Mode Switch")
AV8BNA:defineMultipositionSwitch("BOMBS_ARM_SW", 7, 3619, 619, 7, 0.15, "UHF Radio", "V/UHF RSC Frequency Mode Switch AJ-M/AJ/MAR/PRST/MAN/243/121")
AV8BNA:definePushButton("UHF_LOAD_SW", 7, 3620, 620, "UHF Radio", "V/UHF RSC LOAD/OFST Switch")
--ACNIP
AV8BNA:defineToggleSwitch("ACNIP_MODE", 8, 3621, 621, "ACNIP", "ACNIP Mode Switch")
AV8BNA:defineToggleSwitch("KY1_TYPE", 8, 3622, 622, "ACNIP", "KY-1 Cipher Type Selector Switch")
AV8BNA:defineToggleSwitch("KY2_TYPE", 8, 3623, 623, "ACNIP", "KY-2 Cipher Type Selector Switch")
AV8BNA:defineToggleSwitch("KY1_MODE", 8, 3624, 624, "ACNIP", "KY-1 Code/Mode Switch")
AV8BNA:defineToggleSwitch("KY2_MODE", 8, 3625, 625, "ACNIP", "KY-2 Code/Mode Switch")
AV8BNA:defineToggleSwitch("ACNIP_RADIO_SEL", 8, 3626, 626, "ACNIP", "ACNIP Radio Selector Switch")
AV8BNA:defineToggleSwitch("KY58_CODE_CLEAR", 8, 3627, 627, "ACNIP", "KY-58 Codes Clear Switch")
AV8BNA:define3PosTumb("KY58_CODE_LOAD", 8, 3628, 628, "ACNIP", "KY-58 Remote Codes Load Switch  RV1/OPR/RV2")
--ICS
AV8BNA:definePotentiometer("ICS_AUX_VOL", 4, 3629, 629, { 0, 1 }, "ICS", "ICS Aux Volume Knob")
AV8BNA:definePotentiometer("ICS_GND_VOL", 4, 3630, 630, { 0, 1 }, "ICS", "ICS Ground Volume Knob")
AV8BNA:defineMultipositionSwitch("ICS_MIC_MODE", 4, 3631, 631, 3, 0.5, "ICS", "ICS Mic Operational Mode Switch  COLD/HOT/TEL")
--IFF
AV8BNA:defineToggleSwitch("IFF_OPER_MODE", 8, 3632, 632, "IFF", "IFF Operational Mode Switch")
AV8BNA:define3PosTumb("IFF_CRYPT_MODE", 8, 3633, 633, "IFF", "IFF Crypto Mode Switch  ZERO/NORM/HOLD")
--Interior Lights Panel
AV8BNA:define3PosTumb("COMP_LIGHT", 34, 3634, 634, "Int Light", "Compass Light/Test Lights  COPM/OFF/LTS TEST")
AV8BNA:definePotentiometer("INST_LIGHTS", 34, 3635, 635, { 0, 1 }, "Int Light", "Instruments Lights")
AV8BNA:definePotentiometer("CONSOLE_LIGHTS", 34, 3636, 636, { 0, 1 }, "Int Light", "Console Lights")
AV8BNA:definePotentiometer("FLOOD_LIGHTS_DIAL", 34, 3637, 637, { 0, 1 }, "Int Light", "Flood Lights")
AV8BNA:definePotentiometer("ANNUNCIATOR_LIGHTS", 34, 3638, 638, { 0, 0.9 }, "Int Light", "Annunciator Lights")
--ECS Panel
AV8BNA:definePotentiometer("TEMP_CONTROL", 36, 3639, 639, { 0, 1 }, "ECS", "Temperature Control Knob")
AV8BNA:defineToggleSwitch("ECS_FWD", 36, 3640, 640, "ECS", "Fwd Equipment Bay ECS Switch")
AV8BNA:defineMultipositionSwitch("CABIN_DEFOG", 36, 3641, 641, 3, 0.5, "ECS", "Cabin Defog Switch NORM/DFOG/MAX")
AV8BNA:defineMultipositionSwitch("ECS_AFT", 36, 3642, 642, 3, 0.5, "ECS", "Aft Equipment Bay ECS Switch RESET/ON/OFF")
AV8BNA:defineMultipositionSwitch("CABIN_PRESS_SWITCH", 36, 3643, 643, 3, 0.5, "ECS", "Cabin Pressure Switch NORM/DUMP/RAM")

----FLOOD LAMPS:
AV8BNA:definePotentiometer("FLOOD_R_CAN_T", 34, 3150, 150, { -1, 1 }, "Flood Lamps", "Flood Right Canopy Frame Top")
AV8BNA:definePotentiometer("FLOOD_R_CAN_B", 34, 3151, 151, { -1, 1 }, "Flood Lamps", "Flood Right Canopy Frame Btm")
AV8BNA:definePotentiometer("FLOOD_R_BH_FWD", 34, 3152, 152, { -1, 1 }, "Flood Lamps", "Flood Right BH FWD")
AV8BNA:definePotentiometer("FLOOD_R_BH_AFT_F", 34, 3153, 153, { -1, 1 }, "Flood Lamps", "Flood Right BH AFT Front")
AV8BNA:definePotentiometer("FLOOD_R_BH_AFT_B", 34, 3154, 154, { -1, 1 }, "Flood Lamps", "Flood Right BH AFT Back")
AV8BNA:definePotentiometer("FLOOD_L_BH_AFT_B", 34, 3155, 155, { -1, 1 }, "Flood Lamps", "Flood Left BH AFT Back")
AV8BNA:definePotentiometer("FLOOD_L_BH_AFT_F", 34, 3156, 156, { -1, 1 }, "Flood Lamps", "Flood Left BH AFT Front")
AV8BNA:definePotentiometer("FLOOD_L_BH_FWD", 34, 3157, 157, { -1, 1 }, "Flood Lamps", "Flood Left BH FWD")
AV8BNA:definePotentiometer("FLOOD_L_CAN_B", 34, 3158, 158, { -1, 1 }, "Flood Lamps", "Flood Left Canopy Frame Btm")
AV8BNA:definePotentiometer("FLOOD_L_CAN_T", 34, 3159, 159, { -1, 1 }, "Flood Lamps", "Flood Left Canopy Frame Top")

----CANOPY CONTROLS:
AV8BNA:defineToggleSwitch("CANOPY_HAND_L", 28, 3801, 801, "Canopy", "Canopy Handle Left")
AV8BNA:defineToggleSwitch("CANOPY_HAND_R", 28, 3802, 802, "Canopy", "Canopy Handle Right")
AV8BNA:defineToggleSwitch("CANOPY_LOCK", 28, 3803, 803, "Canopy", "Canopy Locking Lever")
AV8BNA:defineFloat("CANOPY_POS", 38, { 0, 1 }, "Canopy", "Canopy Position")

----Indicator Lights & Gauges
--MIP INNER LEFT
AV8BNA:defineIndicatorLight("MC_LIGHT", 196, "Warning, Caution and IndicatorLights", "MasterCaution Lamp (yellow)")
AV8BNA:defineIndicatorLight("MW_LIGHT", 197, "Warning, Caution and IndicatorLights", "MasterWarning Lamp (red)")
AV8BNA:defineIndicatorLight("LFUEL_LIGHT", 326, "Warning, Caution and IndicatorLights", "Left Fuel Lamp (green)")
AV8BNA:defineIndicatorLight("RFUEL_LIGHT", 327, "Warning, Caution and IndicatorLights", "Right Fuel Lamp (green)")
AV8BNA:defineIndicatorLight("15SEK_LIGHT", 328, "Warning, Caution and IndicatorLights", "15 Sek Lamp (green)")
AV8BNA:defineIndicatorLight("MFS_LIGHT", 329, "Warning, Caution and IndicatorLights", "MFS Lamp (green)")
AV8BNA:defineIndicatorLight("BINGO_LIGHT", 330, "Warning, Caution and IndicatorLights", "Bingo Lamp (green)")
AV8BNA:defineIndicatorLight("H2O_LIGHT", 331, "Warning, Caution and IndicatorLights", "H2O Lamp (green)")
--MIP RIGHT SIDE
AV8BNA:defineIndicatorLight("FIRE_LIGHT", 334, "Warning, Caution and IndicatorLights", "Fire Lamp (green)")
AV8BNA:defineIndicatorLight("LAW_LIGHT", 335, "Warning, Caution and IndicatorLights", "LAW Lamp (green)")
AV8BNA:defineIndicatorLight("FLAPS_LIGHT", 336, "Warning, Caution and IndicatorLights", "Flaps Lamp (green)")
AV8BNA:defineIndicatorLight("LTANK_LIGHT", 337, "Warning, Caution and IndicatorLights", "Left Tank Lamp (green)")
AV8BNA:defineIndicatorLight("RTANK_LIGHT", 338, "Warning, Caution and IndicatorLights", "Right Tank Lamp (green)")
AV8BNA:defineIndicatorLight("HHYD_LIGHT", 339, "Warning, Caution and IndicatorLights", "HHYD Lamp (green)")
AV8BNA:defineIndicatorLight("GEAR_LIGHT", 340, "Warning, Caution and IndicatorLights", "Gear Lamp (green)")
AV8BNA:defineIndicatorLight("OT_LIGHT", 341, "Warning, Caution and IndicatorLights", "OT Lamp (green)")
AV8BNA:defineIndicatorLight("JPTL_LIGHT", 342, "Warning, Caution and IndicatorLights", "JPTL Lamp (green)")
AV8BNA:defineIndicatorLight("EFC_LIGHT", 343, "Warning, Caution and IndicatorLights", "EFC Lamp (green)")
AV8BNA:defineIndicatorLight("GEN_LIGHT", 344, "Warning, Caution and IndicatorLights", "GEN Lamp (green)")
--EYEBROW LIGHTS RIGHT SIGHT
AV8BNA:defineIndicatorLight("SAM_LIGHT", 276, "Warning, Caution and IndicatorLights", "SAM Lamp (green)")
AV8BNA:defineIndicatorLight("CW_LIGHT", 277, "Warning, Caution and IndicatorLights", "CW Lamp (green)")
AV8BNA:defineIndicatorLight("AI_LIGHT", 278, "Warning, Caution and IndicatorLights", "AI Lamp (green)")
AV8BNA:defineIndicatorLight("AAA_LIGHT", 279, "Warning, Caution and IndicatorLights", "AAA Lamp (green)")
--MIP OUTER LEFT SIDE
AV8BNA:defineIndicatorLight("NAV_LIGHT", 283, "Warning, Caution and IndicatorLights", "NAV Lamp (green)")
AV8BNA:defineIndicatorLight("VSTOL_LIGHT", 285, "Warning, Caution and IndicatorLights", "VSTOL Lamp (green)")
AV8BNA:defineIndicatorLight("AG_LIGHT", 281, "Warning, Caution and IndicatorLights", "A/G Lamp (green)")
AV8BNA:defineIndicatorLight("SEL_LIGHT", 451, "Warning, Caution and IndicatorLights", "SEL Lamp (green)")
AV8BNA:defineIndicatorLight("CMBT_LIGHT", 452, "Warning, Caution and IndicatorLights", "CMBT Lamp (green)")
AV8BNA:defineIndicatorLight("STO_LIGHT", 453, "Warning, Caution and IndicatorLights", "STO Lamp (green)")
--CANOPY FRAME
AV8BNA:defineIndicatorLight("LEFT_LIGHT", 750, "Warning, Caution and IndicatorLights", "Left Lamp Canopy (green)")
AV8BNA:defineIndicatorLight("READY_LIGHT", 751, "Warning, Caution and IndicatorLights", "Ready Lamp Canopy (green)")
AV8BNA:defineIndicatorLight("RIGHT_LIGHT", 752, "Warning, Caution and IndicatorLights", "Right Lamp Canopy (green)")
--GEAR LEVER
AV8BNA:defineIndicatorLight("GEAR_LEVER_LIGHT", 446, "Warning, Caution and IndicatorLights", "Gear Lever Lamp (red)")
--CAUTION PANEL (from upper left to lower right)
AV8BNA:defineIndicatorLight("OXY_WLIGHT", 560, "Warning, Caution and IndicatorLights", "OXY Warning Light (green)")
AV8BNA:defineIndicatorLight("WSLD_WLIGHT", 561, "Warning, Caution and IndicatorLights", "WSLD Warning Light (green)")
AV8BNA:defineIndicatorLight("HYD1_WLIGHT", 562, "Warning, Caution and IndicatorLights", "HYD 1 Warning Light (green)")
AV8BNA:defineIndicatorLight("HYD2_WLIGHT", 563, "Warning, Caution and IndicatorLights", "HYD 2 Warning Light (green)")
AV8BNA:defineIndicatorLight("LPUMP_WLIGHT", 564, "Warning, Caution and IndicatorLights", "Left Pump Warning Light (green)")
AV8BNA:defineIndicatorLight("RPUMP_WLIGHT", 565, "Warning, Caution and IndicatorLights", "Right Pump Warning Light (green)")
AV8BNA:defineIndicatorLight("LTRANS_WLIGHT", 566, "Warning, Caution and IndicatorLights", "L TRANS Warning Light (green)")
AV8BNA:defineIndicatorLight("RTRANS_WLIGHT", 567, "Warning, Caution and IndicatorLights", "R TRANS Warning Light (green)")
AV8BNA:defineIndicatorLight("FLAPS1_WLIGHT", 568, "Warning, Caution and IndicatorLights", "FLAPS 1 Warning Light (green)")
AV8BNA:defineIndicatorLight("FLAPS2_WLIGHT", 569, "Warning, Caution and IndicatorLights", "FLAPS 2 Warning Light (green)")
AV8BNA:defineIndicatorLight("AUTFLP_WLIGHT", 570, "Warning, Caution and IndicatorLights", "AUT FLP Warning Light (green)")
AV8BNA:defineIndicatorLight("PROP_WLIGHT", 571, "Warning, Caution and IndicatorLights", "PROP Warning Light (green)")
AV8BNA:defineIndicatorLight("LIDS_WLIGHT", 572, "Warning, Caution and IndicatorLights", "LIDS Warning Light (green)")
AV8BNA:defineIndicatorLight("OIL_WLIGHT", 573, "Warning, Caution and IndicatorLights", "OIL Warning Light (green)")
AV8BNA:defineIndicatorLight("APU_GEN_WLIGHT", 574, "Warning, Caution and IndicatorLights", "APU GEN Warning Light (green)")
AV8BNA:defineIndicatorLight("LINE_WLIGHT", 575, "Warning, Caution and IndicatorLights", "Line -- Warning Light (green)")
AV8BNA:defineIndicatorLight("GPS_WLIGHT", 576, "Warning, Caution and IndicatorLights", "GPS Warning Light (green)")
AV8BNA:defineIndicatorLight("DEP_RES_WLIGHT", 577, "Warning, Caution and IndicatorLights", "DEP RES Warning Light (green)")
AV8BNA:defineIndicatorLight("DC_WLIGHT", 578, "Warning, Caution and IndicatorLights", "DC Warning Light (green)")
AV8BNA:defineIndicatorLight("STBY_TR_WLIGHT", 579, "Warning, Caution and IndicatorLights", "STBY TR Warning Light (green)")
AV8BNA:defineIndicatorLight("CS_COOL_WLIGHT", 580, "Warning, Caution and IndicatorLights", "CS COOL Warning Light (green)")
AV8BNA:defineIndicatorLight("LOAD_WLIGHT", 581, "Warning, Caution and IndicatorLights", "LOAD Warning Light (green)")
AV8BNA:defineIndicatorLight("CANOPY_WLIGHT", 582, "Warning, Caution and IndicatorLights", "CANOPY Warning Light (green)")
AV8BNA:defineIndicatorLight("INS_WLIGHT", 583, "Warning, Caution and IndicatorLights", "INS Warning Light (green)")
AV8BNA:defineIndicatorLight("SKID_WLIGHT", 584, "Warning, Caution and IndicatorLights", "SKID Warning Light (green)")
AV8BNA:defineIndicatorLight("EFC_WLIGHT", 585, "Warning, Caution and IndicatorLights", "EFC Warning Light (green)")
AV8BNA:defineIndicatorLight("NWS_WLIGHT", 586, "Warning, Caution and IndicatorLights", "NWS Warning Light (green)")
AV8BNA:defineIndicatorLight("AFC_WLIGHT", 587, "Warning, Caution and IndicatorLights", "AFC Warning Light (green)")
AV8BNA:defineIndicatorLight("C_AUT", 588, "Warning, Caution and IndicatorLights", "C AUT Warning Light (green)")
AV8BNA:defineIndicatorLight("H2O_SEL", 589, "Warning, Caution and IndicatorLights", "H2O SEL Warning Light (green)")
AV8BNA:defineIndicatorLight("APU_WLIGHT", 590, "Warning, Caution and IndicatorLights", "APU Warning Light (green)")
AV8BNA:defineIndicatorLight("PITCH_WLIGHT", 591, "Warning, Caution and IndicatorLights", "PITCH Warning Light (green)")
AV8BNA:defineIndicatorLight("IFF_WLIGHT", 592, "Warning, Caution and IndicatorLights", "IFF Warning Light (green)")
AV8BNA:defineIndicatorLight("SPD_BRK_WLIGHT", 593, "Warning, Caution and IndicatorLights", "SPD BRK Warning Light (green)")
AV8BNA:defineIndicatorLight("DROOP_WLIGHT", 594, "Warning, Caution and IndicatorLights", "DROOP Warning Light (green)")
AV8BNA:defineIndicatorLight("ROLL_WLIGHT", 595, "Warning, Caution and IndicatorLights", "ROLL Warning Light (green)")
AV8BNA:defineIndicatorLight("AFT_BAY_WLIGHT", 596, "Warning, Caution and IndicatorLights", "AFT BAY Warning Light (green)")
AV8BNA:defineIndicatorLight("AV_BIT_WLIGHT", 597, "Warning, Caution and IndicatorLights", "AV BIT Warning Light (green)")
AV8BNA:defineIndicatorLight("LINE2_WLIGHT", 598, "Warning, Caution and IndicatorLights", "2 Line --  Warning Light (green)")
AV8BNA:defineIndicatorLight("YAW_WLIGHT", 599, "Warning, Caution and IndicatorLights", "YAW Warning Light (green)")
AV8BNA:defineIndicatorLight("CW_NOGO_WLIGHT", 600, "Warning, Caution and IndicatorLights", "CW NOGO Warning Light (green)")
AV8BNA:defineIndicatorLight("P_JAM_WLIGHT", 601, "Warning, Caution and IndicatorLights", "P JAM Warning Light (green)")
AV8BNA:defineIndicatorLight("JAM_HOT_WLIGHT", 602, "Warning, Caution and IndicatorLights", "JAM HOT Warning Light (green)")
AV8BNA:defineIndicatorLight("ENG_EXC_WLIGHT", 603, "Warning, Caution and IndicatorLights", "ENG EXC Warning Light (green)")
AV8BNA:defineIndicatorLight("P_NOGO_WLIGHT", 604, "Warning, Caution and IndicatorLights", "P NOGO Warning Light (green)")
AV8BNA:defineIndicatorLight("CW_JAM_WLIGHT", 605, "Warning, Caution and IndicatorLights", "CW JAM Warning Light (green)")
AV8BNA:defineIndicatorLight("REPLY_WLIGHT", 606, "Warning, Caution and IndicatorLights", "REPLY Warning Light (green)")
--ENGINE DISPLAY
AV8BNA:defineFloat("DUCT1", 253, { 0, 1 }, "Gauges", "Duct 1. Drum Digit")
AV8BNA:defineFloat("DUCT2", 254, { 0, 1 }, "Gauges", "Duct 2. Drum Digit")
AV8BNA:defineFloat("DUCT3", 255, { 0, 1 }, "Gauges", "Duct 3. Drum Digit")
AV8BNA:defineFloat("RPM1", 256, { 0, 1 }, "Gauges", "RPM 1. Drum Digit")
AV8BNA:defineFloat("RPM2", 257, { 0, 1 }, "Gauges", "RPM 2. Drum Digit")
AV8BNA:defineFloat("RPM3", 258, { 0, 1 }, "Gauges", "RPM 3. Drum Digit")
AV8BNA:defineFloat("RPM4", 259, { 0, 1 }, "Gauges", "RPM 4. Drum Digit")
AV8BNA:defineFloat("FF1", 260, { 0, 1 }, "Gauges", "FF 1. Drum Digit")
AV8BNA:defineFloat("FF2", 261, { 0, 1 }, "Gauges", "FF 2. Drum Digit")
AV8BNA:defineFloat("FF3", 262, { 0, 1 }, "Gauges", "FF 3. Drum Digit")
AV8BNA:defineFloat("JPT1", 263, { 0, 1 }, "Gauges", "JPT 1. Drum Digit")
AV8BNA:defineFloat("JPT2", 264, { 0, 1 }, "Gauges", "JPT 2. Drum Digit")
AV8BNA:defineFloat("JPT3", 265, { 0, 1 }, "Gauges", "JPT 3. Drum Digit")
AV8BNA:defineFloat("STAB_ARROW", 266, { -1, 1 }, "Gauges", "STAB Arrow up/down Drum Digit")
AV8BNA:defineFloat("STAB1", 267, { 0, 1 }, "Gauges", "STAB 1. Drum Digit")
AV8BNA:defineFloat("STAB2", 268, { 0, 1 }, "Gauges", "STAB 2. Drum Digit")
AV8BNA:defineFloat("H2O1", 269, { 0, 1 }, "Gauges", "H2O 1. Drum Digit")
AV8BNA:defineFloat("H2O2", 270, { 0, 1 }, "Gauges", "H2O 2. Drum Digit")
AV8BNA:defineFloat("NOZZLE_POINTER", 271, { 0, 1 }, "Gauges", "Nozzle Pointer")
AV8BNA:defineIndicatorLight("H2O_CONTROL_LIGHT", 177, "Warning, Caution and IndicatorLights", "H2O Control Lamp (green)")
--FUEL PANEL DISPLAY
AV8BNA:defineFloat("FUEL_FLAG", 365, { 0, 1 }, "Gauges", "FUEL ON/OFF Flag")
AV8BNA:defineFloat("TOT_FUEL1", 366, { 0, 1 }, "Gauges", "TOT FUEL 1. Drum Digit")
AV8BNA:defineFloat("TOT_FUEL2", 367, { 0, 1 }, "Gauges", "TOT FUEL 2. Drum Digit")
AV8BNA:defineFloat("TOT_FUEL3", 368, { 0, 1 }, "Gauges", "TOT FUEL 3. Drum Digit")
AV8BNA:defineFloat("TOT_FUEL4", 369, { 0, 1 }, "Gauges", "TOT FUEL 4. Drum Digit")
AV8BNA:defineFloat("TOT_FUEL5", 370, { 0, 1 }, "Gauges", "TOT FUEL 5. Drum Digit")
AV8BNA:defineFloat("LBS_L1", 371, { 0, 1 }, "Gauges", "LBS Left 1. Drum Digit")
AV8BNA:defineFloat("LBS_L2", 372, { 0, 1 }, "Gauges", "LBS Left 2. Drum Digit")
AV8BNA:defineFloat("LBS_L3", 373, { 0, 1 }, "Gauges", "LBS Left 3. Drum Digit")
AV8BNA:defineFloat("LBS_L4", 374, { 0, 1 }, "Gauges", "LBS Left 4. Drum Digit")
AV8BNA:defineFloat("LBS_R1", 375, { 0, 1 }, "Gauges", "LBS Right 1. Drum Digit")
AV8BNA:defineFloat("LBS_R2", 376, { 0, 1 }, "Gauges", "LBS Right 2. Drum Digit")
AV8BNA:defineFloat("LBS_R3", 377, { 0, 1 }, "Gauges", "LBS Right 3. Drum Digit")
AV8BNA:defineFloat("LBS_R4", 378, { 0, 1 }, "Gauges", "LBS Right 4. Drum Digit")
AV8BNA:defineFloat("BINGO1", 381, { 0, 1 }, "Gauges", "BINGO 1. Drum Digit")
AV8BNA:defineFloat("BINGO2", 382, { 0, 1 }, "Gauges", "BINGO 2. Drum Digit")
AV8BNA:defineFloat("BINGO3", 383, { 0, 1 }, "Gauges", "BINGO 3. Drum Digit")
AV8BNA:defineFloat("BINGO4", 384, { 0, 1 }, "Gauges", "BINGO 4. Drum Digit")
--UPPER AMARMENT PANEL
AV8BNA:defineFloat("MODE_GAUGE", 385, { 0, 1 }, "Gauges", "MODE Drum Digit")
AV8BNA:defineFloat("FUZ1", 386, { 0, 1 }, "Gauges", "Fuze 1. Drum Digit")
AV8BNA:defineFloat("FUZ2", 387, { 0, 1 }, "Gauges", "Fuze 2. Drum Digit")
AV8BNA:defineFloat("INVT1", 392, { 0, 1 }, "Gauges", "InVT x 10 1. Drum Digit")
AV8BNA:defineFloat("INVT2", 393, { 0, 1 }, "Gauges", "InVT x 10 2. Drum Digit")
AV8BNA:defineFloat("INVT3", 394, { 0, 1 }, "Gauges", "InVT x 10 3. Drum Digit")
AV8BNA:defineFloat("MULT_GAUGE", 391, { 0, 1 }, "Gauges", "Multiplicator Drum Digit")
AV8BNA:defineFloat("QTY1", 389, { 0, 1 }, "Gauges", "Quantity 1. Drum Digit")
AV8BNA:defineFloat("QTY2", 390, { 0, 1 }, "Gauges", "Quantity 2. Drum Digit")
--LOWER AMARMENT PANEL
AV8BNA:defineFloat("SET_FLAG1", 406, { 0, 1 }, "Gauges", "SET FLAG 1 Gauge")
AV8BNA:defineFloat("SET_FLAG2", 408, { 0, 1 }, "Gauges", "SET FLAG 2 Gauge")
AV8BNA:defineFloat("SET_FLAG3", 410, { 0, 1 }, "Gauges", "SET FLAG 3 Gauge")
AV8BNA:defineFloat("SET_FLAG4", 412, { 0, 1 }, "Gauges", "SET FLAG 4 Gauge")
AV8BNA:defineFloat("SET_FLAG5", 414, { 0, 1 }, "Gauges", "SET FLAG 5 Gauge")
AV8BNA:defineFloat("SET_FLAG6", 416, { 0, 1 }, "Gauges", "SET FLAG 6 Gauge")
AV8BNA:defineFloat("SET_FLAG7", 418, { 0, 1 }, "Gauges", "SET FLAG 7 Gauge")
--GEAR PANEL DISPLAY --STATUS LIGHTS--
AV8BNA:defineIndicatorLight("NOSE_GEAR_Y", 462, "Gear/Flaps Control Panel Lights", "Nose Gear Transition Light (yellow)")
AV8BNA:defineIndicatorLight("NOSE_GEAR_G", 463, "Gear/Flaps Control Panel Lights", "Nose Gear Down Light (green)")
AV8BNA:defineIndicatorLight("LEFT_GEAR_Y", 464, "Gear/Flaps Control Panel Lights", "Left Gear Transition Light (yellow)")
AV8BNA:defineIndicatorLight("LEFT_GEAR_G", 465, "Gear/Flaps Control Panel Lights", "Left Gear Down Light (green)")
AV8BNA:defineIndicatorLight("RIGHT_GEAR_Y", 466, "Gear/Flaps Control Panel Lights", "Right Gear Transition Light (yellow)")
AV8BNA:defineIndicatorLight("RIGHT_GEAR_G", 467, "Gear/Flaps Control Panel Lights", "Right Gear Down Light (green)")
AV8BNA:defineIndicatorLight("MAIN_GEAR_Y", 469, "Gear/Flaps Control Panel Lights", "Main Gear Transition Light (yellow)")
AV8BNA:defineIndicatorLight("MAIN_GEAR_G", 468, "Gear/Flaps Control Panel Lights", "Main Gear Down Light (green)")
--BRAKE/ HYD DISPLAY
AV8BNA:defineFloat("BRAKE1", 550, { 0, 1 }, "Gauges", "Brake 1. Drum Digit")
AV8BNA:defineFloat("BRAKE2", 551, { 0, 1 }, "Gauges", "Brake 2. Drum Digit")
AV8BNA:defineFloat("BRAKE3", 552, { 0, 1 }, "Gauges", "Brake 3. Drum Digit")
AV8BNA:defineFloat("HYD11", 553, { 0, 1 }, "Gauges", "Hydraulic 1 1. Drum Digit")
AV8BNA:defineFloat("HYD12", 554, { 0, 1 }, "Gauges", "Hydraulic 1 2. Drum Digit")
AV8BNA:defineFloat("HYD13", 555, { 0, 1 }, "Gauges", "Hydraulic 1 3. Drum Digit")
AV8BNA:defineFloat("HYD21", 556, { 0, 1 }, "Gauges", "Hydraulic 2 1. Drum Digit")
AV8BNA:defineFloat("HYD22", 557, { 0, 1 }, "Gauges", "Hydraulic 2 2. Drum Digit")
AV8BNA:defineFloat("HYD23", 558, { 0, 1 }, "Gauges", "Hydraulic 2 3. Drum Digit")
--FLAP POSITION DISPLAY
AV8BNA:defineFloat("FLAP_POS1", 455, { 0, 1 }, "Gauges", "Flap Position 1. Drum Digit")
AV8BNA:defineFloat("FLAP_POS2", 456, { 0, 1 }, "Gauges", "Flap Position 2. Drum Digit")
AV8BNA:defineFloat("ADI_PITCH", 349, { -1, 1 }, "Gauges", "ADI Pitch")
AV8BNA:defineFloat("ADI_BANK", 348, { -1, 1 }, "Gauges", "ADI Bank")
AV8BNA:defineFloat("ADI_FLAG", 347, { 0, 1 }, "Gauges", "ADI OFF Flag")
AV8BNA:defineFloat("KNT_POINTER_S", 346, { 0, 1 }, "Gauges", "Speed knt Pointer Short")
AV8BNA:defineFloat("KNT_POINTER_L", 345, { 0, 1 }, "Gauges", "Speed knt Pointer Long")
AV8BNA:defineFloat("ALT_POINTER", 352, { 0, 1 }, "Gauges", "Altimeter Pointer")
AV8BNA:defineFloat("ALT_10000FT_CNT", 353, { 0, 1 }, "Gauges", "Altimeter 10000 FT Counter")
AV8BNA:defineFloat("ALT_1000FT_CNT", 354, { 0, 1 }, "Gauges", "Altimeter 1000 FT Counter")
AV8BNA:defineFloat("ALT_100FT_CNT", 355, { 0, 1 }, "Gauges", "Altimeter 100 FT Counter")
AV8BNA:defineFloat("ALT_PRESSURE1", 356, { 0, 1 }, "Gauges", "Altimeter Pressure Digit 1")
AV8BNA:defineFloat("ALT_PRESSURE2", 357, { 0, 1 }, "Gauges", "Altimeter Pressure Digit 2")
AV8BNA:defineFloat("ALT_PRESSURE3", 358, { 0, 1 }, "Gauges", "Altimeter Pressure Digit 3")
AV8BNA:defineFloat("ALT_PRESSURE4", 359, { 0, 1 }, "Gauges", "Altimeter Pressure Digit 4")
AV8BNA:defineFloat("AOA_FLAG", 360, { 0, 1 }, "Gauges", "Speed knt Pointer Short")
AV8BNA:defineFloat("AOA_POINTER", 361, { -0.1, 0.2 }, "Gauges", "Speed knt Pointer Long")
AV8BNA:defineFloat("VVI", 362, { -1, 1 }, "Gauges", "Vertical Velocity Indicator")
AV8BNA:defineFloat("SLIP_IND", 363, { -1, 1 }, "Gauges", "Slip Indicator Ball")
--SIDE PANELS LEFT
AV8BNA:defineFloat("AILERON_NEEDLE", 473, { -1, 1 }, "Gauges", "Aileron Needle")
AV8BNA:defineFloat("RUDDER_NEEDLE", 474, { -1, 1 }, "Gauges", "Rudder Needle")
--SIDE PANELS RIGHT
AV8BNA:defineFloat("CABIN_PRESS", 607, { 0, 1 }, "Gauges", "Cabin Pressure Pointer")
AV8BNA:defineFloat("VOLT_METER", 608, { 0, 1 }, "Gauges", "Volt Meter Pointer")
---COMPASS
AV8BNA:defineFloat("COMPASS_NS", 753, { 0, 1 }, "Gauges", "Compassrose N-S")
AV8BNA:defineFloat("COMPASS_UD", 754, { -1, 1 }, "Gauges", "Compassrose Up/Down")
AV8BNA:defineFloat("COMPASS_BANK", 755, { -1, 1 }, "Gauges", "Compassrose Bank")
--CLOCK
AV8BNA:defineFloat("CLOCK_HH", 759, { 0, 1 }, "Gauges", "Clock Hours")
AV8BNA:defineFloat("CLOCK_MM", 760, { 0, 1 }, "Gauges", "Clock Minutes")
AV8BNA:defineFloat("CLOCK_SS", 761, { 0, 1 }, "Gauges", "Clock Seconds")
--CABIN LIGHTNING
AV8BNA:defineFloat("FLOOD_LIGHTS", 180, { 0, 1 }, "Gauges", "Flood Lightning Intensity")
AV8BNA:defineFloat("MIP_LIGHTS", 182, { 0, 1 }, "Gauges", "MIP Backlight Intensity")
AV8BNA:defineFloat("SIDEPANEL_LIGHTS", 183, { 0, 1 }, "Gauges", "Sidepanel Lightning Intensity")
AV8BNA:defineFloat("COMPASS_LIGHTS", 184, { 0, 1 }, "Gauges", "Compass Lightning Intensity")

AV8BNA:defineFloat("BRAKE_ACCU", 559, { 0, 0.4 }, "Gauges", "Brake Accummulator")
AV8BNA:defineFloat("TURN_INDI", 652, { -1, 1 }, "Gauges", "Turn Indicator")
AV8BNA:defineFloat("SLIP_TURN_FLAG", 654, { 0, 1 }, "Gauges", "Slip/Turn Flag")

AV8BNA:defineToggleSwitch("MIRROR_TOGGLE_L", 19, 4124, 1124, "Canopy", "Mirror Rendering Toggle Left")
AV8BNA:defineToggleSwitch("MIRROR_TOGGLE_C", 19, 4125, 1125, "Canopy", "Mirror Rendering Toggle Center")
AV8BNA:defineToggleSwitch("MIRROR_TOGGLE_R", 19, 4126, 1126, "Canopy", "Mirror Rendering Toggle Right")
AV8BNA:defineToggleSwitch("HIDE_STICK", 28, 4999, 999, "Cockpit", "Show/Hide Controls")

--Externals
AV8BNA:defineFloatFromDrawArgument("EXT_SPEED_BRAKE", 182, "External Aircraft Model", "Speed Brake")
AV8BNA:defineBitFromDrawArgument("EXT_POSITION_LIGHTS", 190, "External Aircraft Model", "Position Lights (green,red,white)")
AV8BNA:defineFloatFromDrawArgument("EXT_FORMATION_LIGHTS", 201, "External Aircraft Model", "Formation Lights (green)")
AV8BNA:defineBitFromDrawArgument("EXT_STROBE", 83, "External Aircraft Model", "Strobe Lights (red)")
AV8BNA:defineBitFromDrawArgument("EXT_WOW_NOSE", 1, "External Aircraft Model", "Weight ON Wheels Nose Gear")
AV8BNA:defineBitFromDrawArgument("EXT_WOW_RIGHT", 4, "External Aircraft Model", "Weight ON Wheels Right Gear")
AV8BNA:defineBitFromDrawArgument("EXT_WOW_LEFT", 6, "External Aircraft Model", "Weight ON Wheels Left Gear")
AV8BNA:defineBitFromDrawArgument("EXT_WOW_TAIL", 343, "External Aircraft Model", "Weight ON Wheels Tail Gear")

-- Get Displays Functions
local function getComm1Text()
	if parse_indication_5 == nil then
		return ""
	end
	local txt = parse_indication_5["ufc_chnl_1_m"] or ""
	return (" "):rep(2 - #txt) .. txt:sub(1, 2)
end
AV8BNA:defineString("UFC_COMM1_DISPLAY", getComm1Text, 2, "UFC Display", "UFC Comm1 Preset Display")

local function getComm2Text()
	if parse_indication_5 == nil then
		return ""
	end
	local txt = parse_indication_5["ufc_chnl_2_m"] or ""
	return (" "):rep(2 - #txt) .. txt:sub(1, 2)
end
AV8BNA:defineString("UFC_COMM2_DISPLAY", getComm2Text, 2, "UFC Display", "UFC Comm2 Preset Display")

AV8BNA:reserveIntValue(14)

-- parse ODU
local oduOption1Select = ""
local oduOption1Text = ""
local oduOption2Select = ""
local oduOption2Text = ""
local oduOption3Select = ""
local oduOption3Text = ""
local oduOption4Select = ""
local oduOption4Text = ""
local oduOption5Select = ""
local oduOption5Text = ""
AV8BNA.exportHooks[#AV8BNA.exportHooks + 1] = function()
	local odu = Module.parse_indication(6)

	if not odu then
		return
	end

	oduOption1Select = odu["ODU_Option_1_Slc"] or ""
	oduOption1Text = odu["ODU_Option_1_TEXT"] or ""
	oduOption2Select = odu["ODU_Option_2_Slc"] or ""
	oduOption2Text = odu["ODU_Option_2_TEXT"] or ""
	oduOption3Select = odu["ODU_Option_3_Slc"] or ""
	oduOption3Text = odu["ODU_Option_3_TEXT"] or ""
	oduOption4Select = odu["ODU_Option_4_Slc"] or ""
	oduOption4Text = odu["ODU_Option_4_TEXT"] or ""
	oduOption5Select = odu["ODU_Option_5_Slc"] or ""
	oduOption5Text = odu["ODU_Option_5_TEXT"] or ""
end

AV8BNA:defineString("AV8BNA_ODU_1_SELECT", function()
	return oduOption1Select
end, 1, "ODU", "ODU Option 1 Select (string)")
AV8BNA:defineString("AV8BNA_ODU_1_TEXT", function()
	return oduOption1Text
end, 4, "ODU", "ODU Option 1 Text (string)")
AV8BNA:defineString("AV8BNA_ODU_2_SELECT", function()
	return oduOption2Select
end, 1, "ODU", "ODU Option 2 Select (string)")
AV8BNA:defineString("AV8BNA_ODU_2_TEXT", function()
	return oduOption2Text
end, 4, "ODU", "ODU Option 2 Text (string)")
AV8BNA:defineString("AV8BNA_ODU_3_SELECT", function()
	return oduOption3Select
end, 1, "ODU", "ODU Option 3 Select (string)")
AV8BNA:defineString("AV8BNA_ODU_3_TEXT", function()
	return oduOption3Text
end, 4, "ODU", "ODU Option 3 Text (string)")
AV8BNA:defineString("AV8BNA_ODU_4_SELECT", function()
	return oduOption4Select
end, 1, "ODU", "ODU Option 4 Select (string)")
AV8BNA:defineString("AV8BNA_ODU_4_TEXT", function()
	return oduOption4Text
end, 4, "ODU", "ODU Option 4 Text (string)")
AV8BNA:defineString("AV8BNA_ODU_5_SELECT", function()
	return oduOption5Select
end, 1, "ODU", "ODU Option 5 Select (string)")
AV8BNA:defineString("AV8BNA_ODU_5_TEXT", function()
	return oduOption5Text
end, 4, "ODU", "ODU Option 5 Text (string)")

local function getUfcText()
	if parse_indication_5 == nil then
		return ""
	end
	local leftStr = parse_indication_5["ufc_left_position"] or ""
	local rightStr = parse_indication_5["ufc_right_position"] or ""

	local displayStr = leftStr .. (" "):rep(12 - #leftStr - #rightStr) .. rightStr
	return displayStr
end
AV8BNA:defineString("UFC_SCRATCHPAD", getUfcText, 12, "UFC Display", "UFC Scratchpad Display")

return AV8BNA
