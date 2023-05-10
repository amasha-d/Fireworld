// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouseGetID(){
with(oPlayer)
{
	
	var getId =position_meeting(mouse_x,mouse_y,id)
	#region storing the id of the object that is selectable on left click
	if (getId){
		if(g.leftClick){
			if(!g.coolDown && g.heldId ==-1 && !variable_instance_exists(id,"dontSelectMe")){
				g.heldId=id;
				g.coolDown= true;
			}
		}
	}
	#endregion
		
		
	#region opacity effect
	if(g.heldId !=-1){
		if(id !=g.heldId){
			image_alpha = lerp(image_alpha, 0.3, 1);
		}
	}
	else
	{
		image_alpha =lerp(image_alpha,1,1);
	}
	
	#endregion
}

#region
if(g.heldId !=-1){
	g.heldId.x = mouse_x;
	g.heldId.y = mouse_y;
	g.clicks +=g.leftClick;
}

#endregion

#region

if(g.coolDown && g.clicks>=2){
	g.heldId=-1;
	if(!alarm[0]){
		alarm[0] =2;
	}
	g.clicks =0;
}

#endregion
}