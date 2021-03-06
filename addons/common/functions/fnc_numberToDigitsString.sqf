/*
 * Author: commy2
 *
 * Transforms a number to an string of the correspondending digits.
 *
 * Argument:
 * 0: Number to 'digitize' (Number)
 * 1: Set the minimal length of the returned string. Useful for getting left hand zeroes. (Number, optional)
 *
 * Return value:
 * Digits. The maximum length is six digits. (String)
 */
#include "script_component.hpp"

private ["_length"];

PARAMS_2(_number,_minLength);

_number = _number min 999999;

_number = str _number;

_length = count _number;

if (isNil "_minLength") then {_minLength = _length};

_minLength = _minLength min 6;

while {_length < _minLength} do {
    _number = "0" + _number;
    _length = _length + 1;
};

_number
