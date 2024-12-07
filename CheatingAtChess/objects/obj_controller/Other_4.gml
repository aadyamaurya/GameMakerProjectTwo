/// @description Insert description here
// You can write your code in this editor
// Stop any currently playing audio
audio_stop_all();

// Check which room is active and play the corresponding soundtrack
if (room == rm_Title_Screen) {
    audio_play_sound(snd_title, 1, true); // Loop soundtrack
} else if (room == rm_Level_One) {
    audio_play_sound(snd_level, 1, true); // Loop soundtrack
} else if (room == Tutorial_Room) {
    audio_play_sound(snd_level, 1, true); // Loop soundtrack
}
