var diag; //Largest distance from edge of screen to player. 

enum TRANSITION
{
	SHRINK,
	GROW,
	NONE
}

mode = TRANSITION.NONE;

grow = 0;
shrink = 0;

rate = 10;
rate2 = 20;

sizeFix = 10;
sizeFix2 = 150;