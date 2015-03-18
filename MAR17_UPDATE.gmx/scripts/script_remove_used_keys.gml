//goes through the open door lists and removes them from the room

for (i = 0; i < ds_list_size(global.used_keys_list); i++)
{
    if (global.used_keys_list[| i] == id){instance_destroy()};
}