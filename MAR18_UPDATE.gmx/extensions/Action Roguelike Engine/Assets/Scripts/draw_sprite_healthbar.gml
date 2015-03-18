///draw_sprite_healthbar(x, y, across, sprite, hp, max_hp)
///Draw a healthbar represented as a series of sprites
var xx = argument0;
var yy = argument1;
var across = argument2;
var sprite = argument3;
var current = argument4;
var maximum = argument5;
var w = sprite_get_width(sprite);
var h = sprite_get_height(sprite);
var xi = 0;
var yi = 0;
var this_hp = 0;
repeat(ceil(maximum/2))
{
    if (current-this_hp == 1)
    {
        draw_sprite(sprite, 1, xx+xi*w, yy+yi*h);
    }
    else
    if (current-this_hp > 1)
    {
        draw_sprite(sprite, 0, xx+xi*w, yy+yi*h);
    }
    else
    {
        draw_sprite(sprite, 2, xx+xi*w, yy+yi*h);
    }
    xi++;
    this_hp += 2;
    if (xi >= across)
    {
        xi = 0;
        yi++;
    }
}