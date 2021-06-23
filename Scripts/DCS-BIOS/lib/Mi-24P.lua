BIOS.protocol.beginModule("Mi-24P", 0x6800)
BIOS.protocol.setExportModuleAircrafts({"Mi-24P"})
--v1.0 by WarLord (aka BlackLibrary)&charliefoxtwo

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document  

local parse_indication = BIOS.util.parse_indication

local defineFixedStepInput = BIOS.util.defineFixedStepInput
local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight
local definePushButton = BIOS.util.definePushButton
local definePotentiometer = BIOS.util.definePotentiometer
local defineMultipositionSwitch = BIOS.util.defineMultipositionSwitch
local defineRockerSwitch = BIOS.util.defineRockerSwitch
local defineRotary = BIOS.util.defineRotary
local defineTumb = BIOS.util.defineTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineFixedStepTumb = BIOS.util.defineFixedStepTumb
local defineString = BIOS.util.defineString
local defineIntegerFromGetter = BIOS.util.defineIntegerFromGetter
local define3Pos2CommandSwitch = BIOS.util.define3Pos2CommandSwitch
local define3PosTumb = BIOS.util.define3PosTumb

--Engine
defineToggleSwitch("PLT_ROTOR_BRAKE", 3, 3011, 745, "Engine", "PILOT Rotor Brake")
defineToggleSwitch("PLT_ENG_STOP_L", 3, 3009, 6, "Engine", "PILOT Left Engine Stop")
defineToggleSwitch("PLT_ENG_STOP_R", 3, 3010, 7, "Engine", "PILOT Right Engine Stop")
defineRotary("PLT_ENG_THROTTLE_L", 3, 3006, 5, "Engine", "PILOT Left Engine Throttle")
defineRotary("PLT_ENG_THROTTLE_R", 3, 3008, 4, "Engine", "PILOT Right Engine Throttle")
define3Pos2CommandSwitch("PLT_FREE_TURB_RPM", 3, 3020, 3019, 747, "Engine", "PILOT Readjust Free Turbine RPM, RIGHT/NEUTRAL/LEFT")

--HydroInterface
defineToggleSwitch("PLT_MAIN_AUXHYD_CV", 4, 3002, 216, "Hydro Interface", "PILOT Main/Auxiliary Hydraulic Switch Cover, UP/DOWN")
defineToggleSwitch("PLT_MAIN_AUXHYD", 4, 3001, 217, "Hydro Interface", "PILOT Main/Auxiliary Hydraulic Switch, MAIN/AUXILIARY")
defineToggleSwitch("PLT_MAIN_GEARHYD_CV", 4, 3004, 218, "Hydro Interface", "PILOT Main/Reserve Gear Hydraulic Switch Cover, UP/DOWN")
defineToggleSwitch("PLT_MAIN_GEARHYD", 4, 3003, 219, "Hydro Interface", "PILOT Main/Reserve Gear Hydraulic Switch, MAIN/RESERVE")
definePushButton("PLT_AUX_DISABLE", 4, 3005, 213, "Hydro Interface", "PILOT Auxiliary Disable Button")
defineToggleSwitch("PLT_AUX_DISABLE_CV", 4, 3006, 215, "Hydro Interface", "PILOT Auxiliary Disable Button Cover, UP/DOWN")
defineToggleSwitch("PLT_CONTROL_ASSUMEND_CV", 4, 3012, 47, "Hydro Interface", "PILOT Control Assumed Switch Cover, UP/DOWN")
defineToggleSwitch("PLT_CONTROL_ASSUMEND", 4, 3011, 48, "Hydro Interface", "PILOT Control Assumed Switch Cover, ON/OFF")
defineToggleSwitch("PLT_PEDAL_DAMPER_CV", 4, 3008, 289, "Hydro Interface", "PILOT Pedal Damper Cover, UP/DOWN")
defineToggleSwitch("PLT_PEDAL_DAMPER", 4, 3007, 290, "Hydro Interface", "PILOT Pedal Damper, ON/OFF")
defineToggleSwitch("OP_PEDAL_DAMPER_CV", 4, 3001, 666, "Hydro Interface", "OPERATOR Pedal Damper Cover, UP/DOWN")
defineToggleSwitch("OP_PEDAL_DAMPER", 4, 3009, 667, "Hydro Interface", "OPERATOR Pedal Damper, ON/OFF")

