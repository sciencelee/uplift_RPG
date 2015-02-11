{
    
    if (distance_to_object(object_player)<400 && enemy_canShoot){
         
         instance_create(x,y,object_enemy_arrow);
         enemy_canShoot = false;
         alarm[0] = random_range(20,100);

    }

}  
