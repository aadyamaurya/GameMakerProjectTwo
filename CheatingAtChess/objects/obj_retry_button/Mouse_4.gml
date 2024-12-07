/// @description Insert description here
// You can write your code in this editor
room_goto(Tutorial_Room);
if (global.previous_room != -1) { 
    room_goto(global.previous_room);
}