///controls_set_name(id, name)
///return: N/A
var cid, name;
cid = argument0;
name = argument1;

// Set value
ds_list_replace(controls_cb_name, cid, name);
