/// @description Insert description here
// You can write your code in this editor
if (isSelected){
if (!place_meeting(x+64, y, oEnemy) and !place_meeting(x+64,y,oWall))
{
x +=64;
global.isMoving = true;
}
}