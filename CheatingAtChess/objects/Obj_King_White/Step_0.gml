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
	
	var multiplier = 1;
	
	// Check for check
	if(instance_exists(CC_King)){instance_destroy(CC_King);}

	//up
	while (multiplier == 1){
		if (!place_empty(x, y-(180*multiplier))){
			instance_create_layer(x, y-(180*multiplier), "Instances", CC_King);
			break;
		}
	}

	//down
	while (multiplier == 1){
		if (!place_empty(x, y+(180*multiplier))){
			instance_create_layer(x, y+(180*multiplier), "Instances", CC_King);
			break;
		}
	}

	//left
	while (multiplier == 1){
	if (!place_empty(x-(180*multiplier), y)){
			instance_create_layer(x-(180*multiplier), y, "Instances", CC_King);
			break;
		}
	}

	//right
	while (multiplier == 1){
	if (!place_empty(x+(180*multiplier), y)){
			instance_create_layer(x+(180*multiplier), y, "Instances", CC_King);
			break;
		}
	}


	// Up left
	while (multiplier == 1){
	if (!place_empty(x-(180*multiplier), y-(180*multiplier))){
			instance_create_layer(x-(180*multiplier), y-(180*multiplier), "Instances", CC_King);
			break;
		}
	}

	// Down Right
	while (multiplier == 1){
	if (!place_empty(x+(180*multiplier), y+(180*multiplier))){	
			instance_create_layer(x+(180*multiplier), y+(180*multiplier), "Instances", CC_King);
			break;
		}
	}

	// Down Left
	while (multiplier == 1){
	if (!place_empty(x-(180*multiplier), y+(180*multiplier))){
			instance_create_layer(x-(180*multiplier), y+(180*multiplier), "Instances", CC_King);
			break;
		}
	}

	// Up right
	while (multiplier == 1){
	if (!place_empty(x+(180*multiplier), y-(180*multiplier))){
			instance_create_layer(x+(180*multiplier), y-(180*multiplier), "Instances", CC_King);
			break;
		}
}
}


