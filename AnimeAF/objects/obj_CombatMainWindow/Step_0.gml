/// @description Insert description here
// You can write your code in this editor

if(active){
	sub_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	sub_index = (sub_index + sub_move) % sub_count;
	if(sub_index < 0) sub_index = sub_count - 1;
	
	if(keyboard_check_pressed(vk_enter))
	{
		sub_obj = instance_create_layer(x, y, "Instances", obj_CombatSubWindow);
		// change how state is stored here
		switch(sub_index){
			case 0 :
				sub_obj.entries = GetPlayerAttacks();
				active = false;
				break;
			case 1 :
				sub_obj.entries = GetPlayerItems();
				active = false;
				break;
		}
		
		
	}
}
else {
	if(keyboard_check_pressed(vk_backspace))
	{
		if(sub_obj != noone)
		{
			instance_destroy(sub_obj);
			active = true;
		}
	}
	
	else if(keyboard_check_pressed(vk_enter))
	{
		if(sub_obj != noone)
		{
			switch(sub_index){
				case 0 :
					var attack_index = sub_obj.entry_index;
					if(UseAttack(global.player.attacks[attack_index]))
					{
						instance_destroy(sub_obj);
						active = true;
					}
					break;
				case 1 :
					var item_index = sub_obj.entry_index;
					UseItem(global.player.items[item_index]);
					
					instance_destroy(sub_obj);
					active = true;
					break;
			}
		}
	}
	
}