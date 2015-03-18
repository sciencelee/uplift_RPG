// starts the game by going to world map


room_goto(room_world_map);
instance_create(100,100,object_player);

instance_create(0, 0, object_globals);
instance_create(0, 0, object_enemy_controller);
instance_create(0, 0, object_stats);
instance_create(0, 0, object_inventory_manager);
//instance_create(0,0, object_weapon2_manager);
global.open_door_list = ds_list_create();
global.inventory_list = ds_list_create();
global.used_keys_list = ds_list_create();
global.weapon2_list = ds_list_create(); // this is the list of sprites we own

/*
// make the weapon2 list
global.wb[0] = "Health";
global.wb[1] = "Magic";
global.wb[2] = "Arrow";
global.wb[3] = "Arrow2";
global.wb[4] = "Arrow3";
global.wb[5] = "Fire";
global.wb[6] = "Ice";
global.wb[7] = "Poison";
global.wb[8] = "Explosive";
*/
index = 0;
repeat(15)
{
global.weapon2_list[| index++] = noone; 
}
ds_list_replace(global.weapon2_list, 0, sprite_health_potion);
ds_list_replace(global.weapon2_list, 1, sprite_magic_potion);