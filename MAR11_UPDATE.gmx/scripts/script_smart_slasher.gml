/// ogre animation for smart logic

    if (distance_to_object(object_player)<15 && irandom(5)==0 && enemy_canSlash){
         speed_enemy_current= 0;
         enemy_canSlash = false;
         
         // backhand slash check
         if (direction >=45 && direction < 135)
         {
            sprite_index = sprite_ogre_backhand_up;
            image_index = 0;
            image_speed = 1;
            alarm[0] = 6;
            
            
         }
          if (direction >=135 && direction < 225)
         {
            sprite_index = sprite_ogre_backhand_left;
            image_index = 0;
            image_speed = 1;
            alarm[0] = 6;
            
         }
          if (direction >=225 && direction < 315)
         {
            sprite_index = sprite_ogre_backhand_down;
            image_index = 0;
            image_speed = 1;
            alarm[0] = 6;
            
         }
          if (direction <45 || direction >= 315)
         {
            sprite_index = sprite_ogre_backhand_right;
            image_index = 0;
            image_speed = 1;
            alarm[0] = 6;
            
         }
         slashdir = direction;
         script_execute(script_enemy_slash(x,y));
         
    }
    
    else if (enemy_canSlash){
         // backhand slash check
         mp_potential_step_object(object_player.x, object_player.y, speed_enemy, object_wall)
         
         if (direction >=45 && direction < 135)
         {
            sprite_index = sprite_ogre_walk_up;
            image_speed = 1;
         }
          if (direction >=135 && direction < 225)
         {
            sprite_index = sprite_ogre_walk_left;
            image_speed = 1;
         }
          if (direction >=225 && direction < 315)
         {
            sprite_index = sprite_ogre_walk_down;
            image_speed = 1;
         }
          if (direction < 45 || direction >= 315 )
         {
            sprite_index = sprite_ogre_walk_right;
            image_speed = 1;
         }
         
    }
    