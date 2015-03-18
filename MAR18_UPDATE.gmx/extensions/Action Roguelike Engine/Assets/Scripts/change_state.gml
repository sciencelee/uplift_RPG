///change_state(state)
/*
 * Example use
 * change_state(state.idle) < always use "state" enum
 * which is defined in objPlayer create event
 */

var oldstate = state;
var newstate = argument0;
///Check if we're already in the requested state
if (oldstate != newstate)
{
    state = newstate;
    ///Run different code depending on which
    ///state we're transitioning in to
    switch (newstate)
    {
        case state.idle:
            ground_frict = 0.35;
            ///Stop moving, just in case
            move_left = false;
            move_right = false;
            move_up = false;
            move_down = false;
            ///Set animation speed
            image_spd = 0.25;
            ///Set movement speed
            v_max = RunSpeed;
            break;
        case state.run:
            ground_frict = 0.35;
            image_spd = 0.2;
            ///Set movement speed
            v_max = RunSpeed;
            break;
        case state.hit:
            if (melee_weapon != noone)
            {
                if (instance_exists(melee_weapon))
                {
                    melee_weapon.activate = true;
                }
                ground_frict = 0.1;
                image_index = 0;
            }
            else
            {
                state = oldstate;
            }
            break;
        case state.shoot:
            if (ranged_weapon != noone)
            {
                ground_frict = 0.35;
                image_spd = 0.6*RangedSpeed;
            }
            else
            {
                state = oldstate;
            }
            break;
    }
}