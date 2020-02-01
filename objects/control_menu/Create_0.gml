/// @description Inicio Atributos

__halfRoomWidth = room_width * 0.5;
__halfRoomHeight = room_height * 0.5;


// Delay para presionar cualquier tecla al empezar
__canUseMenu = false;
alarm[0] = global.g_oneSecond * 0.25;


// Efectos de menu
__isShowPressEnter = true;
alarm[1] = global.g_oneSecond * 1;

// Para manejar el input (para detectar si comienza conectado)
__inputID = sc_player_set_input(control_input_keyboard);

var l_gpTotal = gamepad_get_device_count(),
	l_isGamePadConnect = false;
	
for (var i = 0; i < l_gpTotal; i++;) {
	
	if( gamepad_is_connected(i) ) {
		l_isGamePadConnect = true; 
		break;
	}
   
}
 


if( l_isGamePadConnect ) {

	alarm[2] = 2;

}