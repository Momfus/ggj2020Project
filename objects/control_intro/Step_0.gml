/// @description 

if( gamepad_button_check_pressed(0, gp_start) or gamepad_button_check(0, gp_face1) or keyboard_check_pressed(vk_enter) ) {

	room_goto(rm_menu);

}
