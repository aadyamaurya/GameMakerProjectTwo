/// @description Insert description here
// You can write your code in this editor
if (health == 2 && first_move_correct == 1 && second_move_correct == 1){
	show_message_async("This is the correct solution!")
	health = 0;
}
else if(health == 2){
	if(first_move_correct == 0 || second_move_correct == 0){
		show_message_async("This is not the correct solution, Try again!")
		health = 0;
	}
}

if (place_empty(x + 180, y + 360) && first_move_correct == 0){
 first_move_correct = 1;
}

if (position_meeting(x, y + 180, Obj_Rook_White) && second_move_correct == 0){
 second_move_correct = 1;
}