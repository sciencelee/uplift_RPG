///check_room()
///close doors if enemies exist,
///open doors if all enemies are dead.
if (!instance_exists(objEnemy) ||
    !global.kill_all_enemies) //< if we're required to kill all enemies
{
    with (objDoor)
    {
        if (image_index != 0)
        {
            var b = 0.3;
            xscale = 1+b;
            yscale = 1-b;
        }
        image_index = 0;
        mask_index = maskDoor;
        open = true;
    }
}
else
{
    with (objDoor)
    {
        if (image_index != 1)
        {
            var b = 0.3;
            xscale = 1+b;
            yscale = 1-b;
        }
        image_index = 1;
        mask_index = maskWall;
        open = false;
    }
}