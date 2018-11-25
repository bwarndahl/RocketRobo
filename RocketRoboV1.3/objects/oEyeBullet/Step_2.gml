/// @desc Trail
var xx,yy,jitter;
jitter = 3;
var xx = x + random_range(0,jitter);
var yy = y + random_range(0,jitter);
instance_create_layer(xx,yy,"lEyeTrail",oEyeTrail);

