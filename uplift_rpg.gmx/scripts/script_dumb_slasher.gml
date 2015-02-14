{
    
    if (distance_to_object(object_player)<25 && enemy_canSlash){
         speed_enemy_current = 0;
         instance_create(x,y,object_enemyslash);
         enemy_canSlash = false;
         alarm[0] = 30;

    }
    else mp_linear_step_object(object_player.x, object_player.y, speed_enemy_current, all);

}  
