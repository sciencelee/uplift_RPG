// need to move the global objects to player position to make sure they don't disappear

object_globals.x = object_player.x;
object_globals.y = object_player.y;
object_enemy_controller.x = object_player.x;
object_enemy_controller.y = object_player.y;
object_stats.x = object_player.x;
object_stats.y = object_player.y;
object_inventory_manager.x = object_player.x;
object_inventory_manager.y = object_player.y;
audio_stop_all();