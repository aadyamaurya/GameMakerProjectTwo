/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_button_click, 1, false);
if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}
var vertMultiplier = 1;
var horMultiplier = 1;

while (vertMultiplier < 9){
	while(horMultiplier < 9){
			instance_create_layer((Obj_First_Space.x)+(180*horMultiplier), (Obj_First_Space.y) - (180*vertMultiplier), "Instances", Obj_Shadow);
		horMultiplier++;
	}
	horMultiplier = 1;
	vertMultiplier++;
}

