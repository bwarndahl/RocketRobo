oGame.defaultx = oPosition.x;
oGame.defaulty = oPosition.y;
global.xPos = oGame.defaultx;
global.yPos = oGame.defaulty; 
instance_create_layer(oGame.defaultx,oGame.defaulty, "lPlayer", oPlayer);
SaveGame();