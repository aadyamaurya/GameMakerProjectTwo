/// @description Insert description here
// You can write your code in this editor

// dragging
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    isDragging = true;
}
if (isDragging) {
    x = mouse_x;
    y = mouse_y;
}

// Stop Dragging
if (isDragging && mouse_check_button_released(mb_left)) {
    var shadowTarget = instance_position(mouse_x, mouse_y, Obj_Shadow);
    
    if (shadowTarget != noone) {
		isFirstMove = false;
        x = shadowTarget.x;
        y = shadowTarget.y;
		original_x = x;
		original_y = y;
		instance_destroy(Obj_Shadow);
    }
	else{
	x = original_x;
	y = original_y;
	}
    
    isDragging = false;
}

// Update position if dragging
