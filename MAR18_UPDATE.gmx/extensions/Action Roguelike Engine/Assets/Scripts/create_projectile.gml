///create_projectile(x, y, parent, object, damage, pushback, speed, facing)
/*
 * Example use:
 * create_projectile(x, y, id, objArrow, 10, 2, 8, facing.up)
 */

var xx = argument0;
var yy = argument1;
var par = argument2;
var obj = argument3;
var dmg = argument4;
var psh = argument5;
var spd = argument6;
var dir = argument7;

var a = instance_create(xx, yy, obj);
a.parent = par;
a.damage = dmg;
a.pushback = psh;
switch (dir)
{
    case facing.right:
        a.image_angle = 0;
        a.vx = spd;
        break;
    case facing.up:
        a.image_angle = 90;
        a.vy = -spd;
        break;
    case facing.left:
        a.image_angle = 180;
        a.vx = -spd;
        break;
    case facing.down:
        a.image_angle = 270;
        a.vy = spd;
}

return a;