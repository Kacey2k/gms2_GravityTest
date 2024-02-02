draw_circle(x, y, radius, true);
var speed_color = scr_get_speed_color(speed);

var display_speed = string(round(speed * 100) / 100);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(speed_color);
draw_text(x, y - radius - 10, display_speed);

draw_set_color(c_white);
var i; // you were pain pain pain die i dieeeeee
for (i = 0; i < ds_list_size(trail_list) - 2; i += 2) {
    var alpha = 1 - (i / (trail_length * 2));
    draw_set_alpha(alpha);
    draw_line(ds_list_find_value(trail_list, i), ds_list_find_value(trail_list, i + 1),
              ds_list_find_value(trail_list, i + 2), ds_list_find_value(trail_list, i + 3));
}
draw_set_alpha(1);

draw_circle(x, y, radius, true);
