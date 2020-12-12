/// @description Insert description here
// You can write your code in this editor

var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

if (move_x != 0) {
	x += move_x * wlk_spd;
	if (move_x > 0) {
		sprite_index = spr_PlayerRightWalk;
	}
	else {
		sprite_index = spr_PlayerLeftWalk;
	}
}
else if (move_y != 0) {
	y += move_y * wlk_spd;
	if (move_y > 0) {
		sprite_index = spr_PlayerDownWalk;
	}
	else {
		sprite_index = spr_PlayerUpWalk;
	}
}