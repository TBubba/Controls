///controls_get_control(id)
///return: control of controlbinding with given id (noone if not found)
//                    (This could be problematic if noone (-4) also is a vk_... or mb_...)
var cid;
cid = argument0;

// Get type
var control;
control = controls_cb_control[| cid];

// Return
if is_undefined(control) return noone; // noone if none was found (<undefined>)
return control;
