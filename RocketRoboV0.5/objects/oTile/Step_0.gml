//If we have reached the end of our sprite sheet
if (image_index > image_number-1)
{
    //Pause animation
    image_speed = 0;
    //Start timer
    timer++;
    if (timer > 40)
    {
        //Begin playing animation backwards
        image_speed = -0.3;
        timer = 0;
    }
}

//If animation is being played backwards
if (sign(image_speed) == -1)
{
    //If we are on the first frame of the animation
    if (round(image_index) == 0)
    {
        //Destroy this object
        instance_destroy();
    }
}

