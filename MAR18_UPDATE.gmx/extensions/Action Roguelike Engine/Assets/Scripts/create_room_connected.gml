///create_room_connected(w, h, min_connections, max_connections, connect_to)
///Creates a room in a level space which is only connected by n other room(s)
///The last argument defines which type of room you want to connect this room to
var w = argument0;
var h = argument1;
var mi = argument2;
var ma = argument3;
var type = argument4;

var retries = 200;

var xx = 0;
var yy = 0;
var space_found = false
var r = 0;
while (!space_found && r < retries)
{
    r++;
    xx = irandom(global.level_width);
    yy = irandom(global.level_height);
    if (room_grid[# xx, yy] == noone)
    {
        var conn = 0;
        if (!outside_grid(room_grid, xx, yy-1))
        {
            var rm = room_grid[# xx, yy-1];
            if (rm != noone)
            {
                if (rm.type != type)
                    continue;
                conn++;
            }
        }
        if (!outside_grid(room_grid, xx, yy+1))
        {
            var rm = room_grid[# xx, yy+1];
            if (rm != noone)
            {
                if (rm.type != type)
                    continue;
                conn++;
            }
        }
        if (!outside_grid(room_grid, xx-1, yy))
        {
            var rm = room_grid[# xx-1, yy];
            if (rm != noone)
            {
                if (rm.type != type)
                    continue;
                conn++;
            }
        }
        if (!outside_grid(room_grid, xx+1, yy))
        {
            var rm = room_grid[# xx+1, yy];
            if (rm != noone)
            {
                if (rm.type != type)
                    continue;
                conn++;
            }
        }
        if (conn >= mi && conn <= ma)
        {
            space_found = true;
        }
    }
}

if (space_found)
{
    return create_room(xx, yy, w, h);
}
else
{
    return noone;
}