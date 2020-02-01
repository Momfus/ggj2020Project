///@function sc_test_on_off()
///@description Habilita/dehsabilita el modo de prueba que tienen algunos objetos para visualizar
///@return {void}

global.g_test = !global.g_test;
visible = !visible;

show_debug_overlay(global.g_test);
