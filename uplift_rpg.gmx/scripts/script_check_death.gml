{
if (hp_enemy<=0) {
    instance_destroy()
    for (i = 0; i < expr_enemy; i+=1){
        instance_create(x + random_range(-50,50), y + random_range(-50,50),object_expr)
    }
    }
}
