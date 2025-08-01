if (keyboard_check_pressed(ord("Q"))) spd++;
if (keyboard_check_pressed(ord("A"))) spd--;

if (keyboard_check_pressed(ord("W"))) radius += 10;
if (keyboard_check_pressed(ord("S"))) radius -= 10;

if (keyboard_check_pressed(ord("E"))) chunk_size++;
if (keyboard_check_pressed(ord("D"))) chunk_size--;

if (chunk_size <= 5) chunk_size = 5;
if (spd <= 5) spd = 5;
if (radius <= 10) radius = 10;

