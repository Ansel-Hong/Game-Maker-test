//movement
if(keyboard_check(ord("D"))) x = x + 4;
if(keyboard_check(ord("A"))) x = x - 4;
if(keyboard_check(ord("S"))) y = y + 4;
if(keyboard_check(ord("W"))) y = y - 4;
//mouse direction
image_angle = point_direction(x,y,mouse_x,mouse_y);

//shoot small
if(mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"BulletLayer",obj_bullet);
	cooldown = 5;
} 

//shoot big
if(keyboard_check(ord("F"))) && (bigCooldown < 1)
{
	instance_create_layer(x,y,"BulletLayer",obj_bigbullet);
	bigCooldown = 50;
} 

cooldown = cooldown - 1;
bigCooldown = bigCooldown - 1;
