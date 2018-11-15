/// @description Movement & Projectile
switch (eState)
{
	case enemyStates.IDLE:
	break;
	
	case enemyStates.WANDER:
	break;
	
	case enemyStates.FOLLOW:
		if(!move_delay)
		{
			speed = spd;
			direction = dir;
			
			//can_shoot = true;
			//x = Approach(x,oPlayer.x,spd);
			//y = Approach(y,oPlayer.y,spd);
		}
		else speed = 0;

		shoot_delay = shoot_delay - 1;
		angle = point_direction(x,y,oPlayer.x,oPlayer.y);
	break;
		
	case enemyStates.STUN:
		y += Wave(-2,2, 0.1,0); // Shake
		
		stun_delay++;
		speed = 0;
		can_shoot = false;
		
		if(flash_set)
		{
			flash = 6;
			audio_play_sound(sfxEnemyHurt,3,false);
		}
		flash_set = false;
		
		var stun_time = 30;
		if(stun_delay >= stun_time)
		{
			alarm[0] = 1;
			can_shoot = true;
			stun_delay = 0;
			flash_set = true;
			
			eState = enemyStates.FOLLOW;
		}
		else flash_set = false;
	break;
	
	case enemyStates.ATTACK:
	break;
}