aim = point_direction(x, y, object_player.x, object_player.y);

    
    if (distance_to_object(object_player)<400 && enemy_canShoot && irandom(20) == 0){
         if (aim >= 45 && aim < 135)
         {
            image_index = 0;
            image_speed = 1;
         }
         else if (aim >= 135 && aim < 225)
         {
            image_index = 13;
            image_speed = 1;
         }
         else if (aim >= 225 && aim < 315)
         {
            image_index = 26;
            image_speed = 1;
         }
         else
         {
            image_index = 39;
            image_speed = 1;
         }
        
         enemy_canShoot = false;
         alarm[0] = 13;

    }
else if (enemy_canShoot)
{
    if (aim >= 45 && aim < 135)
    {
        image_index = 0;
        image_speed = 0;
    }
    else if (aim >= 135 && aim < 225)
    {
        image_index = 13;
        image_speed = 0;
    }
    else if (aim >= 225 && aim < 315)
    {
        image_index = 26;
        image_speed = 0;
    }
    else
    {
        image_index = 39;
        image_speed = 0;
    }
}
else
{
 // if you can't shoot, do nothing and let alarm take over.
}