--CockpitMechanics
defineToggleSwitch("PLT_GEAR_IND_L_SW", 11, 3003, 224, "Cockpit Mechanics PLT", "PILOT Gear Indication Lights, ON/OFF")
defineToggleSwitch("PLT_GEAR_IND_L_CV", 11, 3004, 223, "Cockpit Mechanics PLT", "PILOT Gear Indication Lights Cover, UP/DOWN")
defineToggleSwitch("PLT_GEAR_LVR", 11, 3001, 232, "Cockpit Mechanics PLT", "PILOT Gear Lever, UP/DOWN")
defineToggleSwitch("PLT_GEAR_LVR_LOCK", 11, 3002, 228, "Cockpit Mechanics PLT", "PILOT Gear Lever Lock, UP/DOWN")
defineToggleSwitch("OP_GEAR_SW", 11, 3005, 677, "Cockpit Mechanics OP", "OPERATOR Gear Switch, UP/DOWN")
defineToggleSwitch("OP_GEAR_SW_CV", 11, 3006, 676, "Cockpit Mechanics OP", "OPERATOR Gear Switch Cover UP/DOWN")
defineToggleSwitch("PLT_EMERG_GEAR_LVR", 11, 3007, 827, "Cockpit Mechanics PLT", "PILOT Emergency Gear Lever")
definePushButton("PLT_WIN_SPRAY", 11, 3015, 384, "Cockpit Mechanics PLT", "PILOT Window Sprayer Button")
definePushButton("OP_WIN_SPRAY", 11, 3016, 680, "Cockpit Mechanics OP", "OPERATOR Window Sprayer Button")
definePushButton("PLT_COLLECTIVE_STOP", 11, 3028, 753, "Cockpit Mechanics PLT", "PILOT friction clutch of the collective")
defineToggleSwitch("OP_CLOCK_HEAT", 11, 3013, 672, "Cockpit Mechanics OP", "OPERATOR Clock Heating Switch, ON/OFF")
defineToggleSwitch("OP_DUAS_HEAT", 11, 3012, 763, "Cockpit Mechanics OP", "OPERATOR Heating DUAS, ON/OFF")
definePushButton("PLT_FAN_FUN", 11, 3029, 0, "Cockpit Mechanics PLT", "PILOT Cockpit Fan - Touch")
definePushButton("OP_FAN_FUN", 11, 3030, 0, "Cockpit Mechanics OP", "OPERATOR Cockpit Fan - Touch")
definePushButton("PLT_BRAKE_WHEEL", 11, 3026, 737, "Cockpit Mechanics PLT", "PILOT Wheel Brakes Handle")
defineToggleSwitch("PLT_BRAKE_PARK", 11, 3027, 736, "Cockpit Mechanics PLT", "PILOT Parking Brake Handle")
defineToggleSwitch("PLT_FAN", 11, 3024, 420, "Cockpit Mechanics PLT", "PILOT Fan, ON/OFF")
defineToggleSwitch("OP_FAN", 11, 3025, 665, "Cockpit Mechanics OP", "OPERATOR Fan, ON/OFF")
defineToggleSwitch("STICK_HIDE", 11, 3031, 974, "Cockpit Mechanics", "Hide Stick toggle")

--IntLightSystem
define3PosTumb("OP_CABIN_L_SW", 23, 3001, 682, "Int Light System", "OPERATOR Cabin Lighting Switch, WHITE/OFF/RED")
define3PosTumb("PLT_CABIN_L_SW", 23, 3002, 356, "Int Light System", "PILOT Cabin Lighting Switch, WHITE/OFF/RED")
defineToggleSwitch("PLT_CARGO_L_SW", 23, 3003, 354, "Int Light System", "PILOT Cargo Lighting Switch, ON/OFF")
defineToggleSwitch("PLT_CARGO_L_CV", 23, 3004, 353, "Int Light System", "PILOT Cargo Lighting Switch Cover, UP/DOWN")
defineToggleSwitch("PLT_CARGO_COLOR_L_SW", 23, 3005, 355, "Int Light System", "PILOT Cargo Lighting Switch, WHITE/OFF/BLUE")
definePushButton("PLT_WARN_L_TEST", 23, 3008, 363, "Int Light System", "PILOT Test Warning Lights Button")
definePushButton("OP_WARN_L_TEST", 23, 3009, 681, "Int Light System", "OPERATOR Test Warning Lights Button")
defineToggleSwitch("PLT_DAY_NIGHT_SW", 23, 3010, 362, "Int Light System", "PILOT Day-Night Switch, DAY/NIGHT")
defineToggleSwitch("PLT_BLINK_SW", 23, 3011, 36, "Int Light System", "PILOT Blinker Switch, ON/OFF")
defineTumb("PLT_TRANSFROM_1_R", 23, 3012, 148, 0.1, {0, 1}, nil, false, "Int Light System", "PILOT Transformer 1 Group Of Red Lights Right And Pilot Panel, OFF/8V/9V/10V/11V/12V/13V/14V/16V/18V/20V")
defineTumb("PLT_TRANSFROM_2_R", 23, 3013, 147, 0.1, {0, 1}, nil, false, "Int Light System", "PILOT Transformer 2 Group Of Red Lights Right And Pilot Panel, OFF/8V/9V/10V/11V/12V/13V/14V/16V/18V/20V")
defineToggleSwitch("PLT_ARM_RED_L_SW", 23, 3014, 822, "Int Light System", "PILOT Armament Panel Red Lights Switch, ON/OFF")
defineTumb("PLT_TRANSFROM_1_L", 23, 3015, 820, 0.1, {0, 1}, nil, false, "Int Light System", "PILOT Transformer 1 Group Of Red Lights Left And Pilot Panel, OFF/8V/9V/10V/11V/12V/13V/14V/16V/18V/20V")
defineTumb("PLT_TRANSFROM_2_L", 23, 3016, 503, 0.1, {0, 1}, nil, false, "Int Light System", "PILOT Transformer 2 Group Of Red Lights Left And Pilot Panel, OFF/8V/9V/10V/11V/12V/13V/14V/16V/18V/20V")
defineTumb("OP_TRANSFROM_1_L", 23, 3017, 1013, 0.1, {0, 1}, nil, false, "Int Light System", "OPERATOR Transformer 1 Group Of Red Lights Left And Pilot Panel, OFF/8V/9V/10V/11V/12V/13V/14V/16V/18V/20V")
defineTumb("OP_TRANSFROM_2_L", 23, 3018, 1014, 0.1, {0, 1}, nil, false, "Int Light System", "OPERATOR Transformer 2 Group Of Red Lights Left And Pilot Panel, OFF/8V/9V/10V/11V/12V/13V/14V/16V/18V/20V")
defineTumb("PLT_TRANSFROM_BUILTIN", 23, 3020, 149, 0.1, {0, 1}, nil, false, "Int Light System", "PILOT Builtin Red Lights Transformer, OFF/0.6V/1.2V/1.8V/2.4V/3V/3.6V/4.2V/4.8V/5.4V/6V")

