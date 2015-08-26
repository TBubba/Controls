///controls_find_id(name)
///return: id of controlbinding with given name (noone if not found)
var name;
name = argument0;

// Find id
var i, length;
length = controls_newid;
for (i = 0; i < length; i++)
{
    if (controls_cb_name[| i] == name)
        return i;
}

// Return
return noone; // (sice if it was found it would have returned earlier)
