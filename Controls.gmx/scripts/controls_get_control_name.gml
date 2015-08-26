///controls_get_control_name(id)
///return: name of control of controlbinding with given id (reverse parsed)
var cid;
cid = argument0;

// Get control and type (and reverse parse name from them)
var name;
name = controls_parse_reverse(controls_cb_control[| cid], controls_cb_type[| cid]);

// Return
return name;
