if !fuse_played {
	image_speed = 1;
	audio_play_sound_at(fuse, x, y, 0, 50, 100, 0.25, false, 1);
	fuse_played = true
}