///Game Save

ini_open("save.ini");
//Insert variables to save here
// (section, key, value)
room = ini_read_real("save","room",room_world_map);
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
list = ds_list_create();
var str = ini_read_string("Lists", "0", "");
if str != ""
   {
   ds_list_read(list, str);
   }

global.inventory_list = list;
ini_close();

//Insert variables here ^^^
ini_close();
global.restarting = false;
instance_create(global.pausex, global.pausey, object_player);
