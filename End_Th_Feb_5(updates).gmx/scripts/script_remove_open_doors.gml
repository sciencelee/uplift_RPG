//goes through the open door lists and removes them from the room

for (i = 0; i < ds_list_size(global.open_door_list); i++)
{
    if (global.open_door_list[| i] == id){instance_destroy()};
}
