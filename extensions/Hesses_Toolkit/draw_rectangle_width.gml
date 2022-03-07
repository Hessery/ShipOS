#define draw_rectangle_width
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var width = argument4;

draw_rectangle(x1, y1, x2, y2, true);
    
for (var i = 0; i < width / 2; i ++) {
    
    draw_rectangle(x1 + i, y1 + i, x2 - i, y2 - i, true);
    draw_rectangle(x1 - i, y1 - i, x2 + i, y2 + i, true);
    
}