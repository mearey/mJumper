// Dissolve the particle
if (timer1 <= 0) { 
    // Life
    if (life <= 0) {
        instance_destroy();
    } else {
        life--;
    }
    
    // Move the particle
    direction = random(360);
    speed = random(5);
    motion_set(direction,speed);
    
    // Give particle gravity
    y -= grav;
    depth = -y;
    
    // Rotate the particle
    rotation -= random(rotate_speed);
    
    // Fade the particle
    if (fadeon == 1) {
        alpha -= random_range(-0.01, fade_amt);
        if (alpha <= 0) instance_destroy();
    }
    
    // Shrink
    if (shrinkon == 1) {
        var shrinkamt = random_range(-0.01,shrink_amt);
        scale -= shrinkamt;
        if (scale <= 0) instance_destroy();
    }
} else {
    timer1--;
}

