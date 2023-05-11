// Set alarm[0] to 60 steps (1 second)

var can_create_count = 0;

if(global.isMoving == true || timer == 0)
{
		
    with(oEnemy) // Execute the following code on every instance of oEnemy
    {
		
        if(!place_meeting(x,y,oEnemy)) // Check if the current instance is not colliding with any other oEnemy instance or player or wall
        {
            //show_debug_message("Is inside if");
			if(!place_meeting(x+64,y,oEnemy) and !place_meeting(x+64,y,oWall) and !place_meeting(x+64,y,oPlayer) and can_create){ 
				instance_create_layer(x+64,y,"Enemy",oEnemy);
				can_create_count++;
				global.points--;
				
				
				}
           // Create a new oEnemy instance to the right
		   if(!place_meeting(x-64,y,oEnemy) and !place_meeting(x-64,y,oWall) and !place_meeting(x-64,y,oPlayer) and can_create){
			   instance_create_layer(x-64,y,"Enemy",oEnemy); 
			   can_create_count++;
			   global.points--;
			  
			  
			   }
            
			// Create a new oEnemy instance to the left
			if(!place_meeting(x,y+64,oEnemy) and !place_meeting(x,y+64,oWall) and !place_meeting(x,y+64,oPlayer) and can_create){
				instance_create_layer(x,y+64,"Enemy",oEnemy);
				can_create_count++;
				global.points--;
				
				}
            
			// Create a new oEnemy instance below
            if(!place_meeting(x,y-64,oEnemy) and !place_meeting(x,y-64,oWall) and !place_meeting(x,y-64,oPlayer) and can_create){
				instance_create_layer(x,y-64,"Enemy",oEnemy);
				can_create_count++;
				global.points--;
				
				}
			 // Create a new oEnemy instance above
			 timer=600;
			 global.timeLeft = floor(timer/60) ;
        }
		else {
            can_create_count--;
			// Decrement count of oEnemy instances that can create new instances
			
        }
		 global.enemyCount++;
		
		
    }

	 // Check for level completion
    if (can_create_count == 0 && room !=StartScreen) {
		var target = Level_1;
		if(room = Level_1){
			target = LevelCleared1}
			else if (room = Level_2)
			{
				target = LevelCleared2
			}
			TransitionStart(target,sqFadeOut,sqFadein);
			
        // Trigger level complete event
        //show_debug_message("Level complete!");	
		//if(room_get_name(room)== "Level_1"){
		//room_goto(LevelCleared1);}
		//else{room_goto(LevelCleared2);}
		
    }
	global.isMoving = false;
	/*if(global.enemyCount >52){
		show_debug_message("Game Over");
		instance_create_layer(0,0,"Text",oGameOver)
		
		
	}*/
	if(global.points <= 10){
		TransitionStart(GameOver,sqFadeOut,sqFadein);
    //room_goto(GameOver);
	}
	
}
else {
		timer --;
		global.timeLeft = floor(timer/60);
	}
with(oEnemy)
{
	if(place_meeting(x+64, y, oPlayer) or place_meeting(x-64, y, oPlayer) 
	or place_meeting(x, y+64, oPlayer) or place_meeting(x, y-64, oPlayer)) {
    image_blend = c_purple;
    can_create = false;
	//image_index = 0;
	}
}

