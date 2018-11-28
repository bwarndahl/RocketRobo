/// @desc Toggle Timer
if(tState = timerStates.OFF) tState = timerStates.COUNTDOWN;
else if (tState = timerStates.ON) tState = timerStates.RESET;
else tState = timerStates.OFF;