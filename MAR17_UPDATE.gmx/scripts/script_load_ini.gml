///Game Save

ini_open("save.ini");
//Insert variables to save here
// (section, key, value)
room_saved = ini_read_real("save","room",room_world_map);
global.level = ini_read_real("save","level",0);
global.gold = ini_read_real("save","gold",0);
global.hp = ini_read_real("save","hp",10);
global.maxhp = ini_read_real("save","maxhp",10);
global.expr = ini_read_real("save","expr",0);
global.maxexpr = ini_read_real("save","maxexpr",2);
global.sword = ini_read_real("save","sword",1);
global.arrow = ini_read_real("save","arrow",1);
global.pausex = ini_read_real("save","x",x);
global.pausey = ini_read_real("save","y",y);
global.mapx = ini_read_real("save","mapx",global.pausex);
global.mapy = ini_read_real("save","mapy",global.pausey);

// trying to read in the inventory list.
global.inventory_list = ds_list_create();
ds_list_clear(global.inventory_list);
var str = ini_read_string("Lists", "0", "");
if str != ""
   {
   ds_list_read(global.inventory_list, str);
   }


// read in the open door list.
global.open_door_list = ds_list_create();
var str2 = ini_read_string("Lists", "1", "");
if str2 != ""
   {
   ds_list_read(global.open_door_list, str2);
   }

   
// read in the used keys list.
global.used_keys_list = ds_list_create();
var str3 = ini_read_string("Lists", "2", "");
if str3 != ""
   {
   ds_list_read(global.used_keys_list, str3);
   }
ini_close();

room_goto(room_saved);
instance_create(global.pausex, global.pausey, object_player);
instance_create(global.pausex, global.pausey, object_globals);
instance_create(global.pausex, global.pausey, object_stats);
instance_create(global.pausex, global.pausey, object_inventory_manager);