///controls_check_name(name)
///return: whether or not the control (button or key) is currently down (noone if controlbinding not found)
// Checks if the button/key is currently held down
//
// NOTE: This function just finds the id and calls controls_check
var name;
name = argument0;

// Find controlbinding id
var cid;
cid = controls_find_id(name);

// Call the check function (and return its results)
return controls_check(cid);
