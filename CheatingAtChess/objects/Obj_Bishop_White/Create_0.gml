/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
	// Check for Check
	var multiplier = 1;

	if(instance_exists(Check_Checkers_Bishop)){instance_destroy(Check_Checkers_Bishop);}

	// Up left
	while (multiplier < 9){
	if (!place_empty(x-(180*multiplier), y-(180*multiplier))){
	if(position_meeting(x-(180*multiplier), y-(180*multiplier), Obj_King_Black)){
		
			instance_create_layer(x-(180*multiplier), y-(180*multiplier), "Instances", Check_Checkers_Bishop);
			break;
		}
		else{
			break;
		}
	}
	instance_create_layer(x-(180*multiplier), y-(180*multiplier), "Instances", Check_Checkers_Bishop);
	multiplier++;
	}
	multiplier = 1;

	// Down Right
	while (multiplier < 9){
	if (!place_empty(x+(180*multiplier), y+(180*multiplier))){
	if(position_meeting(x+(180*multiplier), y+(180*multiplier), Obj_King_Black)){
		
			instance_create_layer(x+(180*multiplier), y+(180*multiplier), "Instances", Check_Checkers_Bishop);
			break;
		}
		else{
			break;
		}
	}
	instance_create_layer(x+(180*multiplier), y+(180*multiplier), "Instances", Check_Checkers_Bishop);
	multiplier++;
	}
	multiplier = 1;

	// Down Left
	while (multiplier < 9){
	if (!place_empty(x-(180*multiplier), y+(180*multiplier))){
	if(position_meeting(x-(180*multiplier), y+(180*multiplier), Obj_King_Black)){
		
			instance_create_layer(x-(180*multiplier), y+(180*multiplier), "Instances", Check_Checkers_Bishop);
			break;
		}
		else{
			break;
		}
	}
	instance_create_layer(x-(180*multiplier), y+(180*multiplier), "Instances", Check_Checkers_Bishop);
	multiplier++;
	}
	multiplier = 1;

	// Up right
	while (multiplier < 9){
	if (!place_empty(x+(180*multiplier), y-(180*multiplier))){
	if(position_meeting(x+(180*multiplier), y-(180*multiplier), Obj_King_Black)){
		
			instance_create_layer(x+(180*multiplier), y-(180*multiplier), "Instances", Check_Checkers_Bishop);
			break;
		}
		else{
			break;
		}
	}
	instance_create_layer(x+(180*multiplier), y-(180*multiplier), "Instances", Check_Checkers_Bishop);
	multiplier++;
	}
	multiplier = 1;

