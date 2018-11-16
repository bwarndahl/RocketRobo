if(Gstate = Gstates.ROCKET) || (Gstate = Gstates.RICOCHET)
{
	if(place_meeting(x+h, y+v, oParEnemy))
	{
		other.flash = 6;
		other.hp -= 1;

		other.eState = enemyStates.STUN;

		instance_create(x,y,oExplosion);
		with (oPlayer) alarm[other.alarm_respawn] = 60; ///Set Respawn
		instance_destroy();
	}
}