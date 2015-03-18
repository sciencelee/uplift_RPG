///initialise_room()
///Create room grid & enemies
grid = ds_grid_create(grid_w+1, grid_h+1);

ds_grid_clear(grid, objFloor);
///Walls
ds_grid_set_region(grid, 0, 0, grid_w, 0, objWall);
ds_grid_set_region(grid, 0, grid_h, grid_w, grid_h, objWall);
ds_grid_set_region(grid, 0, 0, 0, grid_h, objWall);
ds_grid_set_region(grid, grid_w, 0, grid_w, grid_h, objWall);
///Doors
mid_x = floor(grid_w/2);
mid_y = floor(grid_h/2);
ds_grid_set(grid, mid_x, 0, door_up);
ds_grid_set(grid, grid_w, mid_y, door_right);
ds_grid_set(grid, mid_x, grid_h, door_down);
ds_grid_set(grid, 0, mid_y, door_left);

///Everything else
var filename = "data.ini";
var section = sprite_get_name(type);///get_room_grid_type();
ini_open(filename);
    var total = ini_read_real(section, "total", 0);
    var i = irandom(total);
    var str = ini_read_string(section, string(i), "");
    var colour_grid = ds_grid_create(grid_w+1, grid_h+1);
    ds_grid_read(colour_grid, str);
    for (var xx = 0; xx < grid_w; xx++)
    for (var yy = 0; yy < grid_h; yy++)
    {
        switch (colour_grid[# xx, yy])
        {
            case global.c_block:
                ds_grid_set(grid, xx, yy, objBlock);
                break;
            case global.c_random_enemy:
                var obj = choose(objSlime, objBat, objSkeleton);
                ds_grid_set(grid, xx, yy, obj);
                break;
            case global.c_slime:
                ds_grid_set(grid, xx, yy, objSlime);
                break;
            case global.c_skeleton:
                ds_grid_set(grid, xx, yy, objSkeleton);
                break;
            case global.c_bat:
                ds_grid_set(grid, xx, yy, objBat);
                break;    
            case global.c_pot:
                ds_grid_set(grid, xx, yy, objPot);
                break;
            case global.c_brazier:
                ds_grid_set(grid, xx, yy, objBrazier);
                break;
            case global.c_boss:
                ds_grid_set(grid, xx, yy, objGiantSlime);
                break;
            case global.c_shop:
                //Add code here if you want to create a
                //"shop" of some kind in the shop rooms
                break;
            case global.c_item:
                var obj = choose(objExtraHeart, objHealthKit);
                ds_grid_set(grid, xx, yy, obj);
                //Add code here for spawning a random item
                //for the player to pick up
                //in treasure rooms.
                //...if you want, that is.
                break;
            case global.c_down:
                ds_grid_set(grid, xx, yy, objStairs);
                break;
        }
    }
ini_close();
