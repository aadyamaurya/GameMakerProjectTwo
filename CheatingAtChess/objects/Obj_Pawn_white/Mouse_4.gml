/// @description Insert description here
// You can write your code in this editor

// Create shadows for possible movements
if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}
if(isFirstMove == true){
	if (place_empty(x, y - (180 * 2)) && place_empty(x, y - (32))){
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

if (!place_empty(x - (32), y - (32))){
	if(position_meeting(x-(32), y-(32), Obj_Pawn_Black) || position_meeting(x-(32), y-(32), Obj_Bishop_Black)
	|| position_meeting(x-(32), y-(32), Obj_Knight_Black) || position_meeting(x-(32), y-(32), Obj_Rook_Black)
	|| position_meeting(x-(32), y-(32), Obj_Queen_Black)){
		instance_create_layer(x-(32), y-(32), "Instances", Obj_Shadow);
	}
}

if (!place_empty(x + (32), y - (32))){
	if(position_meeting(x+(32), y-(32), Obj_Pawn_Black) || position_meeting(x+(32), y-(32), Obj_Bishop_Black)
	|| position_meeting(x+(32), y-(32), Obj_Knight_Black) || position_meeting(x+(32), y-(32), Obj_Rook_Black)
	|| position_meeting(x+(32), y-(32), Obj_Queen_Black)){
		instance_create_layer(x+(32), y-(32), "Instances", Obj_Shadow);
	}
}