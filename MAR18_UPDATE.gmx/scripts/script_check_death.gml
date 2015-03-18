
if (hp_enemy <= 0) 
{
    for (i = 0; i < expr_enemy; i+=1)
    {
        instance_create(x,y,object_expr_from_enemy);
    }
    
    for (j = 0; j < coins; j+=1)
    {
        instance_create(x,y,object_coin_from_enemy);
    }
    if (random(30)== 0){instance_create(x,y, object_health_potion);}
    if (random(30)== 0){instance_create(x,y, object_magic_potion);}
    instance_destroy()
}