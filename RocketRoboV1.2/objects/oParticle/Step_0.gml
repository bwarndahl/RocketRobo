// Fade slowly
count++
if (count > 3) image_alpha -= 0.05;

// Destroy after faded
if (image_alpha <= 0)
    instance_destroy();

