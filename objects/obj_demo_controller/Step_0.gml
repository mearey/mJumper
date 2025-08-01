if (keyboard_check_pressed(ord("Q"))) max_life++;
if (keyboard_check_pressed(ord("A"))) max_life--;

if (keyboard_check_pressed(ord("W"))) min_life++;
if (keyboard_check_pressed(ord("S"))) min_life--;

if (keyboard_check_pressed(ord("E"))) max_speed++;
if (keyboard_check_pressed(ord("D"))) max_speed--;

if (keyboard_check_pressed(ord("R"))) min_speed++;
if (keyboard_check_pressed(ord("F"))) min_speed--;

if (keyboard_check_pressed(ord("T"))) max_peice_size++;
if (keyboard_check_pressed(ord("G"))) max_peice_size--;

if (keyboard_check_pressed(ord("Y"))) min_peice_size++;
if (keyboard_check_pressed(ord("H"))) min_peice_size--;

if (keyboard_check_pressed(ord("U"))) spin++;
if (keyboard_check_pressed(ord("J"))) spin--;

if (keyboard_check_pressed(ord("I"))) fade++;
if (keyboard_check_pressed(ord("K"))) fade--;

if (keyboard_check_pressed(ord("O"))) fade_amt += 0.01;
if (keyboard_check_pressed(ord("L"))) fade_amt -= 0.01;

if (keyboard_check_pressed(ord("Z"))) fade_to_color++;
if (keyboard_check_pressed(ord("X"))) fade_to_color--;

if (keyboard_check_pressed(ord("C"))) end_color++;
if (keyboard_check_pressed(ord("V"))) end_color--;

if (keyboard_check_pressed(ord("B"))) color_fade_speed += 0.01;
if (keyboard_check_pressed(ord("N"))) color_fade_speed -= 0.01;

if (keyboard_check_pressed(ord("M"))) {
    implode *= -1;
} 


// END COLOR
if (end_color == 0) end_color_display = c_white;
if (end_color == 1) end_color_display = c_aqua;
if (end_color == 2) end_color_display = c_black;
if (end_color == 3) end_color_display = c_blue;
if (end_color == 4) end_color_display = c_dkgray;
if (end_color == 5) end_color_display = c_fuchsia;
if (end_color == 6) end_color_display = c_gray;
if (end_color == 7) end_color_display = c_green;
if (end_color == 8) end_color_display = c_lime;
if (end_color == 9) end_color_display = c_ltgray;
if (end_color == 10) end_color_display = c_maroon;
if (end_color == 11) end_color_display = c_navy;
if (end_color == 12) end_color_display = c_olive;
if (end_color == 13) end_color_display = c_orange;
if (end_color == 14) end_color_display = c_purple;
if (end_color == 15) end_color_display = c_red;
if (end_color == 16) end_color_display = c_silver;
if (end_color == 17) end_color_display = c_teal;
if (end_color == 18) end_color_display = c_yellow;


// Capping
if (fade_to_color > 1) fade_to_color = 1;
if (fade_to_color < 0) fade_to_color = 0;

if (fade > 1) fade = 1;
if (fade < 0) fade = 0;

if (max_life < 0) max_life = 0;
if (min_life < 0) min_life = 0;

if (max_peice_size < 5) max_peice_size = 5;
if (min_peice_size < 5) min_peice_size = 5;

if (end_color < 0) end_color = 0;
if (end_color > 18) end_color = 18;

if (fade_amt < 0) fade_amt = 0;
if (color_fade_speed < 0) color_fade_speed = 0;

