/// @description Insert description here
// You can write your code in this editor

sub_menus[0] = "Attack";
sub_menus[1] = "Item";
sub_menus[2] = "Defend";
sub_count = array_length(sub_menus);

sub_height = sprite_height / sub_count;
sub_y_offset = 15;

sub_index = 0;

active = true;

sub_obj = noone;

