/// @description Insert description here
// You can write your code in this editor

// Create shadows for possible movements
if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}
if(isFirstMove == true){
	if (place_empty(x, y - (180 * 2)) && place_empty(x, y - (180))){
		instance_create_layer(x, y-(180*2), "Instances", Obj_Shadow);
	}
	if (place_empty(x, y - (180))){
		instance_create_layer(x, y-(180), "Instances", Obj_Shadow);
	}
}

else{
if (place_empty(x, y - (180))){
		instance_create_layer(x, y-(180), "Instances", Obj_Shadow);
	}
}

if (!place_empty(x - (180), y - (180))){
	if(position_meeting(x-(180), y-(180), Obj_Pawn_Black) || position_meeting(x-(180), y-(180), Obj_Bishop_Black)
	|| position_meeting(x-(180), y-(180), Obj_Knight_Black) || position_meeting(x-(180), y-(180), Obj_Rook_Black)
	|| position_meeting(x-(180), y-(180), Obj_Queen_Black)){
		instance_create_layer(x-(180), y-(180), "Instances", Obj_Shadow);
	}
}

if (!place_empty(x + (180), y - (180))){
	if(position_meeting(x+(180), y-(180), Obj_Pawn_Black) || position_meeting(x+(180), y-(180), Obj_Bishop_Black)
	|| position_meeting(x+(180), y-(180), Obj_Knight_Black) || position_meeting(x+(180), y-(180), Obj_Rook_Black)
	|| position_meeting(x+(180), y-(180), Obj_Queen_Black)){
		instance_create_layer(x+(180), y-(180), "Instances", Obj_Shadow);
	}
}