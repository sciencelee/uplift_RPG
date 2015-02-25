/*
argument0 -- room id of new room
argument1 -- player.x in new room
argument2 -- player.y in new room
argument3 -- player.x when returning to world map on exit (global.mapx)
argument4 -- player.y when returning to world map on exit (global.mapy)
*/

global.mapx = object_player.xprevious;
global.mapy = object_player.yprevious;
instance_activate_all();

with(other)
{
 
    room_goto(argument0);


    x = argument1;
    y = argument2;
}