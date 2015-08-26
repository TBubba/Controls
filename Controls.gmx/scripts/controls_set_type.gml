///controls_set_type(id, value)
///return: N/A
var cid, value;
cid = argument0;
value = argument1;

// Set value
ds_list_replace(controls_cb_type, cid, value)
