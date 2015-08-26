///controls_check_released_name(name)
///return: whether or not the control (button or key) is currently released (noone if controlbinding not found)
// Checks if the button/key is currently released
//
// NOTE: This function just finds the id and calls controls_check_released
var name;
name = argument0;

// Find controlbinding id
var cid;
cid = controls_find_id(name);

// Call the check function (and return its results)
return controls_check_released(cid);
