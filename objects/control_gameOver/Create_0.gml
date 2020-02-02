/// @description 

event_inherited();

__targetAlpha = 0.5;
__currentAlpha = 0;

__isRestartEnable = false;

__scale = 1;
__oscilacionScale = 0;

__scaleDif = 0.1;

sc_effect_screenShake(10, 5, 2);

__score = 0;


if not (audio_is_playing(sn_gameOver) ) {
		audio_sound_pitch(sn_gameOver, random_range(1.0, 0.75) )
		audio_play_sound(sn_gameOver, 10, false); 
	}