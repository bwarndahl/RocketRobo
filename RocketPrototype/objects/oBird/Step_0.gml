/// Flying in the background
x+=1;
if(x > room_width + sprite_width/2)
{
	x = 0 - sprite_width/2;	
	y = random_range(255,815);
}