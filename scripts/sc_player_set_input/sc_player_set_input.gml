///@function sc_player_set_input(type)
///@description Crea un tipo de input para el jugador y los asocia
///@param {real} type
///@return {real}

var l_input = sc_instance_create_singleton(0, 0, argument0);

l_input.__currentPlayer = id;

return l_input;