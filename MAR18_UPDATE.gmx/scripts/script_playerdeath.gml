if (global.hp <= 0){
    instance_destroy();
    with(object_globals){instance_destroy()}
    with(object_enemy_controller){instance_destroy()}
    with(object_stats){instance_destroy()}
    with(object_inventory_manager){instance_destroy();}
    room_goto(room_gameover);
audio_play_sound(sound_death,1,false)
}