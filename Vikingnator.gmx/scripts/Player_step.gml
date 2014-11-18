//y_nuevo = y + velocidad;

//show_debug_message(string(rebotando) + string(saltando) + string(callendo));

//REBOTANDO
if rebotando {
    x = x + tFuerza;
    y = y - ( velocidad_y / 2 );
} else if saltando {
//SALTANDO
    y = y - ( velocidad_y / 2 );    
} else {
    rebotando = false;
    saltando = false;
    
    if !place_meeting(x, y + velocidad_y, objWall_h) { 
    //CALLENDO
        //show_debug_message("sin suelo");
        y = y + velocidad_y;
        callendo = true;
    } else {
    //EN EL SUELO, limpiar
        callendo = false;
    }
}


