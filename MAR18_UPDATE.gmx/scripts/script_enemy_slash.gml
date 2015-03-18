/// Creates a slash in direction of player

/*
argument0 -- x val
argument1 -- y val

*/

new_slash = instance_create(argument0,argument1, object_enemyslash);
new_slash.direction = point_direction(x,y,object_player.x, object_player.y);