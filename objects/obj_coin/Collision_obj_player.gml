/// @description INCREASE collected coins then DELETE self
obj_player.coins_collected += 1;
audio_play_sound(good3, 0, false);
instance_destroy();