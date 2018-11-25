/// @desc Death
if(hp <= 0) && (eState != enemyStates.STUN)
{
	instance_create_layer(x,y,"lEffects",oPoof);
	CreateParticles(6,x,y,0,360);
	instance_destroy();
}
