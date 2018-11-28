/// @desc ?
if(tState = timerStates.ON)
{
	seconds += 1/room_speed;
}
else if(tState = timerStates.RESET)
{
	seconds = 0;
	minutes = 0;
}

if(seconds == room_speed)
{
	seconds = 0;
	minutes += 1; 
}