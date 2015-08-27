///controls_check(id)
///return: whether or not the control (button or key) is currently down (noone if controlbinding not found)
// Checks if the button/key is currently held down
var cid;
cid = argument0;

// Get controlbinding
var type, control;
type = controls_get_type(cid);
control = controls_get_control(cid);

// Check if controlbinding was not found
if ((type == noone) || (control == noone)) return noone;

// Check control
var down;
if (type == C_TYPE.KEYBOARD)
{
    down = keyboard_check(control);
}
else if (type == C_TYPE.KEYBOARD_DIRECT)
{
    down = keyboard_check_direct(control);
}
else if (type == C_TYPE.MOUSE)
{
    down = mouse_check_button(control);
}
else if (type == C_TYPE.MOUSE_WHEEL)
{
    var d;
    if (control == mw_up) d = controls_buffer_mw_up;
    if (control == mw_down) d = controls_buffer_mw_down;
    
    if ((d == C_STATE.PRESSED) || (d == C_STATE.DOWN))
        down = true;
    else
        down = false;
}

// Return
return down;
