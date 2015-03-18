if (room != room_pause)
{
    
    global.roomcamefrom = room ;
    global.pausex = object_player.x;
    global.pausey = object_player.y;
    
    room_goto(room_pause);
    object_player.visible = false; 
    //instance_deactivate_object(object_stats);
 
}

else
{
    //instance_activate_object(object_stats);
    room_goto(global.roomcamefrom);
    //room_restart();
    object_player.x = global.pausex;
    object_player.y = global.pausey;
    object_player.visible = true;
    
}