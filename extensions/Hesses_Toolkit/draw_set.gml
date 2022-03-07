#define draw_set
var style_array = argument0;

var input  = [-1, -1, -1, -1, -1];
var output = [-1, -1, -1, -1, -1];

array_copy(input, 0, style_array, 0, 5);

utput[0] = draw_get_colour();
output[1] = draw_get_alpha();
output[2] = draw_get_font();
output[3] = draw_get_halign();
output[4] = draw_get_valign();

if (input[0] != -1) { draw_set_colour(input[0]) };
if (input[1] != -1) { draw_set_alpha(input[1]) };
if (input[2] != -1) { draw_set_font(input[2]) };
if (input[3] != -1) { draw_set_halign(input[3]) };
if (input[4] != -1) { draw_set_valign(input[4]) };

return output