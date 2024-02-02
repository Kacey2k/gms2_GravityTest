// Gravity
with (obj_particle) {
    if (id != other.id) {
        // math
        var dist = point_distance(x, y, other.x, other.y);
        var grav = other.gravity_force / (dist * dist);
        var target_dir = point_direction(x, y, other.x, other.y);

        // apply
        if (is_real(other.direction)) {
            other.direction = scr_angle_lerp(other.direction, target_dir, other.turn_speed * grav);
        }

        // accel
        other.speed += min(grav, other.acceleration_rate);
        other.speed = min(other.speed, other.max_speed);

        // collision
        if (dist < (radius + other.radius)) {
        }
    }
}

speed *= damping;

//Trails
ds_list_add(trail_list, x);
ds_list_add(trail_list, y);

if (ds_list_size(trail_list) > trail_length * 2) {
    ds_list_delete(trail_list, 0);
    ds_list_delete(trail_list, 0);
}




// Blackhole interaction
with (obj_blackhole) {
    var dist = point_distance(x, y, other.x, other.y);
    if (dist < attraction_radius) {
        // vacuum up particles
        other.direction = point_direction(other.x, other.y, x, y);

        // accel
        var acceleration = 0.2;
        var acceleration_factor = 1 - (dist / attraction_radius);
        other.speed += acceleration * acceleration_factor;
        other.speed = min(other.speed, other.max_speed);
    }
}

// particle death
with (obj_blackhole) {
    if (point_distance(x, y, other.x, other.y) < radius) {
        with (other) {
            instance_destroy();
        }
    }
}
