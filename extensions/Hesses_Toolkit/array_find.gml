#define array_find
var array = argument0
var value = argument1

if (!is_array(array)) { return -1 }
var length = array_length(array);

for (var i = 0; i < length; i ++) {
    
    if (value = array[i]) { return i }
    
}

return -1