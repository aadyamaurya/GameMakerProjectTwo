/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
// global.moveCounter == 2 && first_move_correct == 1 && second_move_correct == 1 &&
if (inMate = true){
	show_message_async("This is the correct solution!")
	room_goto(rm_Title_Screen)
	}
if(global.moveCounter > 3){
		show_message_async("Too many moves, try again!")
		room_goto(rm_Title_Screen)
	}

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
