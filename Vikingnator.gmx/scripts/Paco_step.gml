mp_potential_step(objPlayer.x-250, objPlayer.y-150, 8, false);
//objPaco_escalera.x = x - 120;
//objPaco_escalera.y = y - 40;

if distance_to_object(objPlayer) < 720 {
    if !audio_is_playing(sndPaco_heli_aspas) {    
        show_debug_message("loop heli");
        //sound_loop(sndPaco_heli_aspas);
        audio_play_sound(sndPaco_heli_aspas, 10, true);        
    }
} else {
    if audio_is_playing(sndPaco_heli_aspas) {    
        show_debug_message("stop heli");
        //sound_stop(sndPaco_heli_aspas);
        audio_stop_sound(sndPaco_heli_aspas);
    }
}


