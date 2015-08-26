///controls_get_id(name)
///return: id of controlbinding with given name (-1 if not found)
var name;
name = argument0;

// Get name
return ds_list_find_index(controls_cb_name, name);
