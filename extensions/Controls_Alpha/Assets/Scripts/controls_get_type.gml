///controls_get_type(id)
///return: type of controlbinding with given id (noone if not found)
var cid;
cid = argument0;

// Get type
var type;
type = controls_cb_type[| cid];

// Return
if is_undefined(type) return noone; // (if none was found (<undefined>))
return type;
