/// @description 

if( gamepad_button_check_pressed(0, gp_start) or gamepad_button_check(0, gp_face1) or keyboard_check_pressed(vk_enter) ) {

	room_goto(rm_menu);
if not (audio_is_playing(sn_start) ) {
		audio_sound_pitch(sn_start, random_range(1.0, 1.25) )
		audio_play_sound(sn_start, 10, false); 
	}
}
