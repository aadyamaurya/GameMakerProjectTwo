var multiplier = 1;

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

