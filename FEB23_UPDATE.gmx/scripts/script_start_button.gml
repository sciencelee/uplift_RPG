// starts the game by going to world map


room_goto(room_world_map);
instance_create(100,100,object_player);

instance_create(0, 0, object_globals);
instance_create(0, 0, object_enemy_controller);
instance_create(0, 0, object_stats);
instance_create(0, 0, object_inventory_manager);
global.open_door_list = ds_list_create();
global.inventory_list = ds_list_create();
global.used_keys_list = ds_list_create();