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
			audio_play_sound(snd_delete, 1, false);
        }
		
		var blackBishop = instance_place(x, y, Obj_Bishop_Black); 
        if (blackBishop != noone) {
            instance_destroy(blackBishop);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var blackKnight = instance_place(x, y, Obj_Knight_Black); 
        if (blackKnight != noone) {
            instance_destroy(blackKnight);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var blackRook = instance_place(x, y, Obj_Rook_Black); 
        if (blackRook != noone) {
            instance_destroy(blackRook);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var blackQueen = instance_place(x, y, Obj_Queen_Black); 
        if (blackQueen != noone) {
            instance_destroy(blackQueen);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var whitePawn = instance_place(x, y, Obj_Pawn_White); 
        if (whitePawn != noone) {
            instance_destroy(whitePawn);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var whiteBishop = instance_place(x, y, Obj_Bishop_White); 
        if (whiteBishop != noone) {
            instance_destroy(whiteBishop);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var whiteKnight = instance_place(x, y, Obj_Knight_White); 
        if (whiteKnight != noone) {
            instance_destroy(whiteKnight);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var whiteRook = instance_place(x, y, Obj_Rook_White); 
        if (whiteRook != noone) {
            instance_destroy(whiteRook);
			audio_play_sound(snd_delete, 1, false);
        }
		
		var whiteQueen = instance_place(x, y, Obj_Queen_White); 
        if (whiteQueen != noone) {
            instance_destroy(whiteQueen);
			audio_play_sound(snd_delete, 1, false);
        }
		
		instance_destroy(Obj_Shadow);
		instance_destroy();
		global.moveCounter++;
    }
	else{
	x = original_x;
	y = original_y;
	}
    
    isDragging = false;
}
