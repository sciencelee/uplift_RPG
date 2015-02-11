{
if (hp_enemy<=0) {
    instance_destroy()
    for (i = 0; i < expr_enemy; i+=1){
        instance_create(x,y,object_expr_from_enemy);
        
    }
    }
}
