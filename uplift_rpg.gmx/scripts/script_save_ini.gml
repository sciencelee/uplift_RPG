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


//Insert variables here ^^^
ini_close();
