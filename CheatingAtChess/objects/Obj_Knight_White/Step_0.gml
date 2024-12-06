/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

// dragging
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    isDragging = true;
}
if (isDragging) {
	image_alpha = 0.9;
    x = mouse_x;
    y = mouse_y;
}

// Stop Dragging
if (isDragging && mouse_check_button_released(mb_left)) {
    audio_play_sound(snd_move_piece, 1, false);
	var shadowTarget = instance_position(mouse_x, mouse_y, Obj_Shadow);
    image_alpha = 1;
    if (shadowTarget != noone) {
		isFirstMove = false;
        x = shadowTarget.x;
        y = shadowTarget.y;
		original_x = x;
		original_y = y;
		
		var blackPawn = instance_place(x, y, Obj_Pawn_Black); 
        if (blackPawn != noone) {
            instance_destroy(blackPawn);
        }
		
		var blackBishop = instance_place(x, y, Obj_Bishop_Black); 
        if (blackBishop != noone) {
            instance_destroy(blackBishop);
        }
		
		var blackKnight = instance_place(x, y, Obj_Knight_Black); 
        if (blackKnight != noone) {
            instance_destroy(blackKnight);
        }
		
		var blackRook = instance_place(x, y, Obj_Rook_Black); 
        if (blackRook != noone) {
            instance_destroy(blackRook);
        }
		
		var blackQueen = instance_place(x, y, Obj_Queen_Black); 
        if (blackQueen != noone) {
            instance_destroy(blackQueen);
        }
		
		instance_destroy(Obj_Shadow);
		global.moveCounter++;
		global.bCanMove = true;
    }
	else{
	x = original_x;
	y = original_y;
	}
    
    isDragging = false;
	
	// Check for check
	var multiplier = 1;
	
	if(instance_exists(CC_Knight)){instance_destroy(CC_Knight);}

	//up
	if (!place_empty(x+(180), y-(180*2))){
		if(position_meeting(x+(180), y-(180*2), Obj_King_Black)){
			instance_create_layer(x+(180), y-(180*2), "Instances", CC_Knight);
		}
	}
	else{instance_create_layer(x+(180), y-(180*2), "Instances", CC_Knight);} // Up right


	if(!place_empty(x-(180), y-(180*2))){
		if(position_meeting(x-(180), y-(180*2), Obj_King_Black)){
			instance_create_layer(x-(180), y-(180*2), "Instances", CC_Knight);
		}
	}
	else{instance_create_layer(x-(180), y-(180*2), "Instances", CC_Knight);} // Up left

	//down
	if (!place_empty(x+(180), y+(180*2))){
		if(position_meeting(x+(180), y+(180*2), Obj_King_Black)){
			instance_create_layer(x+(180), y+(180*2), "Instances", CC_Knight);
		}
	}
	else{instance_create_layer(x+(180), y+(180*2), "Instances", CC_Knight);} // Down right

	if(!place_empty(x-(180), y+(180*2))){
		if(position_meeting(x-(180), y+(180*2), Obj_King_Black)){
			instance_create_layer(x-(180), y+(180*2), "Instances", CC_Knight);
		}
	}
	else{instance_create_layer(x-(180), y+(180*2), "Instances", CC_Knight);} // Down left


	//left
	if (!place_empty(x-(180*2), y-(180))){
		if(position_meeting(x-(180*2), y-(180), Obj_King_Black)){
			instance_create_layer(x-(180*2), y-(180), "Instances", CC_Knight);
		}
	
	}
	else{instance_create_layer(x-(180*2), y-(180), "Instances", CC_Knight);} // Left up

	if (!place_empty(x-(180*2), y+(180))){
		if(position_meeting(x-(180*2), y+(180), Obj_King_Black)){
			instance_create_layer(x-(180*2), y+(180), "Instances", CC_Knight);
		}
	}
	else{instance_create_layer(x-(180*2), y+(180), "Instances", CC_Knight);} // Left down

	//right
	if (!place_empty(x+(180*2), y-(180))){
		if(position_meeting(x+(180*2), y-(180), Obj_King_Black)){
			instance_create_layer(x+(180*2), y-(180), "Instances", CC_Knight);
		}
	}
	else{instance_create_layer(x+(180*2), y-(180), "Instances", CC_Knight);} // Right up

	if(!place_empty(x+(180*2), y+(180))){
		if(position_meeting(x+(180*2), y+(180), Obj_King_Black)){
			instance_create_layer(x+(180*2), y+(180), "Instances", CC_Knight);
		}
	}
	else{instance_create_layer(x+(180*2), y+(180), "Instances", CC_Knight);} // Right down
}