--ExtLightsSystem
define3PosTumb("PLT_LND_L_SW", 15, 3008, 208, "Ext Light System", "PILOT LND LT Control-Off-Retract Switch")
defineToggleSwitch("PLT_TAXI_L_SW", 15, 3001, 34, "Ext Light System", "PILOT Taxi LT Switch, ON/OFF")
defineToggleSwitch("OP_TAXI_L_SW", 15, 3001, 686, "Ext Light System", "OPERATOR Taxi LT Switch, ON/OFF")
define3PosTumb("PLT_NAV_L_SW", 15, 3003, 207, "Ext Light System", "PILOT Navigation Lights Switch, BRIGHT/OFF/DIM")
definePushButton("PLT_NAV_L_CODE", 15, 3004, 35, "Ext Light System", "PILOT Navigation Lights Code Button")
define3PosTumb("PLT_FORMATION_L_SW", 15, 3005, 414, "Ext Light System", "PILOT Formation Lights Switch, BRIGHT/OFF/DIM")
defineToggleSwitch("PLT_TIP_L_SW", 15, 3006, 415, "Ext Light System", "PILOT Tip Lights Switch, ON/OFF")
defineToggleSwitch("PLT_STROBE_L_SW", 15, 3007, 417, "Ext Light System", "PILOT Strobe Light Switch, ON/OFF")
defineToggleSwitch("OP_LND_L_CV", 15, 3012, 668, "Ext Light System", "OPERATOR LND Light Assumed Switch Cover, OPEN/CLOSE")
defineToggleSwitch("OP_LND_L_SW", 15, 3011, 669, "Ext Light System", "OPERATOR LND Light Assumed Switch, ON/OFF")

--ECSystem
defineToggleSwitch("PLT_CABIN_UNSEAL", 29, 3001, 133, "ECS", "PILOT Cabin Unseal Switch, ON/OFF")
define3PosTumb("PLT_AC_MODE", 29, 3002, 134, "ECS", "PILOT Blowdown Conditioning Switch, CONDITIONING/OFF/BLOWDOWN")
defineToggleSwitch("PLT_AC_FILTER", 29, 3003, 143, "ECS", "PILOT Filter Switch, ON/OFF")
defineToggleSwitch("PLT_AC_HEAT_MODE_1", 29, 3004, 144, "ECS", "PILOT Heating Switch, HOT/NORMAL")
defineMultipositionSwitch("PLT_AC_HEAT_MODE_2", 29, 3005, 145, 4, 0.1, "ECS", "PILOT Automatic Hot Cold Switch, OFF/COLD/HOT/AUTO")
defineMultipositionSwitch("PLT_AC_TEMP", 29, 3006, 146, 11, 1/9, "ECS", "PILOT Temperature Selector, 5/10/15/18/20/22/24/30/35/40/50")
defineToggleSwitch("OP_SIGHT_FAN", 29, 3007, 774, "ECS", "OPERATOR Sight Fan, ON/OFF")
definePotentiometer("PLT_CABIN_PRESS", 29, 3008, 516, {0, 1}, "ECS", "PILOT Sealing, OPEN/CLOSE")

