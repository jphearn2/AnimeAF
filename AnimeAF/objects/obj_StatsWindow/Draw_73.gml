/// @description StatWindow DrawEnd
// You can write your code in this editor

// draw stat names
draw_set_color(c_black);

var offset_x = x + stat_x_offset;
var offset_y = y + stat_y_offset;
draw_text(offset_x, offset_y, "HP:");
offset_y += stat_y_spacing;
draw_text(offset_x, offset_y, "ST:");
offset_y += stat_y_spacing;
draw_text(offset_x, offset_y, "KI:");

// draw stat bar outlines

var bar_offset_y = y + bar_y_offset;
var bar_outline_x1 = x + sprite_width - bar_right_offset - bar_outline_length;
var bar_outline_x2 = bar_outline_x1 + bar_outline_length;

draw_rectangle(bar_outline_x1, bar_offset_y, bar_outline_x2, bar_offset_y + bar_outline_height, true);

bar_offset_y += stat_y_spacing;
draw_rectangle(bar_outline_x1, bar_offset_y, bar_outline_x2, bar_offset_y + bar_outline_height, true);

bar_offset_y += stat_y_spacing;
draw_rectangle(bar_outline_x1, bar_offset_y, bar_outline_x2, bar_offset_y + bar_outline_height, true);

// draw bars

var bar_offset_y = y + bar_y_offset + bar_outline_thickness;
var bar_x1 = bar_outline_x1 + bar_outline_thickness;
var bar_x2 = bar_x1 + bar_length;
var hp_bar = (global.player.hp_curr / global.player.hp_max) * bar_length;
var stm_bar = (global.player.stm_curr / global.player.stm_max) * bar_length;
var ki_bar = (global.player.ki_curr / global.player.ki_max) * bar_length;

draw_set_color(c_red);
bar_x2 = bar_x1 + hp_bar;
draw_rectangle(bar_x1, bar_offset_y, bar_x2, bar_offset_y + bar_height, false);

bar_offset_y += stat_y_spacing;
draw_set_color(c_yellow);
bar_x2 = bar_x1 + stm_bar;
draw_rectangle(bar_x1, bar_offset_y, bar_x2, bar_offset_y + bar_height, false);

bar_offset_y += stat_y_spacing;
draw_set_color(c_teal);
bar_x2 = bar_x1 + ki_bar;
draw_rectangle(bar_x1, bar_offset_y, bar_x2, bar_offset_y + bar_height, false);