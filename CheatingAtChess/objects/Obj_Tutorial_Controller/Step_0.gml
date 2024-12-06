/// @description Insert description here
// You can write your code in this editor
if (global.moveCounter == 2 && first_move_correct == 1 && second_move_correct == 1){
	show_message_async("This is the correct solution!")
	global.moveCounter = 0;
}
else if(global.moveCounter == 2){
	if(first_move_correct == 0 || second_move_correct == 0){
		show_message_async("This is not the correct solution, hit 'R' to restart!")
		global.moveCounter = 0;
	}
}

if(global.moveCounter == 1){canMove = true;}
if(global.moveCounter == 2){canMove = true;}

if (place_empty(x + 180, y + 360) && first_move_correct == 0){first_move_correct = 1;}

if (position_meeting(x, y + 180, Obj_Rook_White) && second_move_correct == 0){second_move_correct = 1;}

// Check for check
