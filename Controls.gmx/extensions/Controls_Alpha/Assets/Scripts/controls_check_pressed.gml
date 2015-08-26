///controls_check_pressed(id)
///return: whether or not the control (button or key) is currently pressed (noone if controlbinding not found)
// Checks if the button/key is currently pressed
var cid;
cid = argument0;

// Get controlbinding
var type, control;
type = controls_get_type(cid);
control = controls_get_control(cid);

// Check if controlbinding was not found
if ((type == noone) || (control == noone)) return noone;

// Check control
var pressed;
if (type == C_TYPE.MOUSE)
{
    pressed = mouse_check_button_pressed(control);
}
else if (type == C_TYPE.KEYBOARD)
{
    pressed = keyboard_check_pressed(control);
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
    
    if (r == C_STATE.PRESSED)
        pressed = true;
    else
        pressed = false;
    
    /*
    if (keyboard_check_direct(control)) // Check if control is down
    {
        var vk;
        if ((control == vk_lalt) || (control == vk_ralt)) vk = vk_alt;
        if ((control == vk_lcontrol) || (control == vk_rcontrol)) vk = vk_control;
        if ((control == vk_lshift) || (control == vk_rshift)) vk = vk_shift;
        pressed = keyboard_check_pressed(vk); // Check if left/right of conctrol is pressed
    }
    else pressed = false;
    */
}

// Return
return pressed;
