/// @description Insert description here
// You can write your code in this editor
/// @description Draw event
draw_self();

// Call the halo script
script_execute(halo_effect, self, 30,);

 // Horizontal lines
 if (room != StartScreen){
	 
    for (i = 0; i <= room_height; i+= 64)
    {
        draw_line(0, i, room_width, i)
    }
  
    // Vertical lines     
    for (i = 0; i <= room_width; i+= 64)
    {
        draw_line(i, 0, i, room_height)   
    }
 }