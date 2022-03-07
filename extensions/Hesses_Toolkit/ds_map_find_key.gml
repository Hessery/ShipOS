#define ds_map_find_key
var _id = argument0;
var value = argument1;

var search_key = ds_map_find_first(_id);

while (search_key != ds_map_find_last(_id)) {
    
    if (_id[? search_key] = value) { return search_key }
    search_key = ds_map_find_next(_id, search_key);

}