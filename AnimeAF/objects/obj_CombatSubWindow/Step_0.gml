/// @description Insert description here
// You can write your code in this editor

entry_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
entry_index = entry_index + entry_move;
if(entry_index < 0) entry_index = entries_count - 1;
else if(entry_index >= entries_count) entry_index = 0;
