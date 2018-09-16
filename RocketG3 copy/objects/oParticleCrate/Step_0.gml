// Fade slowly
image_alpha -= 0.05;

// Destroy after faded
if (image_alpha <= 0)
    instance_destroy();

