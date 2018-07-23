/// @desc Ricochet
if(!isOpen) && (other.isActive)
{
	other.Gstate = Gstates.RICOCHET
	isOpen = true;
	other.alarm[0] = other.delay;
}