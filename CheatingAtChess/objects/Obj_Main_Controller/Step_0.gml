if (inMate = true){
	global.previous_room = room;
	room_goto(rm_Level_Completed);
	global.level1Score = 1;
}
else if(global.moveCounter == 2 && first_move_correct = 0){
		room_goto(rm_Level_Failed);
		global.moveCounter = 0;
}

if (place_empty(x - 180, y + 540) && first_move_correct == 0){first_move_correct = 1;}
// Check for check
var kX = Obj_King_Black.x;
var kY = Obj_King_Black.y;
while(global.isChecked == true && global.bCanMove == true){
	if(!place_empty(x+180, y+540)){
		instance_destroy(Obj_Rook_Black)
		instance_destroy(Obj_Knight_White)
		instance_create_layer(x+180, y+540, "Instances", Obj_Rook_Black);
		global.bCanMove = false;
	}
	// Down
	if(place_empty(kX, kY + 180) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX, kY + 180, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	
	// Up
	if(place_empty(kX, kY - 180) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX, kY - 180, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	
	// left
	if(place_empty(kX - 180, kY) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX - 180, kY, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	
	// Right
	if(place_empty(kX + 180, kY) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX + 180, kY, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	
	// Up Right
	if(place_empty(kX + 180, kY - 180) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX + 180, kY - 180, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	
	// Down Right
	if(place_empty(kX + 180, kY + 180) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX + 180, kY + 180, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	
	// Up Left
	if(place_empty(kX - 180, kY - 180) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX - 180, kY - 180, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	
	// Down Left (removed due to time)

	else{inMate = true;
		break;}
}
