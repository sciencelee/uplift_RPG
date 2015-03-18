///room_vary()

///You'll notice there are many different types of "normal" rooms.
///horizontal, vertical & starting rooms are all non-special rooms.
///horizontal rooms are those which don't have doors above or below the room,
///giving you a corridor sort of thing.
///vertical rooms are those which don't have doors on either side.
///and starting rooms are the rooms you start in... because you don't want enemies
///spawning in your starting rooms...

///This bit of code checks a specific room (whichever objRoom this script
///is called from) to see whether it should be a start/horizontal/vertical room
///instead of a boring normal room.
if (type == room_type.normal)
{
    if (start)
    {
        type = room_type.start;
    }
    else
    {
        if (door_left == objWall &&
            door_right == objWall &&
            percent_chance(50))
        {
            type = room_type.vertical;
        }
        else
        if (door_up == objWall &&
            door_down == objWall &&
            percent_chance(50))
        {
            type = room_type.horizontal;
        }
    }
}

