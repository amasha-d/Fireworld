// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function halo_effect(){


if (mouse_x >= oPlayer.x  && mouse_x <= oPlayer.x + 64 && mouse_y >= oPlayer.y && mouse_y <= oPlayer.y +64) {
    // Mouse is hovering over oPlayerect, draw halo
    //draw_set_blend_mode(blend_mode);
    draw_set_color(c_white);
    draw_set_alpha(0.2);
    //draw_set_line_width(2);
    draw_circle(oPlayer.x +32, oPlayer.y+32, 70, false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    //draw_set_line_width(1);
    //draw_set_blend_mode(bm_normal);
}

}