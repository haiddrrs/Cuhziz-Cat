// Movement
if keyboard_check(vk_right) {
    x += 4;
}
if keyboard_check(vk_left) {
    x -= 4;
}
// Gravity
vspeed += 0.5;
// Jumping
if keyboard_check_pressed(vk_up) && place_meeting(x, y+1, oGround) {
    vspeed = -10;
    audio_play_sound(snd_jump, 1, false);
}
// Ground collision
if place_meeting(x, y+vspeed, oGround) {
    while !place_meeting(x, y+sign(vspeed), oGround) {
        y += sign(vspeed);
    }
    vspeed = 0;
}
// Left border transitions
if room == Room2 && x <= 150 {
    room_goto(Room3);
}
if room == Room3 && x <= 150 {
    room_goto(Room4);
}
if room == Room4 && x <= 150 {
    room_goto(Room5);
}
// Right border stop
if x >= 1400 {
    x = 1400;
}
// Reset if falls off bottom
if room == Room1 && y >= 800 {
    room_goto(Room2);
}
if room == Room2 && y >= 800 {
    room_goto(Room2);
}
if room == Room3 && y >= 800 {
    room_goto(Room3);
}
if room == Room4 && y >= 800 {
    room_goto(Room4);
}
if room == Room5 && y >= 800 {
    room_goto(Room6);
}
if room == Room6 && y >= 800 {
    room_goto(Room6);
}
// Stop horizontal movement when hitting wall
if place_meeting(x + 4, y, oGround) && keyboard_check(vk_right) {
    x -= 4;
}
if place_meeting(x - 4, y, oGround) && keyboard_check(vk_left) {
    x += 4;
}