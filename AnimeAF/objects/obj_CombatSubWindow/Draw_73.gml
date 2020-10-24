/// @description Insert description here
// You can write your code in this editor
entries_count = array_length(entries);
for(i = 0; i < entries_count; i++)
{
	draw_set_color(c_dkgray);
	var menu_y = y + entry_y_offset + entry_height * i;
	var menu_x = (x - sprite_width) + 15;
	
	if(i == entry_index)
	{
		draw_set_color(c_red);	
	}
	
	draw_text(menu_x, menu_y, entries[i]);
}
