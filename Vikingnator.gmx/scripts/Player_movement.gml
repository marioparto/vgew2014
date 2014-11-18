direccion = argument0;
switch (direccion) {
    case 'izquierda':
        //show_debug_message("izquierda");
        image_xscale = -1;
        if ( !saltando )
            sprite_index = sprPlayer_run;          
        x = x - velocidad_x;    
        if place_meeting(x, y, objWall_v) {
            x = x + velocidad_x;
        }   
        break;
    case 'derecha':
        //show_debug_message("derecha");
        image_xscale = 1;
        if ( !saltando )
            sprite_index = sprPlayer_run;  
        x = x + velocidad_x;        
        if place_meeting(x, y, objWall_v) {
            x = x - velocidad_x;
        }                   
        break;
    case 'idle':
        if ( !keyboard_check_pressed(vk_left) &&  !keyboard_check_pressed(vk_right) ) {
            sprite_index = sprPlayer_idle;
        }
}

