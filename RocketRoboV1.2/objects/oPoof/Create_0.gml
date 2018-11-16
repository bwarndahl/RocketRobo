/// @desc ?
var i;
for(i = 0; i < 4; i += 1)
{
	var xx, yy, obj, offset;
	offset = 42;
	xx = x + random_range(-offset,offset);
	yy = y + random_range(-offset,offset);
	
	if(irandom_range(0,1)) obj = oPoofM;
	else obj = oPoofS;
	
	with(instance_create_layer(xx,yy,"lEffects",obj)) image_speed = random_range(5,10);
}