--PKP72M
defineToggleSwitch("PLT_GYRO_SW", 34, 3001, 12, "PKP72M", "PILOT Gyrovertical Switch, 1/2")
defineToggleSwitch("OP_ADI_SW", 34, 3002, 759, "PKP72M", "OPERTOR ADI Switch, ON/OFF")
definePushButton("PLT_ADI_TEST", 32, 3002, 946, "PKP72M", "PILOT Test ADI Button")
defineRotary("PLT_ADI_PITCH_TRIM", 32, 3001, 941, "PKP72M", "PILOT ADI Pitch Trim Knob")
definePushButton("OP_ADI_TEST", 33, 3002, 787, "PKP72M", "OPERTOR Test ADI Button")
defineRotary("OP_ADI_PITCH_TRIM", 33, 3001, 782, "PKP72M", "OPERTOR ADI Pitch Trim Knob")

--MGV1SU
definePushButton("PLT_GYRO_1_CAGE", 25, 3001, 10, "MGV1SU", "PILOT Cage Gyro 1")
definePushButton("PLT_GYRO_2_CAGE", 26, 3001, 14, "MGV1SU", "PILOT Cage Gyro 2")
defineToggleSwitch("PLT_GYRO_1_PWR", 25, 3004, 369, "MGV1SU", "PILOT Gyro 1 Power, ON/OFF")
defineToggleSwitch("PLT_GYRO_2_PWR", 26, 3004, 368, "MGV1SU", "PILOT Gyro 2 Power, ON/OFF")
definePushButton("OP_GYRO_2_CAGE", 26, 3003, 701, "MGV1SU", "OPERATOR Cage Gyro 2")

--UKT2
defineRotary("PLT_UKT_PITCH_TRIM", 18, 3001, 951, "UKT 2", "PILOT UKT Pitch Trim Knob")

--Barometric Altimeter
definePotentiometer("PLT_ALT_PRESS", 41, 3001, 18, {0, 1}, "Barometric Altimeter", "PILOT Baro Pressure Knob")
definePotentiometer("OP_ALT_PRESS", 42, 3001, 788, {0, 1}, "Barometric Altimeter", "OPERATOR Baro Pressure Knob")

--RMI2
defineToggleSwitch("PLT_RMI2_MODE", 43, 3002, 26, "RMI2", "PILOT Mode Switch, ZK/ARKU2")
defineToggleSwitch("OP_RMI2_MODE", 44, 3002, 843, "RMI2", "OPERATOR Mode Switch, ZK/ARKU2")

-- CLOCK

--Electric Interface
defineToggleSwitch("PLT_D_BATT_R", 1, 3037, 61, "Electric Interface", "PILOT DC Right Battery switch, ON/OFF")
defineToggleSwitch("PLT_D_BATT_L", 1, 3034, 75, "Electric Interface", "PILOT DC Left Battery switch, ON/OFF")
defineToggleSwitch("PLT_D_RECT_R", 1, 3043, 65, "Electric Interface", "PILOT DC Right Rectifier switch, ON/OFF")
defineToggleSwitch("PLT_D_RECT_L", 1, 3040, 62, "Electric Interface", "PILOT DC Left Rectifier switch, ON/OFF")
defineToggleSwitch("PLT_D_APU", 1, 3046, 66, "Electric Interface", "PILOT DC APU Generator switch, ON/OFF")

