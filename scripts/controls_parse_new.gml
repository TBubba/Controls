///controls_parse(control)
///return: array with control and type of entered control ([0] control, [1] type)
var control;
control = argument0;

//
var ret;
ret[0] = noone;
ret[1] = noone;

// Single character
if (string_length(control) == 1)
{
    //
    ret[0] = ord(string_upper(string(control)));
    ret[1] = C_TYPE.KEYBOARD;
    return ret;
}

// Mouse
if (string_copy(control, 0, 3) == "mb_")
{
    // Set type as mouse
    ret[1] = C_TYPE.MOUSE;
    
    // Get control
    if (control == "mb_any")
        ret[0] = mb_any;
    else if (control == "mb_none")
        ret[0] = mb_none;
    else if (control == "mb_left")
        ret[0] = mb_left;
    else if (control == "mb_middle")
        ret[0] = mb_middle;
    else if (control == "mb_right")
        ret[0] = mb_right;
        
    // Return
    return ret;
}

// Keyboard
if (string_copy(control, 0, 3) == "vk_")
{
    // Get control (if it uses keyboard_check_direct)
    if (control == "vk_lshift")
        ret[0] = vk_lshift;
    else if (control == "vk_lcontrol")
        ret[0] = vk_lcontrol;
    else if (control == "vk_lalt")
        ret[0] = vk_lalt;
    else if (control == "vk_rshift")
        ret[0] = vk_rshift;
    else if (control == "vk_rcontrol")
        ret[0] = vk_rcontrol;
    else if (control == "vk_ralt")
        ret[0] = vk_ralt;
        
    if (ret[0] != noone)
    {
        // Set type as keyboard direct
        ret[1] = C_TYPE.KEYBOARD_DIRECT;
        return ret;
    }
    
    // Set type as keyboard
    ret[1] = C_TYPE.KEYBOARD;
    
    // Get control
    if (control == "vk_nokey")
        ret[0] = vk_nokey;
    else if (control == "vk_anykey")
        ret[0] = vk_anykey;
    else if (control == "vk_left")
        ret[0] = vk_left;
    else if (control == "vk_right")
        ret[0] = vk_right;
    else if (control == "vk_up")
        ret[0] = vk_up;
    else if (control == "vk_down")
        ret[0] = vk_down;
    else if (control == "vk_enter")
        ret[0] = vk_enter;
    else if (control == "vk_escape")
        ret[0] = vk_escape;
    else if (control == "vk_space")
        ret[0] = vk_space;
    else if (control == "vk_shift")
        ret[0] = vk_shift;
    else if (control == "vk_control")
        ret[0] = vk_control;
    else if (control == "vk_alt")
        ret[0] = vk_alt;
    else if (control == "vk_backspace")
        ret[0] = vk_backspace;
    else if (control == "vk_tab")
        ret[0] = vk_tab;
    else if (control == "vk_home")
        ret[0] = vk_home;
    else if (control == "vk_end")
        ret[0] = vk_end;
    else if (control == "vk_delete")
        ret[0] = vk_delete;
    else if (control == "vk_insert")
        ret[0] = vk_insert;
    else if (control == "vk_pageup")
        ret[0] = vk_pageup;
    else if (control == "vk_pagedown")
        ret[0] = vk_pagedown;
    else if (control == "vk_pause")
        ret[0] = vk_pause;
    else if (control == "vk_printscreen")
        ret[0] = vk_printscreen;
    else if (control == "vk_f1")
        ret[0] = vk_f1;
    else if (control == "vk_f2")
        ret[0] = vk_f2;
    else if (control == "vk_f3")
        ret[0] = vk_f3;
    else if (control == "vk_f4")
        ret[0] = vk_f4;
    else if (control == "vk_f5")
        ret[0] = vk_f5;
    else if (control == "vk_f6")
        ret[0] = vk_f6;
    else if (control == "vk_f7")
        ret[0] = vk_f7;
    else if (control == "vk_f8")
        ret[0] = vk_f8;
    else if (control == "vk_f9")
        ret[0] = vk_f9;
    else if (control == "vk_f10")
        ret[0] = vk_f10;
    else if (control == "vk_f11")
        ret[0] = vk_f11;
    else if (control == "vk_f12")
        ret[0] = vk_f12;
    else if (control == "vk_numpad0")
        ret[0] = vk_numpad0;
    else if (control == "vk_numpad1")
        ret[0] = vk_numpad1;
    else if (control == "vk_numpad2")
        ret[0] = vk_numpad2;
    else if (control == "vk_numpad3")
        ret[0] = vk_numpad3;
    else if (control == "vk_numpad4")
        ret[0] = vk_numpad4;
    else if (control == "vk_numpad5")
        ret[0] = vk_numpad5;
    else if (control == "vk_numpad6")
        ret[0] = vk_numpad6;
    else if (control == "vk_numpad7")
        ret[0] = vk_numpad7;
    else if (control == "vk_numpad8")
        ret[0] = vk_numpad8;
    else if (control == "vk_numpad9")
        ret[0] = vk_numpad9;
    else if (control == "vk_multiply")
        ret[0] = vk_multiply;
    else if (control == "vk_divide")
        ret[0] = vk_divide;
    else if (control == "vk_add")
        ret[0] = vk_add;
    else if (control == "vk_subtract")
        ret[0] = vk_subtract;
    else if (control == "vk_decimal")
        ret[0] = vk_decimal;
        
    // Return
    return ret;
}
