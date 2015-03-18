///generate_level()
var retries = 20;

repeat(retries)
{
    ///Destroy all current room objects
    ///Because we're making a whooooole new world
    with (objRoom)
    {
        instance_destroy();
    }
    
    ///Clear the current level grid
    ds_grid_clear(room_grid, noone);
    
    ///Set room width/height
    var w = global.room_w;
    var h = global.room_h;
    
    ///Create starting room
    var xx = irandom_range(1, global.level_width-2);
    var yy = irandom_range(1, global.level_height-2);
    a = create_room(xx, yy, w, h);
    a.start = true;
    current_room = a;
    current_x = xx;
    current_y = yy;
    
    ///Create a whole bunch of rooms
    repeat(round_chance(global.max_rooms))
    {
        var clump = round_chance(global.level_clump_factor);
        var a = create_room_connected(w, h, 1, clump, room_type.normal);
        if (a == noone) continue;
    }
    
    ///Boss room(s)
    repeat(round_chance(global.boss_rooms))
    {
        var a = create_room_connected(w, h, 1, 1, room_type.normal);
        if (a == noone) continue;
        a.type = room_type.boss;
    }
    
    ///Item room(s)
    repeat(round_chance(global.item_rooms))
    {
        var a = create_room_connected(w, h, 1, 1, room_type.normal);
        if (a == noone) continue;
        a.type = room_type.item;
    }
    
    ///Shop room(s)
    repeat(round_chance(global.shop_rooms))
    {
        var a = create_room_connected(w, h, 1, 1, room_type.normal);
        if (a == noone) continue;
        a.type = room_type.shop;
    }
    
    ///Goal room
    if (global.level_end_after_boss)
    {
        var a = create_room_connected(w, h, 1, 1, room_type.boss);
        if (a == noone) continue;
    }
    else
    {
        var a = create_room_connected(w, h, 1, 1, room_type.normal);
        if (a == noone) continue;
    }
    a.type = room_type.goal;
    
    ///Set room doors
    ///If 2 rooms are next to one another, make a door!
    ///Once the doors are done, this bit of code 
    ///also prompts each room to choose & create its grid
    ///of objects, enemies & whatnot
    for (var xx = 0; xx < global.level_width; xx++)
    for (var yy = 0; yy < global.level_height; yy++)
    {
        var a = room_grid[# xx, yy];
        if (a != noone)
        {
            var up = room_grid[# xx, yy-1];
            var down = room_grid[# xx, yy+1];
            var left = room_grid[# xx-1, yy];
            var right = room_grid[# xx+1, yy];
            if (up != noone && up != 0)
            {
                if (up.type == room_type.boss || a.type == room_type.boss)
                    a.door_up = objBossDoor;
                else
                    a.door_up = objDoor;
            }
            if (down != noone && down != 0)
            {
                if (down.type == room_type.boss || a.type == room_type.boss)
                    a.door_down = objBossDoor;
                else
                    a.door_down = objDoor;
            }
            if (left != noone && left != 0)
            {
                if (left.type == room_type.boss || a.type == room_type.boss)
                    a.door_left = objBossDoor;
                else
                    a.door_left = objDoor;
            }
            if (right != noone && right != 0)
            {
                if (right.type == room_type.boss || a.type == room_type.boss)
                    a.door_right = objBossDoor;
                else
                    a.door_right = objDoor;
            }
            with (a)
            {
                room_vary();
                initialise_room();
            }
        }
    }
    
    break;
}