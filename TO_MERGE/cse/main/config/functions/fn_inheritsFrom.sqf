/**
 * fn_inheritsFrom.sqf
 * @Descr: Checks whether a given configuration name appears in the inheritance tree of a specific configuration entry.
 * @Author: Ruthberg
 *
 * @Arguments: [configEntry CONFIG, configname STRING]
 * @Return: BOOL
 * @PublicAPI: true
 */

 private ["_configEntry","_configMatch", "_match"];
_configEntry = _this select 0;
_configMatch = _this select 1;

if (configName _configEntry == _configMatch) exitWith { true };
if (configName _configEntry == ",") exitWith { false };

_match = false;
while {configName _configEntry != ""} do {
	if (configName _configEntry == _configMatch) exitWith { _match = true };
	_configEntry = inheritsFrom(_configEntry);
};

_match