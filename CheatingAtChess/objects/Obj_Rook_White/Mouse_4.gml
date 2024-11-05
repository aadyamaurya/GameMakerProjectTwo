/// @description Insert description here
// You can write your code in this editor
var multiplier = 1;

if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}

//up
while (multiplier < 9){
if (!place_empty(x, y-(32*multiplier))){
break;
}
instance_create_layer(x, y-(32*multiplier), "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;

//down
while (multiplier < 9){
if (!place_empty(x, y+(32*multiplier))){
break;
}
instance_create_layer(x, y+(32*multiplier), "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;

//left
while (multiplier < 9){
if (!place_empty(x-(32*multiplier), y)){
break;
}
instance_create_layer(x-(32*multiplier), y, "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;

//right
while (multiplier < 9){
if (!place_empty(x+(32*multiplier), y)){
break;
}
instance_create_layer(x+(32*multiplier), y, "Instances", Obj_Shadow);
multiplier++;
}
multiplier = 1;
