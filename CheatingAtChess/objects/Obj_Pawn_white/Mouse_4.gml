/// @description Insert description here
// You can write your code in this editor

// Create shadows for possible movements
if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}
if(isFirstMove == true){
	if (place_empty(x, y - (32 * 2)) && place_empty(x, y - (32))){
		instance_create_layer(x, y-(32*2), "Instances", Obj_Shadow);
	}
	if (place_empty(x, y - (32))){
		instance_create_layer(x, y-(32), "Instances", Obj_Shadow);
	}
}

else{
if (place_empty(x, y - (32))){
		instance_create_layer(x, y-(32), "Instances", Obj_Shadow);
	}
}