///end_level()
///Complete the level and move on to the next one
with (objRoom)
{
    instance_destroy();
}
with (objLevel)
{
    instance_destroy();
}
global.lvl += 1;
room_goto(roomLevelGeneration);