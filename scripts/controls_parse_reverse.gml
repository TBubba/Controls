///controls_parse_reverse(control, type)
///return: key/mouse
var control, type;
control = argument0;
type = argument1;

// Keybaoard
if (type == C_TYPE.KEYBOARD)
{
    // Single character (A-Z, 0-9)
    if ((control >= 48) && (control <= 90))
        return chr(control);
    
    // Any vk_ (except for those with direct only)
    if (control == vk_nokey)
        return "vk_nokey";
    else if (control == vk_anykey)
        return "vk_anykey";
    else if (control == vk_left)
        return "vk_left";
    else if (control == vk_right)
        return "vk_right";
    else if (control == vk_up)
        return "vk_up";
    else if (control == vk_down)
        return "vk_down";
    else if (control == vk_enter)
        return "vk_enter";
    else if (control == vk_escape)
        return "vk_escape";
    else if (control == vk_space)
        return "vk_space";
    else if (control == vk_shift)
        return "vk_shift";
    else if (control == vk_control)
        return "vk_control";
    else if (control == vk_alt)
        return "vk_alt";
    else if (control == vk_backspace)
        return "vk_backspace";
    else if (control == vk_tab)
        return "vk_tab";
    else if (control == vk_home)
        return "vk_home";
    else if (control == vk_end)
        return "vk_end";
    else if (control == vk_delete)
        return "vk_delete";
    else if (control == vk_insert)
        return "vk_insert";
    else if (control == vk_pageup)
        return "vk_pageup";
    else if (control == vk_pagedown)
        return "vk_pagedown";
    else if (control == vk_pause)
        return "vk_pause";
    else if (control == vk_printscreen)
        return "vk_printscreen";
    else if (control == vk_f1)
        return "vk_f1";
    else if (control == vk_f2)
        return "vk_f2";
    else if (control == vk_f3)
        return "vk_f3";
    else if (control == vk_f4)
        return "vk_f4";
    else if (control == vk_f5)
        return "vk_f5";
    else if (control == vk_f6)
        return "vk_f6";
    else if (control == vk_f7)
        return "vk_f7";
    else if (control == vk_f8)
        return "vk_f8";
    else if (control == vk_f9)
        return "vk_f9";
    else if (control == vk_f10)
        return "vk_f10";
    else if (control == vk_f11)
        return "vk_f11";
    else if (control == vk_f12)
        return "vk_f12";
    else if (control == vk_numpad0)
        return "vk_numpad0";
    else if (control == vk_numpad1)
        return "vk_numpad1";
    else if (control == vk_numpad2)
        return "vk_numpad2";
    else if (control == vk_numpad3)
        return "vk_numpad3";
    else if (control == vk_numpad4)
        return "vk_numpad4";
    else if (control == vk_numpad5)
        return "vk_numpad5";
    else if (control == vk_numpad6)
        return "vk_numpad6";
    else if (control == vk_numpad7)
        return "vk_numpad7";
    else if (control == vk_numpad8)
        return "vk_numpad8";
    else if (control == vk_numpad9)
        return "vk_numpad9";
    else if (control == vk_multiply)
        return "vk_multiply";
    else if (control == vk_divide)
        return "vk_divide";
    else if (control == vk_add)
        return "vk_add";
    else if (control == vk_subtract)
        return "vk_subtract";
    else if (control == vk_decimal)
        return "vk_decimal";
}

// Keyboard Direct (Only)
if (type == C_TYPE.KEYBOARD_DIRECT)
{
    // Get control (if it uses keyboard_check_direct)
    if (control == vk_lshift)
        return "vk_lshift";
    else if (control == vk_lcontrol)
        return "vk_lcontrol";
    else if (control == vk_lalt)
        return "vk_lalt";
    else if (control == vk_rshift)
        return "vk_rshift";
    else if (control == vk_rcontrol)
        return "vk_rcontrol";
    else if (control == vk_ralt)
        return "vk_ralt";
}

// Mouse
if (type == C_TYPE.MOUSE)
{
    // Get control
    if (control == mb_any)
        return "mb_any";
    else if (control == mb_none)
        return "mb_none";
    else if (control == mb_left)
        return "mb_left";
    else if (control == mb_middle)
        return "mb_middle";
    else if (control == mb_right)
        return "mb_right";
}

// Mouse
if (type == C_TYPE.MOUSE_WHEEL)
{
    // Get control
    if (control == mw_up)
        return "mw_up";
    else if (control == mw_down)
        return "mw_down";
}
