///controls_init()
///return: N/A
// Creates everything needed

// Constants (these are not actual contstants - they can be changed)
globalvar mw_up, mw_down;
mw_up = 0; // Like "mb_"/"vk_" but for mousewheel (not an enum to fit better with the others)
mw_down = 1;

// Enums
enum C_TYPE { // Control Type
    KEYBOARD = 0,
    KEYBOARD_DIRECT = 1, // keys that can only use keyboard_check_direct (fix)
    MOUSE = 2,
    MOUSE_WHEEL = 3 // custom (mousewheel up/down only)
}
enum C_STATE { // Control State
    UP = 0,
    RELEASED = 1,
    PRESSED = 2,
    DOWN = 3
}

// Control-Bindings
globalvar controls_newid, controls_cb_name, controls_cb_control, controls_cb_type;

controls_newid = 0; // The id of the next controlbinding added

controls_cb_name = ds_list_create();    // Name    - user friendly labeling of controlbindings
controls_cb_control = ds_list_create();  // Control - id of key/button set by GameMaker
controls_cb_type = ds_list_create();     // Type    - type of input device the control is for (mouse/keyboard)

// Keyboard_Direct Only fix (buffer)
//     (Some keys can only be checked with "keyboard_check_direct" which creates inconsistency - therefore this fix)
globalvar controls_keydir_lalt, controls_keydir_ralt, controls_keydir_lcontrol, controls_keydir_rcontrol, controls_keydir_lshift, controls_keydir_rshift;
controls_keydir_lalt     = C_STATE.UP;
controls_keydir_ralt     = C_STATE.UP;
controls_keydir_lcontrol = C_STATE.UP;
controls_keydir_rcontrol = C_STATE.UP;
controls_keydir_lshift   = C_STATE.UP;
controls_keydir_rshift   = C_STATE.UP;

// Mousewheel buffer
globalvar controls_buffer_mw_up, controls_buffer_mw_down;
controls_buffer_mw_up   = C_STATE.UP;
controls_buffer_mw_down = C_STATE.UP;
