tDist = 0;

if ( saltando or callendo ) {
    show_debug_message("en el aire...");
    
    if direccion == 'izquierda' {
        tDist = velocidad_x * (-1);
        tFuerza = 25;
    } else if direccion == 'derecha' {
        tDist = velocidad_x;
        tFuerza = -25;
    }
    
    show_debug_message(string(tDist));
    
    if place_meeting(x + tDist, y, objWall_v) {
        show_debug_message("rebotando...");
        //saltando = true;
        //Influencia
        rebotando = true;
        alarm[1] = 12.5; // detener rebote
    }
} else {
    show_debug_message("saltar!");
    sprite_index = sprPlayer_jumpP;
    saltando = true;
    alarm[0] = 12.5; // detener salto
}