--SAU (autopilot)
defineToggleSwitch("PLT_SAU_BTN_BRIGHT", 10, 3070, 267, "SAU", "PILOT SAU Button Brightness, BRIGHT/DIM")
definePushButton("PLT_SAU_H_ON", 10, 3005, 237, "SAU", "PILOT SAU H Channel ON")
definePushButton("PLT_SAU_H_OFF", 10, 3007, 236, "SAU", "PILOT SAU H Channel OFF")
definePushButton("PLT_SAU_K_ON", 10, 3001, 243, "SAU", "PILOT SAU K Channel ON")
definePushButton("PLT_SAU_K_OFF", 10, 3003, 242, "SAU", "PILOT SAU K Channel OFF")
definePushButton("PLT_SAU_T_ON", 10, 3009, 249, "SAU", "PILOT SAU T Channel ON")
definePushButton("PLT_SAU_T_OFF", 10, 3011, 248, "SAU", "PILOT SAU T Channel OFF")
definePushButton("PLT_SAU_B_ON", 10, 3013, 255, "SAU", "PILOT SAU B Channel ON")
definePushButton("PLT_SAU_B_OFF", 10, 3015, 254, "SAU", "PILOT SAU B Channel OFF")
defineRotary("PLT_SAU_H_CORRECT", 10, 3021, 234, "SAU", "PILOT SAU H Channel Delta Correction")
defineRotary("PLT_SAU_K_CORRECT", 10, 3023, 240, "SAU", "PILOT SAU K Channel Delta Correction")
defineRotary("PLT_SAU_T_CORRECT", 10, 3025, 246, "SAU", "PILOT SAU T Channel Delta Correction")
definePushButton("PLT_SAU_ALT_MODE_ON", 10, 3032, 258, "SAU", "PILOT SAU Altitude Mode ON")
definePushButton("PLT_SAU_ALT_MODE_OFF", 10, 3034, 257, "SAU", "PILOT SAU Altitude Mode OFF")
definePushButton("PLT_SAU_HOVER_MODE_ON", 10, 3036, 259, "SAU", "PILOT SAU Hover Mode ON")
definePushButton("PLT_SAU_ROUTE_MODE_ON", 10, 3038, 261, "SAU", "PILOT SAU Route Mode ON")
definePushButton("PLT_SAU_HOVER_ROUTE_MODE_OFF", 10, 3040, 260, "SAU", "PILOT SAU Hover and Route Modes OFF")
defineRotary("PLT_SAU_ROUTE_AZIMUTH", 10, 3030, 262, "SAU", "PILOT SAU Route Azimuth")
-- defineFixedStepInput("PLT_SAU_ROUTE_AZIMUTH", 10, 3030, {-1, 1}, "SAU", "PILOT SAU Route Azimuth") --TODO: get fixed step input working

local function getSAURouteAzimuth()
    local function a(n) return GetDevice(0):get_argument_value(n) end
    return string.format("%.0f%.0f%.0f", 10-(a(265)*10), 10-(a(264)*10), 10-(a(263)*10))
end
defineString("PLT_SAU_ROUTE_AZIMUTH_DISPLAY_STR", getSAURouteAzimuth, 3, "SAU", "PILOT SAU Route Azimuth (String)")
definePushButton("PLT_SAU_SPEED_STAB_ON", 10, 3042, 268, "SAU", "PILOT SAU Speed Stabilization ON")
definePushButton("PLT_SAU_SPEED_STAB_OFF", 10, 3044, 269, "SAU", "PILOT SAU Speed Stabilization OFF")
defineRockerSwitch("PLT_SAU_ALT_CONTROL", 10, 3019, 3019, 3017, 3017, 253, "SAU", "PILOT SAU Altitude Control")

---Lights
defineIndicatorLight("PLT_SAU_L_K_ON", 281, "SAU Lights", "PILOT SAU K ON Light (Green)")
defineIndicatorLight("PLT_SAU_L_K_OFF", 280, "SAU Lights", "PILOT SAU K OFF Light (Red)")
defineIndicatorLight("PLT_SAU_L_H_ON", 279, "SAU Lights", "PILOT SAU H ON Light (Green)")
defineIndicatorLight("PLT_SAU_L_H_OFF", 278, "SAU Lights", "PILOT SAU H OFF Light (Red)")
defineIndicatorLight("PLT_SAU_L_B_ON", 296, "SAU Lights", "PILOT SAU B ON Light (Green)")
defineIndicatorLight("PLT_SAU_L_B_OFF", 295, "SAU Lights", "PILOT SAU B OFF Light (Red)")
defineIndicatorLight("PLT_SAU_L_T_ON", 294, "SAU Lights", "PILOT SAU T ON Light (Green)")
defineIndicatorLight("PLT_SAU_L_T_OFF", 293, "SAU Lights", "PILOT SAU T OFF Light (Red)")
defineIndicatorLight("PLT_SAU_L_ROUTE_MODE_ON", 299, "SAU Lights", "PILOT SAU Route Mode ON Light (Green)")
defineIndicatorLight("PLT_SAU_L_HOVER_ROUTE_MODE_OFF", 298, "SAU Lights", "PILOT SAU Hover and Route Modes OFF Light (Red)")
defineIndicatorLight("PLT_SAU_L_HOVER_MODE_ON", 297, "SAU Lights", "PILOT SAU Hover Mode ON Light (Green)")
defineIndicatorLight("PLT_SAU_L_ALT_MODE_ON", 304, "SAU Lights", "PILOT SAU Altitude Mode ON Light (Green)")
defineIndicatorLight("PLT_SAU_L_ALT_MODE_OFF", 303, "SAU Lights", "PILOT SAU Altitude Mode OFF Light (Red)")

