///set_speed(speed, direction)
speed = argument0;
direction = argument1;
vx = hspeed;
vy = vspeed;
hspeed = 0;
vspeed = 0;
vx = max(-v_max, min(v_max, vx));
vy = max(-v_max, min(v_max, vy));