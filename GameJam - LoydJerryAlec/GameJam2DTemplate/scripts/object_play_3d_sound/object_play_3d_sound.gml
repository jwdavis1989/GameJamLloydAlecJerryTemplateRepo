// Script object_play_3d_sound(sound_file, minimum_pitch = 1, maximum_pitch = 1, priority=2, volume=1)
/// @param Sound sound_file Sound file to play.
/// @param Real minimum_pitch Minimum Pitch. Default 1.
/// @param Real maximum_pitch Maximum Pitch. Default 1.
/// @param Real priority Priority of sound. Default 2.
/// @param Real volume Volume to play the sound, with 1.0 = 100%. Default 1.
function object_play_3d_sound(sound_file, minimum_pitch = 1, maximum_pitch = 1, priority=2, volume=1){
	audio_play_sound_at(sound_file, x, y, 0, 100, 300, 1, 0, priority, volume, 0, random_range(minimum_pitch, maximum_pitch));
}