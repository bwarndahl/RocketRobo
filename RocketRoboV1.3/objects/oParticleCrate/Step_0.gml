if(fade)
{
	// Fade slowly
	image_alpha -= 0.1;

	// Destroy after faded
	if (image_alpha <= 0) instance_destroy();
}

// Gravity
image_angle += 20;

x += h;
h = Approach(h,0,hfric);

y -= v;
v = Approach(v,grav,fric)


if(y > room_height + 36) instance_destroy();