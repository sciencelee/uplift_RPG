if (global.hp <= 0){
    instance_destroy();
    with(object_globals){instance_destroy()}
    with(object_enemy_controller){instance_destroy()}
    with(object_stats){instance_destroy()}
    room_goto(room_gameover);

}