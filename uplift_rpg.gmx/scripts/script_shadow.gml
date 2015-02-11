/// script_shadow draws the shadow and the object
/* 
argument0 -- offset (taller items have larger offset
argument1 -- true to animate the object
*/

var offset = argument0;


if (argument1)
{
    draw_sprite_ext(sprite_index, sprite_index, x, y+ offset, 1, 1, image_angle, c_black, 0.4);
}
else
{
    draw_sprite_ext(sprite_index, 0, x, y+ offset, 1, 1, image_angle, c_black, 0.4);
}
draw_self();

