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
    if (keyboard_check_direct(control)) // Check if control is down
    {
        var vk;
        if ((control == vk_lalt) || (control == vk_ralt)) vk = vk_alt;
        if ((control == vk_lcontrol) || (control == vk_rcontrol)) vk = vk_control;
        if ((control == vk_lshift) || (control == vk_rshift)) vk = vk_shift;
        pressed = keyboard_check_pressed(vk); // Check if left/right of conctrol is pressed
    }
    else pressed = false;
}

// Return
return pressed;
