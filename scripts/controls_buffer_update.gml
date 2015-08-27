///controls_buffer_update()
///return: N/A
// Updates the control-binding buffer (currently for some controls only - could expand to all types if there is interest)
// 
// NOTE: Call this before calling any of the "check" functions (every step)

// Keyboard_direct (only)
controls_keydir_lalt     = controls_state_update(keyboard_check_direct(vk_lalt), controls_keydir_lalt);
controls_keydir_ralt     = controls_state_update(keyboard_check_direct(vk_ralt), controls_keydir_ralt);
controls_keydir_lcontrol = controls_state_update(keyboard_check_direct(vk_lcontrol), controls_keydir_lcontrol);
controls_keydir_rcontrol = controls_state_update(keyboard_check_direct(vk_rcontrol), controls_keydir_rcontrol);
controls_keydir_lshift   = controls_state_update(keyboard_check_direct(vk_lshift), controls_keydir_lshift);
controls_keydir_rshift   = controls_state_update(keyboard_check_direct(vk_rshift), controls_keydir_rshift);

// Mousewheel
controls_buffer_mw_up   = controls_state_update(mouse_wheel_up(), controls_buffer_mw_up);
controls_buffer_mw_down = controls_state_update(mouse_wheel_down(), controls_buffer_mw_down);
