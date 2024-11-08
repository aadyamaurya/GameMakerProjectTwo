/// @description Insert description here
// You can write your code in this editor
var multiplier = 1;

if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}

//up
if (place_empty(x+(32), y-(32*2))){
	// Up right
	instance_create_layer(x+(32), y-(32*2), "Instances", Obj_Shadow);
}
if(place_empty(x-(32), y-(32*2))){
	// Up left
	instance_create_layer(x-(32), y-(32*2), "Instances", Obj_Shadow);
}

//down
if (place_empty(x+(32), y+(32*2))){
	// Down right
	instance_create_layer(x+(32), y+(32*2), "Instances", Obj_Shadow);
}
if(place_empty(x-(32), y+(32*2))){
	// Down left
	instance_create_layer(x-(32), y+(32*2), "Instances", Obj_Shadow);
}


//left
if (place_empty(x-(32*2), y-(32))){
	// Left up
	instance_create_layer(x-(32*2), y-(32), "Instances", Obj_Shadow);
}
if (place_empty(x-(32*2), y+(32))){
	// Left down
	instance_create_layer(x-(32*2), y+(32), "Instances", Obj_Shadow);
}

//right
if (place_empty(x+(32*2), y-(32))){
	// Right up
	instance_create_layer(x+(32*2), y-(32), "Instances", Obj_Shadow);
}
if(place_empty(x+(32*2), y+(32))){
	// Right down
	instance_create_layer(x+(32*2), y+(32), "Instances", Obj_Shadow);
}
