/// @desc ?
wave = Wave(-5,5,dur,0)
if(collision_circle(x,y,r + wave, oPlayer,false,false))
{
	collide = true;
	oPlayer.grav = 0.1;
}
else
{
	collide = false;
}

 if (collide != oldCollide)
 {
	oPlayer.grav = 0.5;
 }

oldCollide = collide;
/*
else if(!collision_circle(x,y,r + wave, oPlayer,false,false))
{
	oPlayer.gravFall  = oldgravFall;
	oPlayer.gravRise  = oldgravRise;
	oPlayer.gravSlide = oldgravSlide;
}
*/
