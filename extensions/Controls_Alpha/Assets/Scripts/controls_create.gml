///controls_create(name, control)
///return: id of the new controlbinding
// Creates a new controlbinding
var name, control;
name = argument0;
control = argument1;

// Get id
var cid = controls_newid;
controls_newid++;

// Set values of new controlbinding
ds_list_add(controls_cb_name, name);
ds_list_add(controls_cb_control, 0);
ds_list_add(controls_cb_type, 0);

//
controls_set_control(cid, control);

// Return
return cid;
