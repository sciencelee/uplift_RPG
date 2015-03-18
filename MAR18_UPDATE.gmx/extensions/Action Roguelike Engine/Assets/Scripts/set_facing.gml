///set_facing(up, down, left, right)
/*
 * Sets the facing direction depending on given arguments.
 * The point of this is to reduce the amount of duplicated code.
 *
 * Example use:
 * kUp = keyboard_check(vk_up);
 * kDown = keyboard_check(vk_down);
 * kLeft = keyboard_check(vk_left);
 * kRight = keyboard_check(vk_right);
 * set_facing(kUp, kDown, kLeft, kRight)
 */
var up = argument0;
var down = argument1;
var left = argument2;
var right = argument3;
if (left && !right)
{
    facing = facing.left;
}
else
if (right && !left)
{
    facing = facing.right;
}

if (up && !down)
{
    facing = facing.up;
}
else
if (down && !up)
{
    facing = facing.down;
}