if(!instance_exists(oGame))
{
	instance_create_layer(0,0,"lGame",oGame);	
}

if(!instance_exists(oTransition))
{
	instance_create_depth(0,0,-999,oTransition);	
}

oGame.gameState = gameStates.PLAY;
SaveGame();