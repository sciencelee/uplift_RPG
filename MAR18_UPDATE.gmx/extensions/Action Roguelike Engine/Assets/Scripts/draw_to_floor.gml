///draw_to_floor(sprite, image, x, y, xscale, yscale, angle, colour, alpha)
if (room == roomLevel)
if (instance_exists(objLevel))
{
    var rm = objLevel.current_room;
    var spr = argument0;
    var img = argument1;
    var xx = argument2;
    var yy = argument3;
    var xs = argument4;
    var ys = argument5;
    var ang = argument6;
    var col = argument7;
    var alp = argument8;
    surface_set_target(rm.surface);
        //draw_set_blend_mode(bm_dest_alpha);
        draw_sprite_ext(spr, img, xx, yy, xs, ys, ang, col, alp);
        //draw_set_blend_mode(bm_normal);
    surface_reset_target();
}