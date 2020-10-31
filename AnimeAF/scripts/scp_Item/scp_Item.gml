// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function newItem(_name, _stat, _statAmt, _qnt) {
	return {
		name : _name,
		healStat : _stat,
		statAmt : _statAmt,
		qnt : _qnt
	}
}

function GetPlayerItems(){
	var toReturn = [];
	var player = global.player;
	for(i = 0; i < array_length(player.items); i++){
		toReturn[i] = string(player.items[i].name) + "\t" + string(player.items[i].qnt);
	}
	
	return toReturn;
}


function UseItem(_item){
	switch(_item.healStat){
		case stat.hp :
			global.player.hp_curr += _item.statAmt;
			if(global.player.hp_curr > global.player.hp_max) global.player.hp_curr = global.player.hp_max;
			break;
		case stat.stamina :
			global.player.stm_curr += _item.statAmt;
			if(global.player.stm_curr > global.player.stm_max) global.player.stm_curr = global.player.stm_max;
			break;
		case stat.ki :
			global.player.ki_curr += _item.statAmt;
			if(global.player.ki_curr > global.player.ki_max) global.player.ki_curr = global.player.ki_max;
			break;
	}
	
	_item.qnt -= 1;
	
}