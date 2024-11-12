/// @description Insert description here
// You can write your code in this editor
var multiplier = 1;

if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}

// Up left
while (multiplier < 9){
if (!place_empty(x-(32*multiplier), y-(32*multiplier))){
if(position_meeting(x-(32*multiplier), y-(32*multiplier), Obj_Pawn_Black) || position_meeting(x-(32*multiplier), y-(32*multiplier), Obj_Bishop_Black)
	|| position_meeting(x-(32*multiplier), y-(32*multiplier), Obj_Knight_Black) || position_meeting(x-(32*multiplier), y-(32*multiplier), Obj_Rook_Black)
	|| position_meeting(x-(32*multiplier), y-(32*multiplier), Obj_Queen_Black)){
		
		instance_create_layer(x-(32*multiplier), y-(32*multiplier), "Instances", Obj_Shadow);
		break;
	}
	else{
		break;
	}
}
instance_create_layer(x-(32*multiplier), y-(32*multiplier), "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;

// Down Right
while (multiplier < 9){
if (!place_empty(x+(32*multiplier), y+(32*multiplier))){
if(position_meeting(x+(32*multiplier), y+(32*multiplier), Obj_Pawn_Black) || position_meeting(x+(32*multiplier), y+(32*multiplier), Obj_Bishop_Black)
	|| position_meeting(x+(32*multiplier), y+(32*multiplier), Obj_Knight_Black) || position_meeting(x+(32*multiplier), y+(32*multiplier), Obj_Rook_Black)
	|| position_meeting(x+(32*multiplier), y+(32*multiplier), Obj_Queen_Black)){
		
		instance_create_layer(x+(32*multiplier), y+(32*multiplier), "Instances", Obj_Shadow);
		break;
	}
	else{
		break;
	}
}
instance_create_layer(x+(32*multiplier), y+(32*multiplier), "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;

// Down Left
while (multiplier < 9){
if (!place_empty(x-(32*multiplier), y+(32*multiplier))){
if(position_meeting(x-(32*multiplier), y+(32*multiplier), Obj_Pawn_Black) || position_meeting(x-(32*multiplier), y+(32*multiplier), Obj_Bishop_Black)
	|| position_meeting(x-(32*multiplier), y+(32*multiplier), Obj_Knight_Black) || position_meeting(x-(32*multiplier), y+(32*multiplier), Obj_Rook_Black)
	|| position_meeting(x-(32*multiplier), y+(32*multiplier), Obj_Queen_Black)){
		
		instance_create_layer(x-(32*multiplier), y+(32*multiplier), "Instances", Obj_Shadow);
		break;
	}
	else{
		break;
	}
}
instance_create_layer(x-(32*multiplier), y+(32*multiplier), "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;

// Up right
while (multiplier < 9){
if (!place_empty(x+(32*multiplier), y-(32*multiplier))){
if(position_meeting(x+(32*multiplier), y-(32*multiplier), Obj_Pawn_Black) || position_meeting(x+(32*multiplier), y-(32*multiplier), Obj_Bishop_Black)
	|| position_meeting(x+(32*multiplier), y-(32*multiplier), Obj_Knight_Black) || position_meeting(x+(32*multiplier), y-(32*multiplier), Obj_Rook_Black)
	|| position_meeting(x+(32*multiplier), y-(32*multiplier), Obj_Queen_Black)){
		
		instance_create_layer(x+(32*multiplier), y-(32*multiplier), "Instances", Obj_Shadow);
		break;
	}
	else{
		break;
	}
}
instance_create_layer(x+(32*multiplier), y-(32*multiplier), "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;
