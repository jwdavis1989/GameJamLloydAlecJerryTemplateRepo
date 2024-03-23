/// @description Game Over Screen
audio_pause_all();

//var roomName = room_get_name(room);
var roomName = asset_get_index(room_get_name(room));
obj_room_id_storage.storedRoom = roomName;

obj_cursor_shadow.game_over = true;
room_goto(rm_game_over);

