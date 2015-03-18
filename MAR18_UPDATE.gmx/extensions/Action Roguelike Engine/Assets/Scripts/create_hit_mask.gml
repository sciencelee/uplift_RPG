///create_hit_mask(parent, damage, pushback, facing)
/*
 * Example use:
 * create_hit_mask(id, 10, 2, facing.up)
 */

var par = argument0;
var dmg = argument1;
var psh = argument2;
var dir = argument3;

var a = instance_create(par.x, par.y, objHitMask);
a.parent = par;
a.damage = dmg;
a.pushback = psh;
a.image_index = dir;
return a;