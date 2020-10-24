/// @description Insert description here
// You can write your code in this editor

if(active){
	sub_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	sub_index = (sub_index + sub_move) % sub_count;
	if(sub_index < 0) sub_index = sub_count - 1;
	
	if(keyboard_check_pressed(vk_enter))
	{
		sub_obj = instance_create_layer(x, y, "Instances", obj_CombatSubWindow);
		sub_obj.entries = GetPlayerAttacks();
		active = false;
		
	}
}
else {
	if(keyboard_check_pressed(vk_backspace))
	{
		if(sub_obj != noone)
		{
			instance_destroy(sub_obj);
		}
		active = true;
	}
	
}