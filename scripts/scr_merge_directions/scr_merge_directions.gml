if (!is_real(argument0) || !is_real(argument1)) {
    return 0;
}

var current_direction = argument0;
var target_direction = argument1;
var blend_amount = argument2;

current_direction = current_direction mod 360;
target_direction = target_direction mod 360;

var diff = target_direction - current_direction;
if (diff > 180) diff -= 360;
if (diff < -180) diff += 360;

return current_direction + diff * blend_amount;
