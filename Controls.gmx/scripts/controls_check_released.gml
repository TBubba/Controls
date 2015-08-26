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
if (type == C_TYPE.MOUSE)
{
    released = mouse_check_button_released(control);
}
else if (type == C_TYPE.KEYBOARD)
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
    
    /*
    if (!keyboard_check_direct(control)) // Check if control is up
    {
        var vk;
        if ((control == vk_lalt) || (control == vk_ralt)) vk = vk_alt;
        if ((control == vk_lcontrol) || (control == vk_rcontrol)) vk = vk_control;
        if ((control == vk_lshift) || (control == vk_rshift)) vk = vk_shift;
        released = keyboard_check_released(vk); // Check if left/right of conctrol is released
    }
    else released = false;
    */
}

// Return
return released;
