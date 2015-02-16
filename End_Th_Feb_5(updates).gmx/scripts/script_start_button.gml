// starts the game by going to world map

global.restarting = true;
room_goto(room_world_map);
instance_create(100,100,object_player);
