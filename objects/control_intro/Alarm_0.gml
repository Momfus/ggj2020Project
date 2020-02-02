/// @description Insert description here


if( __page < __totalPages ) {

	__page++;
	alarm[0] = global.g_oneSecond * 3;

} else {

	room_goto(rm_menu);
	
}