---Gauges
defineFloat("PLT_SAU_H_DELTA", 238, {-1, 1}, "SAU Gauges", "PILOT SAU Yaw Delta")
defineFloat("PLT_SAU_K_DELTA", 244, {-1, 1}, "SAU Gauges", "PILOT SAU Roll Delta")
defineFloat("PLT_SAU_T_DELTA", 251, {-1, 1}, "SAU Gauges", "PILOT SAU Pitch Delta")
defineFloat("PLT_SAU_B_DELTA", 256, {-1, 1}, "SAU Gauges", "PILOT SAU Altitude Delta")
defineFloat("PLT_SAU_H_NUM", 235, {0, 1}, "SAU Gauges", "PILOT SAU Yaw Number")
defineFloat("PLT_SAU_K_NUM", 241, {0, 1}, "SAU Gauges", "PILOT SAU Roll Number")
defineFloat("PLT_SAU_T_NUM", 247, {0, 1}, "SAU Gauges", "PILOT SAU Pitch Number")
defineFloat("PLT_SAU_H_CORRECT_PRESS", 233, {0, 1}, "SAU", "PILOT SAU Yaw Pressed")
defineFloat("PLT_SAU_K_CORRECT_PRESS", 239, {0, 1}, "SAU", "PILOT SAU Roll Pressed")
defineFloat("PLT_SAU_T_CORRECT_PRESS", 245, {0, 1}, "SAU", "PILOT SAU Pitch Pressed")

--SPUU-52
defineToggleSwitch("PLT_SPUU_POWER", 19, 3010, 270, "SPUU", "PILOT SPUU Power, ON/OFF")
defineToggleSwitch("PLT_SPUU_OFF", 19, 3001, 275, "SPUU", "PILOT SPUU OFF")
defineRockerSwitch("PLT_SPUU_CONTROL", 19, 3007, 3007, 3006, 3006, 277, "SPUU", "PILOT SPUU Control Switch, P/NONE/T")
definePotentiometer("PLT_SPUU_ROUTE_AZIMUTH", 19, 3003, 276, {0, 1}, "SPUU", "PILOT SPUU Route Azimuth")

---Lights
defineIndicatorLight("PLT_SPUU_L_SPUU_OFF", 302, "SPUU Lights", "PILOT SAU SPUU OFF Light (Red)")

---Gauges
defineFloat("PLT_SPUU_DELTA", 271, {-1, 1}, "SPUU Gauges", "PILOT SPUU Delta")

--Cyclic
definePushButton("PLT_CYCLIC_AP_TRIM", 10, 3027, 742, "Cyclic", "PILOT Cyclic Autopilot Trimmer")
definePushButton("OP_CYCLIC_AP_TRIM", 10, 3028, 855, "Cyclic", "OPERATOR Cyclic Autopilot Trimmer")

--WeaponSystems
---PUVL
defineToggleSwitch("PLT_PUVL_SIGHT_DISTANCE", 16, 3003, 515, "PUVL", "PILOT Sight Distance, MANUAL/AUTO")
define3PosTumb("PLT_PUVL_BURST_LENGTH", 6, 3003, 521, "PUVL", "PILOT Burst Length, SHORT/LONG/MEDIUM")
defineTumb("PLT_PUVL_RELOAD_LEFT_GONDOLA", 6, 3004, 522, 0.1, {0.0, 0.3}, nil, false, "PUVL", "PILOT Reload Left Gondola, OFF/1/2/3")
defineTumb("PLT_PUVL_RELOAD_RIGHT_GONDOLA", 6, 3005, 527, 0.1, {0.0, 0.3}, nil, false, "PUVL", "PILOT Reload Right Gondola, OFF/1/2/3")
defineToggleSwitch("PLT_PUVL_WEAPON_SIGHT", 16, 3014, 529, "PUVL", "PILOT Weapon Sight, ON/OFF")
defineToggleSwitch("PLT_PUVL_WEAPON_CAMERA", 6, 3006, 530, "PUVL", "PILOT Weapon Camera, ON/OFF")
definePotentiometer("PLT_PUVL_MANUAL_RANGE", 16, 3004, 552, {0, 1}, "PUVL", "PILOT Manual Range Adjustment")
defineTumb("PLT_PUVL_WEAPON_SELECT", 6, 3007, 523, 0.1, {0.0, 0.8}, nil, false, "PUVL", "PILOT Weapon Selector, 9-POS")
definePushButton("PLT_PUVL_SIGHT_ZERO", 16, 3007, 528, "PUVL", "PILOT Sight Reset Crosshair")
define3PosTumb("PLT_PUVL_ROCKET_SELECT", 6, 3008, 531, "PUVL", "PILOT Rocket Select, LEFT/BOTH/RIGHT")
defineToggleSwitch("PLT_PUVL_FIRE_CONTROL", 6, 3009, 551, "PUVL", "PILOT Weapon Control, ON/OFF")
defineToggleSwitch("PLT_PUVL_CANNON_FIRE_RATE", 6, 3010, 550, "PUVL", "PILOT Cannon Fire Rate, SLOW/FAST")
definePushButton("PLT_PUVL_RELOAD_CANNON", 6, 3011, 549, "PUVL", "PILOT Reload Cannon")
definePushButton("PLT_PUVL_STOP_CONTAINER", 6, 3012, 547, "PUVL", "PILOT Stop Container")
defineToggleSwitch("PLT_PUVL_EXP_ON_JETT", 6, 3013, 546, "PUVL", "PILOT Explosion on Jettison, ON/OFF")
defineToggleSwitch("PLT_PUVL_EXP_ON_JETT_CV", 6, 3014, 545, "PUVL", "PILOT Explosion on Jettison Cover, UP/DOWN")
definePushButton("PLT_PUVL_JETT_PYLONS", 6, 3015, 542, "PUVL", "PILOT Jettison Pylons")
defineToggleSwitch("PLT_PUVL_JETT_PYLONS_CV", 6, 3016, 541, "PUVL", "PILOT Jettison Pylons Cover, UP/DOWN")
definePushButton("PLT_PUVL_JETT_LAUNCHER", 6, 3017, 538, "PUVL", "PILOT Jettison Launcher")
defineToggleSwitch("PLT_PUVL_JETT_LAUNCHER_CV", 6, 3018, 537, "PUVL", "PILOT Jettison Launcher Cover, UP/DOWN")
definePushButton("PLT_PUVL_ARM_ROCKETS", 6, 3019, 536, "PUVL", "PILOT Arm Rockets")

