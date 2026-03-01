// Move left and right
x += move_speed * move_direction;

// Reverse direction at limits
if x > start_x + move_distance {
    move_direction = -1;
}
if x < start_x - move_distance {
    move_direction = 1;
}

// Carry the cat along with the platform
if place_meeting(x, y - 1, Object10) {
    Object10.x += move_speed * move_direction;
}