/// @description Insert description here
// You can write your code in this editor
// global.moveCounter == 2 && first_move_correct == 1 && second_move_correct == 1 &&
if (inMate = true){
	show_message_async("This is the correct solution!")
	room_goto(rm_Title_Screen)
}
else if(global.moveCounter == 2){
	if(first_move_correct == 0 || second_move_correct == 0){
		show_message_async("This is not the correct solution, hit 'R' to restart!")
	}
}

if (place_empty(x + 180, y + 360) && first_move_correct == 0){first_move_correct = 1;}

if (position_meeting(x, y + 180, Obj_Rook_White) && second_move_correct == 0){second_move_correct = 1;}

// Check for check
var kX = Obj_King_Black.x;
var kY = Obj_King_Black.y;
while(global.isChecked == true && global.bCanMove == true){
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
	
	// Down Left
	if(place_empty(kX - 180, kY + 180) && !position_meeting(kX - 180, kY + 180, Check_Checkers_Parent)){
		instance_destroy(Obj_King_Black)
		instance_create_layer(kX - 180, kY + 180, "Instances", Obj_King_Black);
		global.bCanMove = false;
		break;
	}
	else{inMate = true;
		break;}
}
