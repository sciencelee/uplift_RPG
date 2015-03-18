///handle_hit()
if (melee_weapon != noone)
if (instance_exists(melee_weapon))
{
    melee_weapon.active = true;
}
///If animation ended, change back to idle state
var s = objControl.game_speed;
if (image_index >= image_number-image_spd*s)
{
    change_state(state.idle);
}