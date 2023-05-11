// Check if the mouse is hovering over the player instance
/*if (collision_point(mouse_x, mouse_y, id, true, false)) {
    // If the mouse is hovering over the player, change the image_blend to yellow
   image_blend = c_yellow;
	// Draw a translucent halo around the player
    draw_set_color(c_white);
    draw_set_alpha(0.5);
    draw_circle(x, y, sprite_width + 4, false);
    draw_set_alpha(1);

	
} else {
    // If the mouse is not hovering over the player, restore the original image_blend
    image_blend = c_white;
}*/
if(isSelected)
{
	image_index = 0;
}
else
{
	image_index += 0.1;
}
