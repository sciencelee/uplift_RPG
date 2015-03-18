/// buy magic
// argument0... inventory button
if (cost <= global.gold)
{
    global.gold -= cost;
    script_add_weapon2(argument0);
    instance_destroy();
    global.magic +=1;
    audio_play_sound(sound_add_inventory, 2, false);
}