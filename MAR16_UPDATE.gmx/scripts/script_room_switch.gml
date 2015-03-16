/*
argument0 -- player.x in new room
argument1 -- player.y in new room
*/

global.mapx = object_player.xprevious;
global.mapy = object_player.yprevious;
instance_activate_all();

with(other)
{
    x = argument0;
    y = argument1;
}