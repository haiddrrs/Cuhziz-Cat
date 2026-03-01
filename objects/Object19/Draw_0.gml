var dist = point_distance(Object10.x, Object10.y, Object14.x, Object14.y);
if dist < 300 {
    var cx = camera_get_view_x(view_camera[0]);
    var cy = camera_get_view_y(view_camera[0]);
    
    draw_set_color(c_white);
    draw_rectangle(cx + 150, cy + 50, cx + 850, cy + 150, false);
    
    draw_set_color(c_black);
    draw_rectangle(cx + 150, cy + 50, cx + 850, cy + 150, true);
    
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_font(-1);
    draw_text(cx + 500, cy + 90, "Go find the cat treats in the cave below! -By Aziz Group of Developers");
}