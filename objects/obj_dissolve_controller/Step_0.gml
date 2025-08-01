if (keyboard_check_pressed(ord("Q"))) dir++;
if (keyboard_check_pressed(ord("A"))) dir--;

if (keyboard_check_pressed(ord("W"))) dissolve_speed++;
if (keyboard_check_pressed(ord("S"))) dissolve_speed--;

if (keyboard_check_pressed(ord("E"))) chunk_size++;
if (keyboard_check_pressed(ord("D"))) chunk_size--;

if (keyboard_check_pressed(ord("R"))) shrink++;
if (keyboard_check_pressed(ord("F"))) shrink--;

if (keyboard_check_pressed(ord("T"))) shrink_amt += 0.01;
if (keyboard_check_pressed(ord("G"))) shrink_amt -= 0.01;

if (keyboard_check_pressed(ord("Y"))) grav++;
if (keyboard_check_pressed(ord("H"))) grav--;

if (keyboard_check_pressed(ord("U"))) fade++;
if (keyboard_check_pressed(ord("J"))) fade--;

if (keyboard_check_pressed(ord("I"))) fade_amt += 0.01;
if (keyboard_check_pressed(ord("K"))) fade_amt -= 0.01;

if (keyboard_check_pressed(ord("O"))) spin += 1;
if (keyboard_check_pressed(ord("L"))) spin -= 1;

if (keyboard_check_pressed(ord("Z"))) life += 1;
if (keyboard_check_pressed(ord("X"))) life -= 1;

if (chunk_size <= 5) chunk_size = 5;

if (dir <= 0) dir = 0;
if (dir >= 3) dir = 3;

if (fade >= 1) fade = 1;
if (fade <= 0) fade = 0;

if (shrink >= 1) shrink = 1;
if (shrink <= 0) shrink = 0;

