///controls_check_released(id)
///return: whether or not the control (button or key) is currently released (noone if controlbinding not found)
// Checks if the button/key is currently released
var cid;
cid = argument0;

// Get controlbinding
var type, control;
type = controls_get_type(cid);
control = controls_get_control(cid);

// Check if controlbinding was not found
if ((type == noone) || (control == noone)) return noone;

// Check control
var released;
if (type == C_TYPE.KEYBOARD)
{
    released = keyboard_check_released(control);
}
else if (type == C_TYPE.KEYBOARD_DIRECT)
{
    var r;
    if (control == vk_lalt) r = controls_keydir_lalt;
    if (control == vk_ralt) r = controls_keydir_ralt;
    if (control == vk_lcontrol) r = controls_keydir_lcontrol;
    if (control == vk_rcontrol) r = controls_keydir_rcontrol;
    if (control == vk_lshift) r = controls_keydir_lshift;
    if (control == vk_rshift) r = controls_keydir_rshift;
    
    if (r == C_STATE.RELEASED)
        released = true;
    else
        released = false;
}
else if (type == C_TYPE.MOUSE)
{
    released = mouse_check_button_released(control);
}
else if (type == C_TYPE.MOUSE_WHEEL)
{
    var r;
    if (control == mw_up) r = controls_buffer_mw_up;
    if (control == mw_down) r = controls_buffer_mw_down;
    
    if (r == C_STATE.RELEASED)
        released = true;
    else
        released = false;
}

// Return
return released;
