// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum use_stat {
	stamina,
	ki
}

function newAttack(_name, _stat, _statAmt, _damage)  {
	return {
		name : _name,
		damage : _damage,
		stat : _stat,
		statAmt : _statAmt
	}
}

function GetPlayerAttacks(){
	var toReturn = [];
	var player = global.player;
	for(i = 0; i < array_length(player.attacks); i++){
		toReturn[i] = player.attacks[i].name;
	}
	
	return toReturn;
}

///@function
///@param {Attack} _attack Attack to use

function UseAttack(_attack){
	switch(_attack.stat)
	{
		case use_stat.stamina:
			if(global.player.stm_curr < _attack.statAmt)
			{
				return false;
			}
			global.player.stm_curr -= _attack.statAmt;
			break;
		case use_stat.ki:
			if(global.player.ki_curr < _attack.statAmt)
			{
				return false;
			}
			global.player.ki_curr -= _attack.statAmt;
			break;
	}
	
	return true;
}