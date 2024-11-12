/// @description Insert description here
// You can write your code in this editor
var multiplier = 1;

if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}

//up
if (!place_empty(x+(32), y-(32*2))){
	if(position_meeting(x+(32), y-(32*2), Obj_Pawn_Black) || position_meeting(x+(32), y-(32*2), Obj_Bishop_Black)
	|| position_meeting(x+(32), y-(32*2), Obj_Knight_Black) || position_meeting(x+(32), y-(32*2), Obj_Rook_Black)
	|| position_meeting(x+(32), y-(32*2), Obj_Queen_Black)){
		instance_create_layer(x+(32), y-(32*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(32), y-(32*2), "Instances", Obj_Shadow);} // Up right


if(!place_empty(x-(32), y-(32*2))){
	if(position_meeting(x-(32), y-(32*2), Obj_Pawn_Black) || position_meeting(x-(32), y-(32*2), Obj_Bishop_Black)
	|| position_meeting(x-(32), y-(32*2), Obj_Knight_Black) || position_meeting(x-(32), y-(32*2), Obj_Rook_Black)
	|| position_meeting(x-(32), y-(32*2), Obj_Queen_Black)){
		instance_create_layer(x-(32), y-(32*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x-(32), y-(32*2), "Instances", Obj_Shadow);} // Up left

//down
if (!place_empty(x+(32), y+(32*2))){
	if(position_meeting(x+(32), y+(32*2), Obj_Pawn_Black) || position_meeting(x+(32), y+(32*2), Obj_Bishop_Black)
	|| position_meeting(x+(32), y+(32*2), Obj_Knight_Black) || position_meeting(x+(32), y+(32*2), Obj_Rook_Black)
	|| position_meeting(x+(32), y+(32*2), Obj_Queen_Black)){
		instance_create_layer(x+(32), y+(32*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(32), y+(32*2), "Instances", Obj_Shadow);} // Down right

if(!place_empty(x-(32), y+(32*2))){
	if(position_meeting(x-(32), y+(32*2), Obj_Pawn_Black) || position_meeting(x-(32), y+(32*2), Obj_Bishop_Black)
	|| position_meeting(x-(32), y+(32*2), Obj_Knight_Black) || position_meeting(x-(32), y+(32*2), Obj_Rook_Black)
	|| position_meeting(x-(32), y+(32*2), Obj_Queen_Black)){
		instance_create_layer(x-(32), y+(32*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x-(32), y+(32*2), "Instances", Obj_Shadow);} // Down left


//left
if (!place_empty(x-(32*2), y-(32))){
	if(position_meeting(x-(32*2), y-(32), Obj_Pawn_Black) || position_meeting(x-(32*2), y-(32), Obj_Bishop_Black)
	|| position_meeting(x-(32*2), y-(32), Obj_Knight_Black) || position_meeting(x-(32*2), y-(32), Obj_Rook_Black)
	|| position_meeting(x-(32*2), y-(32), Obj_Queen_Black)){
		instance_create_layer(x-(32*2), y-(32), "Instances", Obj_Shadow);
	}
	
}
else{instance_create_layer(x-(32*2), y-(32), "Instances", Obj_Shadow);} // Left up

if (!place_empty(x-(32*2), y+(32))){
	if(position_meeting(x-(32*2), y+(32), Obj_Pawn_Black) || position_meeting(x-(32*2), y+(32), Obj_Bishop_Black)
	|| position_meeting(x-(32*2), y+(32), Obj_Knight_Black) || position_meeting(x-(32*2), y+(32), Obj_Rook_Black)
	|| position_meeting(x-(32*2), y+(32), Obj_Queen_Black)){
		instance_create_layer(x-(32*2), y+(32), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x-(32*2), y+(32), "Instances", Obj_Shadow);} // Left down

//right
if (!place_empty(x+(32*2), y-(32))){
	if(position_meeting(x+(32*2), y-(32), Obj_Pawn_Black) || position_meeting(x+(32*2), y-(32), Obj_Bishop_Black)
	|| position_meeting(x+(32*2), y-(32), Obj_Knight_Black) || position_meeting(x+(32*2), y-(32), Obj_Rook_Black)
	|| position_meeting(x+(32*2), y-(32), Obj_Queen_Black)){
		instance_create_layer(x+(32*2), y-(32), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(32*2), y-(32), "Instances", Obj_Shadow);} // Right up

if(!place_empty(x+(32*2), y+(32))){
	if(position_meeting(x+(32*2), y+(32), Obj_Pawn_Black) || position_meeting(x+(32*2), y+(32), Obj_Bishop_Black)
	|| position_meeting(x+(32*2), y+(32), Obj_Knight_Black) || position_meeting(x+(32*2), y+(32), Obj_Rook_Black)
	|| position_meeting(x+(32*2), y+(32), Obj_Queen_Black)){
		instance_create_layer(x+(32*2), y+(32), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(32*2), y+(32), "Instances", Obj_Shadow);} // Right down
