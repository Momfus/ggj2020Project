///@function sc_gamepad_is_connected()
///@description Verifica que se ha contectado o desconectado un gamepad
///@return {boolean}

#region @TestScripts

// Esto es para ver en la consola de debug que eventos han sido arrojadas y que gamepad
show_debug_message("Evento = " + async_load[? "event_type"]);        
show_debug_message("Gamepad Nº = " + string(async_load[? "pad_index"]));   

#endregion

var l_isConnected = false;


switch(async_load[? "event_type"]){           

	#region Gamepad Encontrado
	
	case "gamepad discovered":{                    
        
		var pad = async_load[? "pad_index"];
		
		gamepad_set_axis_deadzone(pad, 0.5);      
		gamepad_set_button_threshold(pad, 0.1);    
     
        l_isConnected = true;
		 
        break;
        
    }
	
	#endregion

    #region Gamepad Desconectado
	
		case "gamepad lost": {                          
        var pad = async_load[? "pad_index"];       
     
	 
        break;
        
    }
	
	#endregion
    
    
}


return l_isConnected;