/// @description Insert description here
// You can write your code in this editor
var multiplier = 1;

if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}

//up
if (!place_empty(x+(180), y-(180*2))){
	if(position_meeting(x+(180), y-(180*2), Obj_Pawn_Black) || position_meeting(x+(180), y-(180*2), Obj_Bishop_Black)
	|| position_meeting(x+(180), y-(180*2), Obj_Knight_Black) || position_meeting(x+(180), y-(180*2), Obj_Rook_Black)
	|| position_meeting(x+(180), y-(180*2), Obj_Queen_Black)){
		instance_create_layer(x+(180), y-(180*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(180), y-(180*2), "Instances", Obj_Shadow);} // Up right


if(!place_empty(x-(180), y-(180*2))){
	if(position_meeting(x-(180), y-(180*2), Obj_Pawn_Black) || position_meeting(x-(180), y-(180*2), Obj_Bishop_Black)
	|| position_meeting(x-(180), y-(180*2), Obj_Knight_Black) || position_meeting(x-(180), y-(180*2), Obj_Rook_Black)
	|| position_meeting(x-(180), y-(180*2), Obj_Queen_Black)){
		instance_create_layer(x-(180), y-(180*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x-(180), y-(180*2), "Instances", Obj_Shadow);} // Up left

//down
if (!place_empty(x+(180), y+(180*2))){
	if(position_meeting(x+(180), y+(180*2), Obj_Pawn_Black) || position_meeting(x+(180), y+(180*2), Obj_Bishop_Black)
	|| position_meeting(x+(180), y+(180*2), Obj_Knight_Black) || position_meeting(x+(180), y+(180*2), Obj_Rook_Black)
	|| position_meeting(x+(180), y+(180*2), Obj_Queen_Black)){
		instance_create_layer(x+(180), y+(180*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(180), y+(180*2), "Instances", Obj_Shadow);} // Down right

if(!place_empty(x-(180), y+(180*2))){
	if(position_meeting(x-(180), y+(180*2), Obj_Pawn_Black) || position_meeting(x-(180), y+(180*2), Obj_Bishop_Black)
	|| position_meeting(x-(180), y+(180*2), Obj_Knight_Black) || position_meeting(x-(180), y+(180*2), Obj_Rook_Black)
	|| position_meeting(x-(180), y+(180*2), Obj_Queen_Black)){
		instance_create_layer(x-(180), y+(180*2), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x-(180), y+(180*2), "Instances", Obj_Shadow);} // Down left


//left
if (!place_empty(x-(180*2), y-(180))){
	if(position_meeting(x-(180*2), y-(180), Obj_Pawn_Black) || position_meeting(x-(180*2), y-(180), Obj_Bishop_Black)
	|| position_meeting(x-(180*2), y-(180), Obj_Knight_Black) || position_meeting(x-(180*2), y-(180), Obj_Rook_Black)
	|| position_meeting(x-(180*2), y-(180), Obj_Queen_Black)){
		instance_create_layer(x-(180*2), y-(180), "Instances", Obj_Shadow);
	}
	
}
else{instance_create_layer(x-(180*2), y-(180), "Instances", Obj_Shadow);} // Left up

if (!place_empty(x-(180*2), y+(180))){
	if(position_meeting(x-(180*2), y+(180), Obj_Pawn_Black) || position_meeting(x-(180*2), y+(180), Obj_Bishop_Black)
	|| position_meeting(x-(180*2), y+(180), Obj_Knight_Black) || position_meeting(x-(180*2), y+(180), Obj_Rook_Black)
	|| position_meeting(x-(180*2), y+(180), Obj_Queen_Black)){
		instance_create_layer(x-(180*2), y+(180), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x-(180*2), y+(180), "Instances", Obj_Shadow);} // Left down

//right
if (!place_empty(x+(180*2), y-(180))){
	if(position_meeting(x+(180*2), y-(180), Obj_Pawn_Black) || position_meeting(x+(180*2), y-(180), Obj_Bishop_Black)
	|| position_meeting(x+(180*2), y-(180), Obj_Knight_Black) || position_meeting(x+(180*2), y-(180), Obj_Rook_Black)
	|| position_meeting(x+(180*2), y-(180), Obj_Queen_Black)){
		instance_create_layer(x+(180*2), y-(180), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(180*2), y-(180), "Instances", Obj_Shadow);} // Right up

if(!place_empty(x+(180*2), y+(180))){
	if(position_meeting(x+(180*2), y+(180), Obj_Pawn_Black) || position_meeting(x+(180*2), y+(180), Obj_Bishop_Black)
	|| position_meeting(x+(180*2), y+(180), Obj_Knight_Black) || position_meeting(x+(180*2), y+(180), Obj_Rook_Black)
	|| position_meeting(x+(180*2), y+(180), Obj_Queen_Black)){
		instance_create_layer(x+(180*2), y+(180), "Instances", Obj_Shadow);
	}
}
else{instance_create_layer(x+(180*2), y+(180), "Instances", Obj_Shadow);} // Right down
