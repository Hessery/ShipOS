log_draw();

var map = ds_map_create();

map[? "one"] = 1;
map[? "two"] = 2;
map[? "three"] = 3;

draw_text(0, 0, ds_map_find_key(map, 3))

ds_map_destroy(map);