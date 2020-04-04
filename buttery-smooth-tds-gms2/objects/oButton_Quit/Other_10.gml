// User Event 0 Code
pressed = true;
audio_play_sound(sndQuit, 1, false); 
with (oButton_Parent)
    {
    state = b_state.destroy;
    }
