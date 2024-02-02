var particle_count = instance_number(obj_particle);
var display_x = display_get_gui_width() - 10; // 10 pixels from the right edge
var display_y = 10; // 10 pixels from the top

draw_set_halign(fa_right);
draw_set_valign(fa_top);

if (particle_count > 50) {
    draw_set_color(c_red); // TOO MANY PARTICLES BRO
} else {
    draw_set_color(c_white); // ok this fine
}

draw_text(display_x, display_y, "Particles: " + string(particle_count));

draw_set_color(c_white);

var current_fps = fps;
draw_text(display_x, display_y + 20, "FPS: " + string(current_fps));
