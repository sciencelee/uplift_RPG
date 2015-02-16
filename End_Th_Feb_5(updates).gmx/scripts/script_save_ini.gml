///Game Save

ini_open("save.ini");
//Insert variables to save here
// (section, key, value)
ini_write_real("save","room",global.roomcamefrom);
ini_write_real("save","level",global.level);
ini_write_real("save","gold",global.gold);
ini_write_real("save","hp",global.hp);
ini_write_real("save","maxhp",global.maxhp);
ini_write_real("save","expr",global.expr);
ini_write_real("save","maxexpr",global.maxexpr);
ini_write_real("save","sword",global.sword);
ini_write_real("save","arrow",global.arrow);
ini_write_real("save","x",global.pausex);
ini_write_real("save","y",global.pausey);
ini_write_real("save","mapx",global.mapx);
ini_write_real("save","mapy",global.mapy);
ini_write_real("save", "inventory_list", global.inventory_list);

//save the inventory list
var str;
str = ds_list_write(global.inventory_list);
ini_write_string("Lists", "0", str);
ds_list_clear(global.inventory_list);
ini_close();

//Insert variables here ^^^
ini_close();
