/// @description Llamar el generar danio


with( spawner_danio ) {

	if( choose(true, false) ) {
	
		event_user(0);
		break;
	
	}
	
}

alarm[0] = global.g_oneSecond * irandom_range(3, 5) * (1/__dificultad);