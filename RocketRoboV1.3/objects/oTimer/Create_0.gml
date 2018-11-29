/// @desc States, Variables
enum timerStates
{
	COUNTDOWN,
	ON,
	OFF,
	RESET
}
tState = timerStates.OFF;

//Countdown Variables
frame = 0;

init_scale = 50;
scale = init_scale;
temp_scale = init_scale/5;

alpha = 1;

alarmSet = false;