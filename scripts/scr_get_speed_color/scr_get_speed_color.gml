if (!is_real(argument0)) {
    return c_black;
}

var current_speed = argument0;
var cycle_speed = frac(current_speed);

// color maths
var r = abs(sin(cycle_speed * 2 * pi));
var g = abs(sin(cycle_speed * 2 * pi + pi / 3));
var b = abs(sin(cycle_speed * 2 * pi + 2 * pi / 3));

// Color! :O !
return make_color_rgb(r * 255, g * 255, b * 255);
