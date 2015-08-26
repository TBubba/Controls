///controls_get_name(id)
///return: name of controlbinding with given id (noone if not found)
var cid;
cid = argument0;

// Get name
var name;
name = ds_list_find_value(controls_cb_name, cid);

// Return
if is_undefined(name) return noone; // Noone if none was found (<undefined>)
return name;
