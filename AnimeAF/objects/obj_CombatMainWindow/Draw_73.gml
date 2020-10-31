/// @description CombatMainWindow DrawEnd
// You can write your code in this editor

for(i = 0; i < sub_count; i++)
{
	draw_set_color(c_dkgray);
	var menu_y = y + sub_y_offset + sub_height * i;
	
	if(i == sub_index)
	{
		draw_set_color(c_red);	
	}
	
	draw_text(x + 15, menu_y, sub_menus[i]);
}
