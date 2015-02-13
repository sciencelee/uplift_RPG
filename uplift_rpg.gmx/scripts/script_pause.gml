if (paused){
    global.mapx = object_player.x;
    global.mapy = object_player.y;
    room_goto(room_pause);
    object_player.visible = false;
    paused = false;
}
else{
    room_goto(room_world_map)
    object_player.x = global.mapx;
    object_player.y = global.mapy;
    object_player.visible = true;
}