---ASP17
defineToggleSwitch("PLT_ASP17_SIGHT_MODE_MAN_AUTO", 16, 3001, 553, "ASP17", "PILOT ASP17 Sight Mode, MANUAL/AUTO")
defineToggleSwitch("PLT_ASP17_SIGHT_MODE_SYNC_ASYNC", 16, 3002, 554, "ASP17", "PILOT ASP17 Sight Mode, SYNC/ASYNC")
definePotentiometer("PLT_ASP17_SIGHT_VERTICAL_ADJUST", 16, 3005, 556, {0, 1}, "ASP17", "PILOT ASP17 Sight Crosshair Vertical Adjustment")
definePotentiometer("PLT_ASP17_SIGHT_BASE_ADJUST", 16, 3008, 557, {0, 1}, "ASP17", "PILOT ASP17 Base and Range Adjustment")
definePotentiometer("PLT_ASP17_SIGHT_CROSSHAIR_BRIGHT_ADJUST", 16, 3011, 564, {0, 1}, "ASP17", "PILOT ASP17 Sight Crosshair Brightness Adjustment")
definePotentiometer("PLT_ASP17_SIGHT_HORIZONTAL_ADJUST", 16, 3006, 566, {0, 1}, "ASP17", "PILOT ASP17 Sight Crosshair Horizontal Adjustment")
definePotentiometer("PLT_ASP17_SIGHT_GRID_BRIGHT_ADJUST", 16, 3010, 567, {0, 1}, "ASP17", "PILOT ASP17 Sight Grid Brightness Adjustment")
defineToggleSwitch("PLT_ASP17_SIGHT_CROSSHAIR_LAMP", 16, 3013, 568, "ASP17", "PILOT ASP17 Sight Crosshair Lamp, MAIN/BACKUP")
defineToggleSwitch("PLT_ASP17_SIGHT_GRID_LAMP", 16, 3012, 569, "ASP17", "PILOT ASP17 Sight Grid Lamp, MAIN/BACKUP")
definePushButton("PLT_ASP17_SIGHT_CONTROL", 16, 3009, 570, "ASP17", "PILOT ASP17 Sight Control")

--Lights
defineIndicatorLight("PLT_ASP17_L_KMG", 559, "ASP17 Lights", "PILOT ASP17 KMG (USLP) Light (Amber)")
defineIndicatorLight("PLT_ASP17_L_GUV", 560, "ASP17 Lights", "PILOT ASP17 GUV (FXD MG) Light (Amber)")
defineIndicatorLight("PLT_ASP17_L_BOMBS", 561, "ASP17 Lights", "PILOT ASP17 BOMBS Light (Amber)")
defineIndicatorLight("PLT_ASP17_L_30", 562, "ASP17 Lights", "PILOT ASP17 30 Light (Amber)")
defineIndicatorLight("PLT_ASP17_L_NRS", 563, "ASP17 Lights", "PILOT ASP17 NRS (RKT) Light (Amber)")
defineIndicatorLight("PLT_ASP17_L_GREEN", 679, "ASP17 Lights", "PILOT ASP17 Green Light (Green)")
defineIndicatorLight("PLT_ASP17_L_YELLOW", 678, "ASP17 Lights", "PILOT ASP17 Yellow Light (Yellow)")
defineIndicatorLight("PLT_ASP17_L_GODEN", 571, "ASP17 Lights", "PILOT ASP17 Goden Light")
defineIndicatorLight("PLT_ASP17_L_USR_CHECK", 760, "ASP17 Lights", "PILOT ASP17 USR Check Light")

