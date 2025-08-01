// Init the timer
if (runonce1 == 0) {
    timer2 = (spd - timeleft);  // time until particle becomes alive
}
runonce1 = 1;   // Turn off the runonce1 variable

if (timer2 < 0) {

    // Init some of the calculations
    if (runonce == 0) {
        // Calculate the correct speed for the distance needed to travel
        var dist = point_distance(x,y,end_x, end_y);
        distance_speed = (dist / timeleft);
        move_towards_point(end_x, end_y, distance_speed);
        
        // Calculate the rotate speed for the particle rotation to equal 0 at the end of the timeleft
        rotate_speed = (rotate / timeleft);
        
        // Calculate the alpha speed for the particle to be visible at the end of the time left.
        alpha_speed = (1 / timeleft);
    }
    runonce = 1;    // Turn off the runonce
    
    // If the particle is close to the end position, snap it to the end position and set speed to 0
    if (point_distance(x,y, end_x, end_y) < distance_speed) {
        speed = 0;
        x = end_x;
        y = end_y;
    }
    
    // If the time is up, delete all of the particles and create the player
    if (timer >= spd) {
        instance_create(obj_end_x, obj_end_y, obj);     // Create player
        with (obj_asymble_particle) instance_destroy(); // Destroy remaining particles
    } else {
        timer++; // Increment timer
    }
    
    // Add to the rotation
    rotation = rotation - rotate_speed;
    
    // Add to the alpha
    alpha = alpha + alpha_speed;
    
} else {
    timer2--;
}

