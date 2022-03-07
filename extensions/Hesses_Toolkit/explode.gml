#define explode
var st = argument0;
var delimiter = argument1;

var arr;
var del = delimiter;
var str = st + del;
var len = string_length(del);
var ind = 0;

repeat (string_count(del, str)) {
    
    var pos = string_pos(del, str) - 1;
    arr[ind] = string_copy(str, 1, pos);
    str = string_delete(str, 1, pos + len);
    ind++;
    
}

return arr;