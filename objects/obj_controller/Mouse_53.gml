if (instance_number(obj_particle) < 75) {
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_particle);
} else {
    show_debug_message("Particle limit reached!");
}
