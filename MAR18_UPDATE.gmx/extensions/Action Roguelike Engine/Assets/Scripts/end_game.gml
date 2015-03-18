///end_game()
///Game over! go back to the menu
with (objRoom)
{
    instance_destroy();
}
with (objLevel)
{
    instance_destroy();
}
with (objCamera)
{
    instance_destroy();
}
room_goto(roomMenu);