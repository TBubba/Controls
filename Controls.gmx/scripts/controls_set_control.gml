///controls_set_control(id, control)
///return: N/A
// Parses the control and sets the control and type (to set only one of them, you have to do it manually - sorry)
var cid, control;
cid = argument0;
control = argument1;

// Parse control
var ct;
ct = controls_parse(control);

// Set control and type
controls_cb_control[| cid] = ct[0];
controls_cb_type[| cid] = ct[1];
