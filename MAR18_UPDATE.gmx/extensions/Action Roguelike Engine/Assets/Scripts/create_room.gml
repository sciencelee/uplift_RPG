///create_room(x, y, width, height)
var xx = argument0;
var yy = argument1;
var a = instance_create(xx, yy, objRoom);
a.grid_w = argument2-1;
a.grid_h = argument3-1;
var w = a.grid_w*global.tile_size;
var h = a.grid_h*global.tile_size;
a.surface = surface_create(w, h);
///Each room has a surface. The surface can be used to draw
///blood, explosion marks & other stuff on to the floor.
///This surface persists even when the player leaves the room.
surface_set_target(a.surface);
    draw_clear_alpha(0, 0);
surface_reset_target();
///Clear the surface (just in case!) after creating it

room_grid[# xx, yy] = a; //Store this room in the level's room grid

return a;