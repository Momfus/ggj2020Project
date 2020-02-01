///@function sc_layerCreateArrayName()
///@description Crear el arreglo global de nombre de capas para así hacer uso del autocompletado y evitar errores
///@return {void}

// Hay que agregar tanto el enum correspondiente y asignar el string al agregar alguna capa diferente en el proyecto


// Para manejar con auto completado las capas
enum e_layer {

	control,
	hitbox_hurtbox,
	collision,
	gui_layer_base,
	effects_top,
	actors_top,
	solid_base_top,
	effects_mid,
	actors_mid,
	solid_base,
	effects_base,
	terrain_cover,
	terrain_base,
	background_base,
	
}

// Arreglo usando los enums para saber el lugar que deben ir cada capa
global.g_arrayLayerNames[e_layer.control] = "control";
global.g_arrayLayerNames[e_layer.hitbox_hurtbox] = "hitbox_hurtbox";
global.g_arrayLayerNames[e_layer.collision] = "collision";

global.g_arrayLayerNames[e_layer.gui_layer_base] = "gui_layer_base";
global.g_arrayLayerNames[e_layer.effects_top] = "effects_top";
global.g_arrayLayerNames[e_layer.actors_top] = "actors_top";
global.g_arrayLayerNames[e_layer.solid_base_top] = "solid_base_top";
global.g_arrayLayerNames[e_layer.effects_mid] = "effects_mid";

global.g_arrayLayerNames[e_layer.actors_mid] = "actors_mid";

global.g_arrayLayerNames[e_layer.solid_base] = "solid_base";
global.g_arrayLayerNames[e_layer.effects_base] = "effects_base";
global.g_arrayLayerNames[e_layer.terrain_base] = "terrain_base";
global.g_arrayLayerNames[e_layer.background_base] = "background_base";
