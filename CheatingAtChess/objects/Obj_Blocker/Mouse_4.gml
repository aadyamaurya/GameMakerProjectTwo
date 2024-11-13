/// @description Insert description here
// You can write your code in this editor

if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}
var vertMultiplier = 1;
var horMultiplier = 1;

while (vertMultiplier < 9){
	while(horMultiplier < 9){
		// Why doesn't this work????
		if(place_empty((Obj_First_Space.x)+(32*horMultiplier), (Obj_First_Space.y) - (32*vertMultiplier))){
			instance_create_layer((Obj_First_Space.x)+(32*horMultiplier), (Obj_First_Space.y) - (32*vertMultiplier), "Instances", Obj_Shadow);
		}
		horMultiplier++;
	}
	horMultiplier = 1;
	vertMultiplier++;
}
