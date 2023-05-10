/// @description Insert description here
// You can write your code in this editor
if (isSelected){
if (!place_meeting(x, y+64, oEnemy) and !place_meeting(x,y+64,oWall))
{
y+= 64;
global.isMoving = true;
}
}