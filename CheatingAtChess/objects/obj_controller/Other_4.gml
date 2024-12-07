/// @description Insert description here
// You can write your code in this editor
// Stop any currently playing audio
audio_stop_all();

if (room == rm_Title_Screen) {
    audio_play_sound(snd_title, 1, true); 
} else if (room == rm_Level_One) {
    audio_play_sound(snd_level, 1, true); 
} else if (room == Tutorial_Room) {
    audio_play_sound(snd_level, 1, true); 
}
