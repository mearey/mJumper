/// @description Insert description here
// You can write your code in this editor
var mult = 1;
if (Player.y < 0) {
    mult = max(exp(Player.y / 3000), 0.1);
}
// Define colors and points, matching their intended progression
var colors = [c_yellow,c_aqua,c_lime,c_white];
var points_array = [8, 4, 2, 1];

var mult1 = mult*1.5 // this defines how long it takes for other colours to spawn

// Compute weights: white => low mult, yellow => high mult
var w_white  = clamp(1.0 - (mult1 - 0.1) / 0.3, 0, 1);
var w_green  = clamp((mult1 - 0.1) / 0.3, 0, 1) * clamp(1.0 - (mult1 - 0.4) / 0.2, 0, 1);
var w_aqua   = clamp((mult1 - 0.4) / 0.2, 0, 1) * clamp(1.0 - (mult1 - 0.6) / 0.2, 0, 1);
var w_yellow = clamp((mult1 - 0.6) / 0.4, 0, 1);

// Normalize weights
var w_total = w_white + w_green + w_aqua + w_yellow;
w_white  /= w_total;
w_green  /= w_total;
w_aqua   /= w_total;
w_yellow /= w_total;

// Weighted random selection
var r = random(1);
var color_index;
if      (r < w_white)                 color_index = 0;
else if (r < w_white + w_green)       color_index = 1;
else if (r < w_white + w_green + w_aqua) color_index = 2;
else                                  color_index = 3;

var color  = colors[color_index];
var points = points_array[color_index];

// Now use these in your instance create:
if (random(1) < 0.05 * global.world_speed * mult) {
    instance_create_depth(
        random_range(8, room_width - 8),
        camera_get_view_y(globals.cam) - 8,
        Player.depth + 1,
        Particle,
        {image_blend: color, points: points}
    );
}