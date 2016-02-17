/*

 	Name: AdvBanking_Client_CloseATM.sqf

 	Author(s): Shix and WolfkillArcadia
    Copyright (c) 2016 Shix and WolfkillArcadia

 	Description:
    Handles closing of the ATM

*/
private ["_display","_ctrls","_fade"];
disableSerialization;
_display = uiNameSpace getVariable ["AdvBankingATM", displayNull];
_ctrls = [2202,2201,2203,1100,1101,1102,2210,2011,2204,2205,1105,1600,1106,1607,1107,1108,1400,1103,1104,1604,1605,1109,2222,2223,2224,2225,2226,2227,2200];
{
    _fade = (_display displayCtrl _x);
    _fade ctrlSetFade 1;
    _fade ctrlCommit 0.5;
} forEach _ctrls;
uiSleep 0.5;
(findDisplay 0711) closeDisplay 0;
ATMOpen = false;