defineIndicatorLight("PLT_PUVL_L_EXPLODE_ARMED", 548, "PUVL Lights", "PILOT PUVL Explosion on Jettison ARMED Light (Red)")
defineIndicatorLight("PLT_PUVL_L_PYLON_1", 544, "PUVL Lights", "PILOT PUVL Pylon 1 Light (Yellow)")
defineIndicatorLight("PLT_PUVL_L_PYLON_2", 543, "PUVL Lights", "PILOT PUVL Pylon 2 Light (Yellow)")
defineIndicatorLight("PLT_PUVL_L_PYLON_3", 540, "PUVL Lights", "PILOT PUVL Pylon 3 Light (Yellow)")
defineIndicatorLight("PLT_PUVL_L_PYLON_4", 539, "PUVL Lights", "PILOT PUVL Pylon 4 Light (Yellow)")
defineIndicatorLight("PLT_PUVL_L_USLP_LOADED", 533, "PUVL Lights", "PILOT PUVL USLP Loaded Light (Amber)")
defineIndicatorLight("PLT_PUVL_L_USLP_FINISHED", 532, "PUVL Lights", "PILOT PUVL USLP Finished Light (Amber)")
defineIndicatorLight("PLT_PUVL_L_LH_SIDE", 535, "PUVL Lights", "PILOT PUVL LH Side Light (Amber)")
defineIndicatorLight("PLT_PUVL_L_RH_SIDE", 534, "PUVL Lights", "PILOT PUVL RH Side Light (Amber)")

--Gauges
defineFloat("OP_CANOPY_VALUE", 849, {0, 1}, "Gauges OP", "OPERATOR Canopy Position")
defineFloat("PLT_CANOPY_PILOT_VALUE", 9, {0, 1}, "Gauges PLT", "PILOT Door Position")
defineFloat("PLT_VARIOMETER", 1, {-1, 1}, "Gauges PLT", "PILOT Variometer")
defineFloat("PLT_GMETER", 17, {-1, 1}, "Gauges PLT", "PILOT G-Meter")
defineFloat("PLT_GMETER_MIN", 16, {-1, 1}, "Gauges PLT", "PILOT G-Meter Min")
defineFloat("PLT_GMETER_MAX", 16, {-1, 1}, "Gauges PLT", "PILOT G-Meter Max")
defineFloat("PLT_IAS", 790, {-1, 1}, "Gauges PLT", "PILOT IAS Speed")
defineFloat("OP_IAS", 776, {-1, 1}, "Gauges OP", "OPERATOR IAS Speed")
defineFloat("PLT_UKT2_PITCH", 949, {-1, 1}, "Gauges PLT", "PILOT UKT-2 Pitch")
defineFloat("PLT_UKT2_ROLL", 950, {1, -1}, "Gauges PLT", "PILOT UKT-2 Roll")
defineFloat("PLT_UKT2_FAIL_FLG", 849, {0, 1}, "Gauges PLT", "PILOT UKT-2 Failure Flag")

--Externals
defineIntegerFromGetter("EXT_POSITION_LIGHTS", function()
	if LoGetAircraftDrawArgumentValue(191) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Position Lights")
defineIntegerFromGetter("EXT_NOSE_LIGHT", function()
	if LoGetAircraftDrawArgumentValue(208) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Nose Light (yellow)")
defineIntegerFromGetter("EXT_LAND_LIGHT", function()
	if LoGetAircraftDrawArgumentValue(209) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Landing Light (yellow)")
defineIntegerFromGetter("EXT_BEACON", function()
	if LoGetAircraftDrawArgumentValue(83) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Beacon Light (red)")
defineIntegerFromGetter("EXT_TIP_L", function()
	if LoGetAircraftDrawArgumentValue(47) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Tip Lights (yellow)")
defineIntegerFromGetter("EXT_WIPER", function()
	return math.floor(LoGetAircraftDrawArgumentValue(973)*65535)
end, 65535, "External Aircraft Model", "Wiper")
defineIntegerFromGetter("EXT_WOW_NOSE", function()
	if LoGetAircraftDrawArgumentValue(1) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Nose Gear")
defineIntegerFromGetter("EXT_WOW_RIGHT", function()
	if LoGetAircraftDrawArgumentValue(4) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Right Gear")
defineIntegerFromGetter("EXT_WOW_LEFT", function()
	if LoGetAircraftDrawArgumentValue(6) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Left Gear")

BIOS.protocol.endModule()