/// @description Insert description here
// You can write your code in this editor
var multiplier = 1;
if(instance_exists(Obj_Shadow)){instance_destroy(Obj_Shadow);}
while (multiplier < 9){
//up
instance_create_layer(x, y-(32*multiplier), "Instances", Obj_Shadow);
//down
instance_create_layer(x, y+(32*multiplier), "Instances", Obj_Shadow);
//left
instance_create_layer(x-(32*multiplier), y, "Instances", Obj_Shadow);
//right
instance_create_layer(x+(32*multiplier), y, "Instances", Obj_Shadow);
multiplier++;
}

