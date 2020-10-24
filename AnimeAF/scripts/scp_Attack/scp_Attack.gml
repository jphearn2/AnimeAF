// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function newAttack(_name, _damage)  {
	return {
		name : _name,
		damage : _damage
	}
}

function GetPlayerAttacks(){
	var toReturn = [];
	var player = instance_find(obj_PlayerBase, 0);
	for(i = 0; i < array_length(player.attacks); i++){
		toReturn[i] = player.attacks[i].name;
	}
	
	return toReturn;
}