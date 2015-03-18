///set_directional_sprite(up_sprite, down_sprite, left_sprite, right_sprite)
///Sets the object's sprite depending on facing direction
switch (facing)
{
    case facing.up:
        sprite_index = argument0;
        break;
    case facing.down:
        sprite_index = argument1;
        break;
    case facing.left:
        sprite_index = argument2;
        break;
    case facing.right:
        sprite_index = argument3;
        break;
}