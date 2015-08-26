///controls_state_update(down, old_state)
///return: new state based on old_state, but with down applied
var down, old_state;
down = argument0;
old_state = argument1;

//
var new_state;
if (down)
{
    if ((old_state == C_STATE.UP) || (old_state == C_STATE.RELEASED))
        return C_STATE.PRESSED;
    //if (old_state == C_STATE.PRESSED)
    //    return C_STATE.DOWN;
    return C_STATE.DOWN;
}
else
{
    if ((old_state == C_STATE.PRESSED) || (old_state == C_STATE.DOWN))
        return C_STATE.RELEASED;
    //if (old_state == C_STATE.RELEASED)
    //    return C_STATE.UP;
    return C_STATE.UP;
}
