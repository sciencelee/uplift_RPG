// Create local variable which will be ID of button instance
var obj_new_button;

// argument0 is x position, argument1 is y
obj_new_button = instance_create(argument0, argument1, obj_button);

// argument2 will be the display text
obj_new_button.str_text = argument2;

// argument3 through argument 6 will be the script IDs
obj_new_button.scripts[ev_left_button] = argument3;
obj_new_button.scripts[ev_left_press] = argument4;
obj_new_button.scripts[ev_left_release] = argument5;
obj_new_button.scripts[ev_mouse_enter] = argument6;

// The new button is returned
return obj_new_button;