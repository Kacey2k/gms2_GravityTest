if (!is_real(argument0) || !is_real(argument1)) {
    return 0;
}

var a = argument0;
var b = argument1;
var amount = argument2;

a = a mod 360;
b = b mod 360;

var diff = b - a;
if (diff < -180) {
    diff += 360;
} else if (diff > 180) {
    diff -= 360;
}

return a + diff * amount;
